resource "aws_key_pair" "cmtr-otuokx4e-keypair" {
  key_name   = "deployer-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMYkVIbiAxim99MtGPnU0rlZ3mOJvictHDx88xk8isIX yuliakalinina@yulias-MacBook-Air.local"

  tags = {
    Project = "epam-tf-lab"
    ID      = "cmtr-otuokx4e"
    Name    = "cmtr-otuokx4e-keypair"
  }
}
