output "nginxip" {
    value = "${aws_instance.Nginx-LB.public_ip}"
}

output "apphost1" {
    value = "${aws_instance.appservers[0].private_ip}"
}
output "apphost2" {
    value = "${aws_instance.appservers[1].private_ip}"
}

