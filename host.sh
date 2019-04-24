#!bin/bash
clear 
while :
do
#menu
clear
echo -e "\e[1;32m"
echo "+---------------------------------------+"
echo "+FINDER HOST HTTP & SSL Vearsion=1.0    +"
echo "+Follow me http://github.com/saeedo201  +"
echo "+Special Thanks To Those Who Use My Tool+"
echo "+---------------------------------------+"
echo ""
echo -e "\e[1;35m1.) SEARCH HOST & SSL"
echo ""
echo -e "\e[1;35m2.) SHOW STATUS"
echo ""
echo -e "\e[1;35m3.) SAVE HOSTS IN LIST"
echo ""
echo -e "\e[1;35m4.) ABOUT TOOL"
echo ""
echo -e "\033[1;35m5.) EXIT THE Tool"
echo ""
echo -e "\e[1;31m"
echo -n "Shoose option: "
read option
#list menu
echo -e "\e[0m"
case $option in
1)
echo ""
echo -n "Insert HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mPress any key to continue with the script...!\e[0m";
read foo
;;
2)
echo ""
echo "Showing host status";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mPress any key to continue..\e[0m"
read foo
;;
3)
echo ""
echo -e "\e[1;33mPaste the hosts to get the status\e[0m";
echo -e "\e[1;31mRemember CTRL + C to exit\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>list.txt
cd $HOME/Check-Hosts && bash host.sh && 2
;;
4)
echo ""
cat about.txt
read foo
;;
5)
printf "\e[1;45m Thanks For Usage  \e[0m\n"
printf "\e[1;45m Good Bye! \e[0m\n"
exit 0
;;
*)
printf "\e[1;45m Invalid option! \e[0m\n"
 esac
done
