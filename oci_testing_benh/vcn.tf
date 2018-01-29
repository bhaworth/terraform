resource "oci_core_virtual_network" "BenH" {
  compartment_id = "${var.compartment_ocid}"
  cidr_block = "10.36.0.0/16"
  dns_label = "benh"
  display_name = "BenH"
}
