### The Ansible inventory file
resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  bastion-dns = aws_instance.Nginx-LB.public_dns,   
  bastion-ip = aws_instance.Nginx-LB.public_ip,
  bastion-id = aws_instance.Nginx-LB.id,
  private-dns = aws_instance.appservers.*.private_dns,
  private-ip = aws_instance.appservers.*.private_ip,
  private-id = aws_instance.appservers.*.id
 }
 )
 filename = "inventory"
}