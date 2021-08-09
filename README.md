# mario-forever project 

This provides a template for running a simple two-tier architecture on Amazon Web services.
The template as is will run a vpc 2 subnets in it. 1 subnet will be for public requestes while the other one will be prvate , thus will be unavailable directly for outside.
You will just have to add you aws access key and secret key to var file. 
The template run aws components in eu-west3 region , default ami is ubuntu.
After the run terraform will , if everything will work as it was expected , will output 3 ips . You can just copy-paste nginx (public ip) ip in your browser.


DISCLAIMER
All coincidences are random !
