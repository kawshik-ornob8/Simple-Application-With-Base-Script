GNU nano 6.2                                                                                                                                                                            Project.sh                                                                                                                                                                                     #!/bin/bash

clear

# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'
ourteaminfo() {
  clear
    echo -e ""
    echo -e ""
    echo -e "${magenta}    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=${clear} "
    echo -e "${magenta}  ||${clear}           Name            ${magenta}|${clear}        ID            ${magenta}||${clear} "
    echo -e "${magenta}  ||**************************************************||${clear} "
    echo -e "${magenta}  ||    ${green} Kawshik Ahmed ornob${clear}   ${magenta}|${clear}  ID: ${red}212-15-14750${clear}    ${magenta}||${clear} "
    echo -e "${magenta}  ||    ${green} MD Masud Rana ${clear}        ${magenta}|${clear}  ID: ${red}212-15-14760${clear}    ${magenta}||${clear} "
    echo -e "${magenta}  ||    ${green} Bibakananda Roy Shuvo${clear} ${magenta}|${clear}  ID: ${red}212-15-14747${clear}    ${magenta}||${clear} "
    echo -e "${magenta}    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=${clear} "
    echo -e ""
    echo -e ""
}

submittedto(){
  clear
    echo -e ""
    echo -e ""
    echo -e "${magenta}    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-${clear}"
    echo -e "${magenta}  ||${clear}                 Name               ${magenta}||${clear}"
    echo -e "${magenta}  ||************************************||${clear}"
    echo -e "${magenta}  ||${clear}           Md. Sabab Zulfiker       ${magenta}||${clear}"
    echo -e "${magenta}  ||${clear}                  AND               ${magenta}||${clear}"
    echo -e "${magenta}  ||${clear}         Md. Abdullah Al Kafi       ${magenta}||${clear}"
    echo -e "${magenta}    =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-${clear}"
    echo -e ""
    echo -e ""
}

display_item_list() {
    echo -e "=============================================="
    echo -e "          🛒 Supermarket Item List 🛍️         "
    echo -e "=============================================="
    echo -e "|  Item Name        |   Qty   |   Price    |"
    echo -e "|-------------------|---------|------------|"
    echo -e "| 1. 🍚 Rice         |   1KG   |   160 Taka |"
    echo -e "| 2. 🍬 Sugar        |   1KG   |    85 Taka |"
    echo -e "| 3. 🍞 Atta         |   5KG   |   330 Taka |"
    echo -e "| 4. 🍲 Baison       |   1KG   |   100 Taka |"
    echo -e "| 5. 🥦 Daal         |   1KG   |   170 Taka |"
    echo -e "| 6. 🌱 Soybean Oil  |   2lt   |   490 Taka |"
    echo -e "| 7. 🌻 Sunflower Oil|   5lt   |  2650 Taka |"
    echo -e "| 8. 🍈 Olive Oil    |   1lt   |  1550 Taka |"
    echo -e "| 9. ☕ Tea          | 400gm   |   150 Taka |"
    echo -e "|10. 🥤 Drinks       | 2 pieces|    50 Taka |"
    echo -e "=============================================="
}


shopmanage(){
  clear
  display_item_list
    echo -e "Which Product Do You Want?"
    read select
    clear
      if ((select == 1))
        then
          echo "How much Rice 1KG Do you want?"
            read Rice
            ans=`expr $Rice \* 160`
            
      elif ((select == 2))
        then
          echo "How much Sugar 1kg Do you want?"
            read Sugar
            ans=`expr $Sugar \* 85`
      elif ((select == 3))
        then
          echo "How much Atta 5kg Do you want?"
            read Atta
            ans=`expr $Atta \* 330`
      elif ((select == 4))
        then
          echo "How much Basion 1kg Do you want?"
            read Basion
              ans=`expr $Basion \* 100`
      elif ((select == 5))
        then
          echo "How much Daal 1kg Do you want?"
            read Daal
              ans=`expr $Daal \* 170`
      elif ((select == 6))
        then
          echo "How much Soyabean Oil 2lt  Do you want?"
            read Soyabean_Oil
            ans=`expr $Soyabean_Oil \* 490`
            
      elif ((select == 7))
        then
          echo "How much Sunflower Oil 5lt Do you want?"
            read Sunflower_Oil
            ans=`expr $Sunflower_Oil \* 2650`
      elif ((select == 8))
        then
          echo "How much Olive Oil 2lt Do you want?"
            read Olive_Oil
            ans=`expr $Olive_Oil \* 1550`
      elif ((select == 9))
        then
          echo "How much tea 400mg Do you want?"
            read Tea
              ans=`expr $Tea \* 150`
      elif ((select == 10))
        then
          echo "How many bottles of Drinks 2piece Do you want?"
            read Drinks
              ans=`expr $Drinks \* 50`        
      else
          echo "You Enter Wrong Key"
          exit
      fi
      echo "Thank for your Order"
      echo " "
      echo "Your Total Bill Is: "$ans
}

