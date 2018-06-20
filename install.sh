#!/bin/bash
clear
echo "
 ____       _                ____            
|  _ \ _ __(_)_ __ ___   ___/ ___|  ___  ___ 
| |_) | '__| | '_ ` _ \ / _ \___ \ / _ \/ __|
|  __/| |  | | | | | | |  __/___) |  __/ (__ 
|_|   |_|  |_|_| |_| |_|\___|____/ \___|\___|
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By PrimeModz  ☪ ~
  █   █  █ █  █ █   ▀▀█ 
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀             

                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/PrimeSec" ] ;
then
echo "[◉] A directory PrimeSec was found motherfucker! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/PrimeSec"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/PrimeSec420/PrimeSec.git /usr/share/doc/PrimeSec;
 echo "#!/bin/bash 
 python /usr/share/doc/PrimeSec/PrimeSec.py" '${1+"$@"}' > PrimeSec;
 chmod +x PrimeSec;
 sudo cp PrimeSec /usr/bin/;
 rm PrimeSec;


if [ -d "/usr/share/doc/PrimeSec" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute tool by typing PrimeSec  !      [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
