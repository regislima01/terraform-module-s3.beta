bucket_name                             = "hourly-reports-1234567812"
acl                                     = "private"
region                                  = "us-east-1"
tags                                    = { reports = "hourly" }
force_destroy                           = true
request_payer                           = "BucketOwner"
acceleration_status                     = "Suspended"
versioning                              = true
policy_file                             = "policies/hourly.json"
kms_master_key_id                       = "aws:kms"
sse_algorithm                           = "AES256"

block_public_acls                       = true
block_public_policy                     = true
restrict_public_buckets                 = true
ignore_public_acls                      = true
lifecycle_rule_enabled                  = true
enable_glacier_transition               = true
enable_standard_ia_transition           = true
enable_current_object_expiration        = true
standard_transition_days                = 30
glacier_transition_days                 = 60
expiration_days                         = 180