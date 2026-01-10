locals {
    # Do the set operations
}

variable "feature_flags" {
    type = list(string)
}

variable "enabled" {
    type = list(string)
}

output "features" {
    value = {
        "name": 0
    }
}


## Usage

module "feature_flags" {
    source = "../"

    feature_flags = module.feature_flags.flags
    enabled = ["my", "set"]
}

resource "example" "exaple" {
    count = module.feature_flags.feature["set"]
}

The idea is that we create a Terraform module which can be used to determine whether a flag is enabled or not