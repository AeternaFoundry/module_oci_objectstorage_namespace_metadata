resource "oci_objectstorage_namespace_metadata" "objectstorage_namespace_metadata" {
  for_each = var.objectstorage_namespace_metadata

  namespace                    = each.value.namespace
  default_s3compartment_id     = each.value.default_s3compartment_id
  default_swift_compartment_id = each.value.default_swift_compartment_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

