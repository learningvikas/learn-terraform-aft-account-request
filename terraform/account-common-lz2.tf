module "Common_Serv_Low_Env" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "awzgcpazureoci+account-lz2-common@gmail.com"
    AccountName               = "account-lz2-common"
    ManagedOrganizationalUnit = "SharedServices-OU"
    SSOUserEmail              = "awzgcpazureoci+account-lz2-common@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Common_Serv_Low_Env"
}