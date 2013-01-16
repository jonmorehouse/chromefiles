function change_instance {


	ec2-stop-instances ${1}
	ec2-modify-instance-attribute ${1} -instance-type=t1.micro
	ec2-start-instances ${1}

}