addition() {
  read -p "First number: " num1
  read -p "Second number: " num2
  echo "$num1 + $num2" | bc
}

subtraction() {
  read -p "First number: " num1
  read -p "Second number: " num2
  echo "$num1 - $num2" | bc
}

multiplication() {
  read -p "First number: " num1
  read -p "Second number: " num2
  echo "$num1 * $num2" | bc
}
power() {
  read -p "First number: " num1
  read -p "Second number: " num2
  echo "scale=4; $num1^$num2" | bc -l
}

division() {
  read -p "First number: " num1
  read -p "Second number: " num2
  if [ "$num2" -eq 0 ]
  then  echo "Error: Division by zero!"
  else
    echo "scale=2; $num1 / $num2" | bc
  fi
}


display_calculator_menu() {
  echo "╔════════════════════════════════╗"
  echo "║        🌟 Calculator Menu 🌈   ║"
  echo "╠════════════════════════════════╣"
  echo "║  1. ➕ Addition                ║"
  echo "║  2. ➖ Subtraction             ║"
  echo "║  3. ✨ Multiplication          ║"
  echo "║  4. ➗ Division                ║"
  echo "║  5. 🏠 Back to Home            ║"
  echo "╚════════════════════════════════╝"
}

calculator() {
  clear
  display_calculator_menu
  read -p "Enter your choice: " choice

  if [ $choice -eq 1 ]
  then
      result=$(addition "$num1" "$num2")
      echo "Result: $result"
      
  elif [ $choice -eq 2 ]
  then
      result=$(subtraction "$num1" "$num2")
      echo "Result: $result"
      
  elif [ $choice -eq 3 ]
  then
      result=$(multiplication "$num1" "$num2")
      echo "Result: $result"
     
  elif [ $choice -eq 4 ]
  then
      result=$(division "$num1" "$num2")
      echo "Result: $result"
     
  elif [ $choice -eq 5 ]
  clear
  then main    
  else
      echo "Invalid choice. Please enter a number between 1 and 10."
      
  fi

  read -p "Do you want to perform another calculation? (y/n): " continue_calculation

  if [ "$continue_calculation" == "y" ]
  then calculator

  else
    echo "Exiting calculator."
    main
  fi
}

no() {
  clear
  echo "Application Close"
  exit
}

display_home_page() {
    echo "=============================================="
    echo "             🏠 Welcome to My App 🚀          "
    echo "=============================================="
    echo "| 1. Submitted By                             |"
    echo "| 2. Submitted To                             |"
    echo "| 3. Grocery List                             |"
    echo "| 4. Calculator                               |"
    echo "| 5. Currency Exchenger                       |"
    echo "| 6. Close Application                        |"
    echo "=============================================="
}


main() {
  clear
  display_home_page
  read -p "Select Your Options: " select
 
  if [ $select -eq 1 ] 
  then ourteaminfo 
      
  elif [ $select -eq 2 ]     
  then submittedto
      
  elif [ $select -eq 3 ]
  then shopmanage

  elif [ $select -eq 4 ]
  then calculator

  elif [ $select -eq 5 ]
  then currency_exchenger

  elif [ $select -eq 6 ]
  then
      clear
      echo "Close Application"
      exit 
  else
      echo "Invalid select. Please enter a number between 1 and 6."
      
  fi
  echo -e "Return Home Press Any Key"
  read continue_selecting

  if [ "$continue_selecting" == "y" ]
  clear
  then main
  

  else
     clear
     echo "Application Close"
     exit
  fi
}



singup() {
    echo "╔════════════════════════╗"
    echo "      Sign Up Page       "
    echo "╚════════════════════════╝"
    
    echo "First Name:"
    read fast_name
    echo "Last Name:"
    read last_name
    echo "Email:"
    read email
    echo "Username: "
    read username
    
    while true; 
    do
    echo "Password:"
    read password

    echo "Confirm Password:"
    read  cpassword

    if [ "$password" == "$cpassword" ]; then
        break
    else
        echo "Passwords do not match. Please try again."
    fi
    done
    # Storing information in a file
    echo "First Name: $fast_name" >> accountinfo.txt
    echo "Last Name: $last_name" >> accountinfo.txt
    echo "Email: $email" >> accountinfo.txt
    echo "Username: $username" >> accountinfo.txt
    echo "Password: $password" >> accountinfo.txt
    clear
    echo "\n✨ Registration completed successfully! Welcome aboard! ✨"
    login
    }

