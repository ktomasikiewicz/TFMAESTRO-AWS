environment = "prod"
name_prefix = "tfmaestro"
region      = "eu-central-1a"
ami_id      = "ami-03a2446ce18cf96b5"
subnet_cidr = "10.0.10.0/24"

ec2_instances = {
  "tfmaestro-web-app-01" = {
    instance_type        = "t3.micro"
    availability_zone    = "eu-central-1a"
    instance_description = "Web application"
    ip_host              = 4
  }
  "tfmaestro-web-app-02" = {
    instance_type        = "t3.micro"
    availability_zone    = "eu-central-1a"
    instance_description = "Web application"
    ip_host              = 5
  }
}

allow_firewall_rules = {
  "allow-http" = {
    protocol         = "tcp"
    ports            = ["80"]
    priority         = 1000
    description      = "Allow http communication."
    source_ip_ranges = ["0.0.0.0/0"]
  }
  "allow-https" = {
    protocol         = "tcp"
    ports            = ["443"]
    priority         = 1001
    description      = "Allow https communication."
    source_ip_ranges = ["0.0.0.0/0"]
  }
  "allow-ssh-vpn" = {
    protocol         = "tcp"
    ports            = ["22"]
    priority         = 1002
    description      = "Allow ssh communication via VPN."
    source_ip_ranges = ["188.117.184.23/32","83.27.112.204/32"]
  }
  "allow-http-gunicorn" = {
    protocol         = "tcp"
    ports            = ["8080"]
    priority         = 1003
    description      = "Allow http communication for Gunicorn app."
    source_ip_ranges = ["0.0.0.0/0"]
}
  "allow-icmp" = {
    protocol         = "icmp"
    priority         = 2000
    description      = "Allow ICMP."
    source_ip_ranges = ["0.0.0.0/0"]
  }
}