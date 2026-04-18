provider "aws" {
    region = "eu-central-1"
}



resource "aws_security_group" "vpn_sg" {
    name = "vpn-panel-sg"
    description = "Security group for VPN and Panel"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }
    ingress {
        from_port = 2053
        to_port = 2053
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0 
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_key_pair" "deployer" {
    key_name = "vpn-deployer-key"
    public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_instance" "vpn_server" {
    ami    = "ami-05852c5f195d545ea"
    instance_type  = "t3.micro"
    key_name = aws_key_pair.deployer.key_name
    vpc_security_group_ids = [aws_security_group.vpn_sg.id]

    tags = {
        Name = "VPN-3X-UI"
    }
}

output "server_ip" {
    value = aws_instance.vpn_server.public_ip
}