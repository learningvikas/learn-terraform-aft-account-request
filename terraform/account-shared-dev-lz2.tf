module "Shared_Dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "techtechy13111993+account-lz2-shared-dev@gmail.com"
    AccountName               = "account-lz2-shared-dev"
    ManagedOrganizationalUnit = "Infra-OU"
    SSOUserEmail              = "techtechy13111993+account-lz2-shared-dev@gmail.com"
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

  account_customizations_name = "Shared_Dev"
}