function grayscale {

	convert ${1} -colorspace Gray ${2}

}

function opacity {

	# convert ${1} -alpha Set
	convert ${1} -alpha on -channel o -evaluate set 60% ${1}
	# convert ${1} -charcoal 1 ${1}


}