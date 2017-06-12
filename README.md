# idp-template-terraform

This repository includes a template of terraform environment configurations for running an instance of
the IdP-in-a-box service. 

Each folder in this repository is numbered in the order they should be applied based on dependencies.
 
This repository should be forked and the forked repo tied to Terraform Enterprise to manage updates to instances
individually rather than from a shared repository. 

## Setup process

The following instructions use the IdP name `acme` as an example. Substitute with your own.

1. Fork this repo into a new repo named something like `idp-acme-terraform`
2. For each folder in the new repository, configure Terraform Enterprise environments for it.

    1. Create Terraform Enterprise environment and configure it to look at the appropriate branch
       `develop` for staging and `master` for production.
    2. Configure it to only look in the directory for that environment, ex: `/000-core`
    3. Open the `vars.tf` file in an editor for reference and for each variable create an entry in 
       Terraform Enterprise with the appropriate value.
       
3. Run plan and apply for `000-core`

    1. View output and copy `cduser_access_key_id` and `cduser_access_key_secret` for later use.
    
4. Run plan and apply for `010-cluster`

    1. View output and copy `nat_gateway_ip`. Give the IP address to whomever can update internal 
       firewall rules to allow HTTPS traffic on port 443 from that IP Address to the network where
       the personnel system is running for ID Sync to pull identities from. 
       
5. Run plan and apply for `020-database`

    1. View output and copy `db_idbroker_pass`, `db_pwmanager_pass`, `db_ssp_pass`, `mysql_pass`, 
       and `mysql_user` for later use.
       
6. Run plan and apply for `021-elasticache`
7. Run plan and apply for `022-ecr`

    1. View output and copy `ecr_repo_idbroker`, `ecr_repo_idsync`, `ecr_repo_pwapi`, and
       `ecr_repo_simplesamlphp` for later use.
       
8. Run plan and apply for `030-phpmyadmin`

    1. View output and copy `phpmyadmin_url`
    2. Go to https://`phpmyadmin_url` and log in using the `mysql_user` and `mysql_pass` you 
       copied earlier.
    3. Create a new user named `idbroker` with password `db_idbroker_pass` copied earlier. Check 
       box to `Create database with same name and grant all privileges.` 
    4. Repeat for `pwmanager` and `ssp`
    
9. Optionally you can destroy the 030-phpmyadmin environment to ensure it is not running. You can 
   also do this later after all other services are online and you've verified they were able to 
   create the tables in their databases as needed.
   
10. Run plan and apply for `040-id-broker`
11. Run plan and apply for `050-pw-manager`

    1. View output and copy `ui_hostname` for later use.
    
12. Run plan and apply for `060-simplesamlphp`
13. Run plan and apply for `070-id-sync`

    1. View output and copy `access_token_external` and `idsync_url`. Share these values with
       whomever manages your personnel system if it can make webhook calls to ID Sync when users
       should be updated.
       
14. Create Git repos for each service for CI/CD of the Docker image for the service. Repos should follow
    naming conventions:
    
    `idp-acme-ssp`, `idp-acme-pw-ui`, `idp-acme-pw-api`, `idp-acme-id-sync`, `idp-acme-id-broker`
    
    Instructions for what to put in these repos is beyond this document. Check with the dev team for help.
    
15. Set up Codeship projects for each of these repositories. They should all use Codeship Pro with the 
    exception of `idp-acme-pw-ui` which uses Codeship Basic.
    
    1. For `idp-acme-pw-ui` configure it to build/test app and push to S3 and then invalidate cache on 
       CloudFront and Cloudflare
    2. For each of the Codeship Pro projects, use the `cduser_access_key_id` and `cduser_access_key_secret`
       from earlier to create an `aws.env.encrypted` file. Check with dev team for help. 
    3. For each of the Codeship Pro projects, create `codeship-service.yml` and `codeship-steps.yml` files to
       build and push Docker images to the repositories created in the `022-ecr` step above. 
       
16. Push updates to each Codeship project to trigger build and deployment 
17. After they have built and deployed, check phpmyadmin databases to see that tables were created.

