variable "objectstorage_namespace_metadata" {
  description = <<EOT
Map of objectstorage_namespace_metadata, attributes below
Required:
    - namespace
Optional:
    - default_s3compartment_id
    - default_swift_compartment_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    namespace                    = string
    default_s3compartment_id     = optional(string)
    default_swift_compartment_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

