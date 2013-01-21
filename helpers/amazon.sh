function s3cmd.public {

	s3cmd setacl —acl-public -r "${1}"

}
