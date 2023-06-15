# main.tf

# Configuración del proveedor de AWS
provider "aws" {
  region = "us-east-1" 
}

# Recursos para la aplicación demo
resource "aws_instance" "demo_app" {
  ami           = "ami-0c94855ba95c71c99" # ID de la imagen de la instancia (reemplazar con la AMI adecuada)
  instance_type = "t2.micro"

  tags = {
    Name = "demo-app"
  }
}

resource "aws_security_group" "demo_sg" {
  name        = "demo-sg"
  description = "Security group for the demo app"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "demo-sg"
  }
}

resource "aws_key_pair" "demo_key" {
  key_name   = "demo-key"
  public_key = "ssh-rsa clavede tu accout"
}

output "instance_public_ip" {
  value = aws_instance.demo_app.public_ip
}

