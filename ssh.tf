resource "aws_key_pair" "cmtr-otuokx4e-keypair" {
  key_name   = "cmtr-otuokx4e-keypair"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMYkVIbiAxim99MtGPnU0rlZ3mOJvictHDx88xk8isIX yuliakalinina@yulias-MacBook-Air.local"

  tags = {
    Project = "epam-tf-lab"
    ID      = "cmtr-otuokx4e"
  }
}
