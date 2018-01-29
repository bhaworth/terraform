# Protocols are specified as protocol numbers.
# http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml

resource "oci_core_security_list" "ad1pub_seclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.BenH.id}"
  display_name = "ad1pub"

  // allow outbound IP traffic
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol = "all"
  }

  // allow inbound IP traffic from Home IP
  ingress_security_rules {
    source = "80.229.19.7/32"
    protocol = "all" // ipv4
  }
}

resource "oci_core_security_list" "ad2pub_seclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.BenH.id}"
  display_name = "ad2pub"

  // allow outbound IP traffic
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol = "all"
  }

  // allow inbound IP traffic from Home IP
  ingress_security_rules {
    source = "80.229.19.7/32"
    protocol = "all" // ipv4
  }

}

resource "oci_core_security_list" "ad3pub_seclist" {
  compartment_id = "${var.compartment_ocid}"
  vcn_id = "${oci_core_virtual_network.BenH.id}"
  display_name = "ad3pub"

  // allow outbound IP traffic
  egress_security_rules {
    destination = "0.0.0.0/0"
    protocol = "all"
  }

  // allow inbound IP traffic from Home IP
  ingress_security_rules {
    source = "80.229.19.7/32"
    protocol = "all" // ipv4
  }

}
