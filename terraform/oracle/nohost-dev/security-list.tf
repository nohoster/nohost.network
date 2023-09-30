resource "oci_core_security_list" "security-list"{

# Required
  compartment_id = oci_identity_compartment.dev-compartment.id
  vcn_id = module.vcn.vcn_id
# Optional
  display_name = "security-list"

  egress_security_rules {
      stateless = false
      destination = "0.0.0.0/0"
      destination_type = "CIDR_BLOCK"
      protocol = "all" 
  }

 
  ingress_security_rules { 
      stateless = false
      source = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 22
          max = 22
      }
    }
  ingress_security_rules { 
      stateless = false
      source = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 6443
          max = 6443
      }
    }
  ingress_security_rules { 
      stateless = false
      source = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 80
          max = 80
      }
    }
  ingress_security_rules { 
      stateless = false
      source = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 443
          max = 443
      }
    }
  ingress_security_rules { 
      stateless = false
      source = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
      protocol = "1"
      icmp_options {
        type = 3
      } 
    }
  ingress_security_rules { 
      stateless = false
      source = "10.0.0.0/16"
      source_type = "CIDR_BLOCK"
      protocol = "1"
      icmp_options {
        type = 3
        code = 4
      } 
    }
  ingress_security_rules { 
      stateless = false
      source = "10.0.0.0/16"
      source_type = "CIDR_BLOCK"
      protocol = "6"
      tcp_options { 
          min = 1
          max = 65000
      }
    }
  ingress_security_rules { 
      stateless = false
      source = "10.0.0.0/16"
      source_type = "CIDR_BLOCK"
      protocol = "17"
      udp_options { 
          min = 1
          max = 65000
      }
    }

}