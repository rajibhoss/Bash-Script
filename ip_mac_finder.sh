
#!/bin/bash

banner(){
echo "####################################################"
echo "							  "
echo "		SIMPLE IP & MAC ADDRESS FINDER 		  "
echo "							  "
echo "		Created By MD.Rajib Hossain 		  "
echo "							  "
echo "####################################################"
}


message() {

echo ""
echo "what you want me to do now? "
echo ""
echo "Enter 1 To show IP Adderss"
echo "Enter 2 To show  MAC Adderss"
echo "Enter 0 To Exit!"

}


main(){
read -p "Enter Your Choice : " option
if [ $option == 1 ];
 then 
	echo "Your IP Adderss is :" $(hostname -I)

elif [ $option == 2 ];
 then 
	echo "Your MAC Adderss is : " $(ip link show eth0 | grep link/ether | awk '{print $2}')

elif [ $option == 0 ];
 then 
	exit
else echo "Wrong Option!"

fi

}


for (( ; ; ))
do 
banner
message
main
done

