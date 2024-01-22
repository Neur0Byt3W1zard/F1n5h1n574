#!/bin/bash
clear
# Verificar se o Bash está instalado
apt update -y && apt upgrade -y
clear
chmod +x *
if command -v ssh &> /dev/null
then
   echo -e "\e[34mssh\e[0m [ \e[32mok\e[0m ]."
   sleep 1
else
   echo -e "SSH năo está instalado. Instale-o antes de prosseguir."
    apt install openssh -y
    exit 1

fi
if command -v bash &> /dev/null
then
    echo -e "\e[34mBash\e[0m [ \e[32mok\e[0m ]."
    sleep 1
else
    echo "Bash năo está instalado. Instale-o antes de prosseguir."
    apt install bash -y
    exit 1
fi

# Verificar se o PHP estÃ¡ instalado
if command -v php &> /dev/null
then
    echo -e "\e[34mPHP\e[0m  [ \e[32mok\e[0m ]."
    sleep 1
else
    echo "PHP não está instalado. Instale-o antes de prosseguir."
    apt install php -y
    exit 1
fi
if command -v zip &> /dev/null
then
    echo -e "\e[34mZip\e[0m  [ \e[32mok \e[0m ]."
    sleep 1
else
    echo -e "\e[34mZip [ \e[31mNot Install\e[0m ]"
    apt install zip -y
    exit 1
fi


# Descompactar o arquivo index_files.zip
if ls | grep index_files.zip
    unzip index_files.zip &> /dev/null
then
    echo "Arquivo index_files.zip descompactado com sucesso."
else
    echo "Arquivo já descompactado index_files.zip."
fi

# Mensagem final
echo "[ Setup ]concluído. Certifique-se de revisar e ajustar os arquivos conforme necessário."
rm -rf index_files.zip
mv setup.sh .setup.sh
./Fish.sh