login() {
    echo "╔════════════════╗"
    echo "║   Login Page   ║"
    echo "╚════════════════╝"
    echo "Enter your credentials below:"
    while true; 
    do
    read -p "Username: " Username
    read -p "Password: " password
    # Simulating login verification (replace with actual logic)
    stored_password="12345"
    if [ "$password" == "$stored_password" ]
    then
        echo "╔════════════════════╗"
        echo "║  Login Successful  ║"
        echo "╚════════════════════╝"
        main
        break
    else
    echo "Password doesn't match. Please try again."
    fi
    done
    }
currency_exchenger() {
  clear
echo "Currency List with Rate:"
    echo "No_____ Currency Name ________________ Qty _____ Price _____"
    echo "1.    United States Dollar           1         110.69 Taka"
    echo "2.    United Arab Emirates Dirham    1         30.14 Taka"
    echo "3.    Saudi Riya                     1         29.51 Taka"
    echo "4.    Pakistani Rupee                1         0.39 Taka"
    echo "5.    Nepalese Rupee                 1         0.83 Taka"
    echo "6.    Thai Baht                      1         3.14 Taka"
    echo "7.    Indian Rupee                   1         1.33 Taka"
    echo "8.    Euro                           1         120.82 Taka"
    echo "9.    Pound sterling                 1         138.79 Taka"
    echo "10.   Qatari Riyal                   1         30.41 Taka"
    echo "11.   Chinese Yuan                   1         15.60 Taka"
    echo "12.   Kuwaiti Dinar                  1         359.26 Taka"
    echo "13.   Indonesian Rupiah              1         0.0071 Taka"
    echo "14.   Maldivian Rufiyaa              1         7.19 Taka"
    echo "15.   Sri Lankan Rupee               1         0.34 Taka"
    echo "16.   Singapore Dollar               1         82.73 Taka"
    echo "17.   Russian Ruble                  1         1.26 Taka"
    echo "18.   Back to main menu "

    echo " "
    echo "Which Currency Do You Want?"
    usd=110.69
    ud=30.14
    sr=29.51
    pr=0.39
    np=0.83
    tb=3.14
    inr=1.33
    er=120.82
    ps=138.79
    qr=30.41
    cy=15.60
    kd=359.26
    ir=0.0071
    mr=7.19
    slr=0.34
    sd=82.73
    rr=1.26

read -p "Select your Currency No : " num


if (($num == 1))
        then
          echo "your chose currency is United States Dollar"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $usd " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
          
elif (($num == 2))
        then
          echo "your chose currency is United Arab Emirates Dirham"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $ud " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 3))
        then
          echo "your chose currency is Saudi Riya"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $sr " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
 elif (($num == 4))
        then
          echo "your chose currency is Pakistani Rupee"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $pr " | bc -l)
           echo " your required money $result tk "    
           echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 5))
        then
          echo "your chose currency is Nepalese Rupee"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $np " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 6))
        then
          echo "your chose currency is Thai Baht"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $tb " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 7))
        then
          echo "your chose currency is Indian Rupee"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $inr " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 8))
        then
          echo "your chose currency is Euro"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $er " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 9))
        then
          echo "your chose currency is Pound sterling"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $ps " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 10))
        then
          echo "your chose currency is Qatari Riyal"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $qr " | bc -l)
           echo " your required money $result tk "
           echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 11))
        then
          echo "your chose currency is Chinese Yuan "
          read -p "Enter your needed money: " n
            result=$(echo "$n * $cy " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 12))
        then
          echo "your chose currency is Kuwaiti Dinar"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $kd " | bc -l)
           echo " your required money $result tk "
           echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 13))
        then
          echo "your chose currency is Indonesian Rupiah"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $ir " | bc -l)
          echo " your required money $result tk "
          echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 14))
        then
          echo "your chose currency is Maldivian Rufiyaa "
          read -p "Enter your needed money: " n
            result=$(echo "$n * $mr " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 15))
        then
          echo "your chose currency is Sri Lankan Rupee"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $slr " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 16))
        then
          echo "your chose currency is Singapore Dollar"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $sd " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."

elif (($num == 17))
        then
          echo "Your chose currency is Russian Ruble"
          read -p "Enter your needed money: " n
            result=$(echo "$n * $rr " | bc -l)
            echo " your required money $result tk "
            echo "Thank you for using our service. See you soon. Have a good day."
elif (($num == 18 ))
         then 
         main
else
echo "Enter Right Key"
fi
}


home() {
    clear
    echo "🚀 Welcome to Our Application"
    echo ""
    echo "1️⃣  Sign Up: Launch into a new account adventure."
    echo "2️⃣  Login: Access your existing account."
    read -p "Choose your orbit (1 or 2): " n
    if [ $n == 1 ]
    then singup
    elif [ $n == 2 ]
    then login
    else
    exit
    fi
    }
home    