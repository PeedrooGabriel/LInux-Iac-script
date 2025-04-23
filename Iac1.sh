#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Directories successfully created."
echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Groups successfully created."

default_pass="Pass123"
user_list=("carlos" "maria" "joao" "debora" "sebastiana" "roberto" "josefina" "amanda" "rogerio")

for username in "${user_list[@]}"; do
    echo "Creating User: $username"

    useradd -m -s /bin/bash "$username"
    echo "$username:$default_pass" | chpasswd
    chage -d 0 "$username"

done

for username in "${user_list[@]}"; do

	case "$username" in

		carlos|maria|joao)
			gpasswd -a "$username" GRP_ADM
			;;
		debora|sebastiana|roberto)
			gpasswd -a "$username" GRP_VEN
			;;
		josefina|amanda|rogerio)
			gpasswd -a "$username" GRP_SEC
			;;
	esac

done

echo "Users successfully assigned to groups."
echo "Setting permissions..."
chmod 777 /publico

chmod 770 /adm
chown root:GRP_ADM /adm

chmod 770 /ven
chown root:GRP_VEN /ven

chmod 770 /sec
chown root:GRP_SEC /sec

echo "Permissions successfully set."

echo "Setup completed successflly."
