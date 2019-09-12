#!/bin/bash
# Game Tebak Angka

HIJAU='\033[0;32m'
MERAH='\033[01;31m'
NORMAL='\033[0m'
CYAN='\033[0;36m'
BIRU='\033[0;34m'
PUTIH='\033[1;37m'

echo "    __  ___                __          __  ";
echo "   /  |/  /__  ____  ___  / /_  ____ _/ /__";
echo "  / /|_/ / _ \/ __ \/ _ \/ __ \/ __  / //_/";
echo " / /  / /  __/ / / /  __/ /_/ / /_/ / ,>   ";
echo "/_/  /_/\___/_/ /_/\___/_.___/\__,_/_/|_|  ";
echo "                                    ANGKA  ";

echo "Coder By : Acep Gans'z | papa coder "
echo "My Team  : Ghost-Exploiter "
function tebakangka(){
	read -p "Tebak angka yang keluar =>" t_angka
	if [[ $t_angka == $angka_r ]]; then
		printf "${HIJAU} [ True ]${NORMAL} Angka yang anda tebak benar.\n";
	else
		printf "${MERAH} [ False ]${NORMAL} Angka yang anda tebak tidak benar\n";
		tebakangka
	fi
}
angka_r=$(shuf -i1-10 -n1);
echo ""
echo "==========================================================="
echo " Game tebak angka ialah game yang dimana anda hanya menebak";
echo " Angka yang keluar secara acak mulai dari 1 - 10";
read -p " Apakah anda siap bermain? [y/n] :" siapg
if [ "Y" == $siapg ] || [ "y" == $siapg ]; then
	tebakangka
elif [ "N" == $siapg ] || [ "n" == $siapg ]; then
	echo "Kamu gaberani ya? Huuu payah...";
else
	echo "Pilihan hanyalah [y/n]";
fi
