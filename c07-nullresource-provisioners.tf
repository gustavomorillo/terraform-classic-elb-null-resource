resource "null_resource" "name" {
  depends_on = [module.vpc, module.ec2_bastion_host, aws_eip.ec2_bastion_host]
  connection {
    type        = "ssh"
    host        = aws_eip.ec2_bastion_host.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = tls_private_key.rsa.private_key_pem
  }

  provisioner "file" {
    source      = "private-key/tf-key.pem"
    destination = "/tmp/tf-key.pem"
  }

  provisioner "remote-exec" {
    inline = ["sudo chmod 400 /tmp/tf-key.pem"]

  }

  provisioner "local-exec" {
    command     = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    working_dir = "/tmp/"

  }


}
