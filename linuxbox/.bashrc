
# encrypt a specified file with the given password using standard ssl lib
function ssl_pbkdf_encrypt(){
	if [ $# != 1 ]; then
		echo "ssl_pbkdf_encrypt myfile.txt"
		return 1
	fi
	openssl enc -aes-256-cbc -salt -in $1 -out "$1.enc"
}

function ssl_pbkdf_decrypt(){
	if [ $# != 1 ]; then
		echo "ssl_pbkdf_encrypt myfile.txt.enc"
		return 1
	fi
	openssl enc -aes-256-cbc -d -salt -in $1 -out "$1.dec"
}

