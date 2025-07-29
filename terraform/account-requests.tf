module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "psanthg+afttest01accountnew@amazon.com"
    AccountName               = "afttest01accountnew"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "psanthg+afttest01accountnew@amazon.com"
    SSOUserFirstName          = "prasanth"
    SSOUserLastName           = "gutha"
  }

  account_tags = {
    "ABC:Owner"       = "prasanthg"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "false"
    "ABC:DivCode"     = "103"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "PRODUCTION"
}
