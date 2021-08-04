 resource "null_resource" "preparing_conf_file" {
       triggers = {
        build_number = "${timestamp()}"
    }
  depends_on  =  [aws_instance.Nginx-LB, aws_instance.appservers]

  provisioner "local-exec" {
    command = "terraform output -raw apphost1 > apphost1"
  }

  provisioner "local-exec" {
    command = "terraform output -raw apphost2 > apphost2"
  }

  provisioner "local-exec" {
    command = "/bin/bash changer.sh"
  }

 }