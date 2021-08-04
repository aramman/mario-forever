 resource "null_resource" "running_ansible" {
       triggers = {
        build_number = "${timestamp()}"
    }

 depends_on = [null_resource.preparing_conf_file]   

  provisioner "local-exec" {
    command = "sleep 200;ansible-playbook playbooks/nginx.yaml"
  }
 provisioner "local-exec" {
    command = "ansible-playbook playbooks/docker.yaml"
  }

 }