variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}
variable "vcn_ocid" {default = "ocid1.vcn.oc1.eu-frankfurt-1.aaaaaaaafhsc52zsps5wl2w3a3hm45m2ocjnomtwgzy63q27tferczsc6zta"}

provider "oci" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region = "${var.region}"
}

# Protocols are specified as protocol numbers.
# http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml

resource "oci_core_security_list" "ad2pub_seclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${var.vcn_ocid}"
  display_name = "ad2pub"

  // allow outbound IP traffic
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol = ""
  }

  // allow inbound IP traffic from Home IP
  ingress_security_rules {
    source = "80.229.19.7/32"
    protocol = "" // ipv4
  }

}
