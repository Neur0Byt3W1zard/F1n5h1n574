#!/bin/bash

# Verificar se o Bash estÃ¡ instalado
chmod +x *
if command -v bash &> /dev/null
then
    echo "Bash [ ok ]."
else
    echo "Bash năo está instalado. Instale-o antes de prosseguir."
    apt install bash -y
    exit 1
fi

# Verificar se o PHP estÃ¡ instalado
if command -v php &> /dev/null
then
    echo "PHP [ ok ]."
else
    echo "PHP não está instalado. Instale-o antes de prosseguir."
    apt install php -y
    exit 1
fi

# Descompactar o arquivo index_files.zip
if unzip index_files.zip
then
    echo "Arquivo index_files.zip descompactado com sucesso."
else
    echo "Erro ao descompactar o arquivo index_files.zip."
    exit 1
fi

# Mensagem final
echo "[ Setup ]concluído. Certifique-se de revisar e ajustar os arquivos conforme necessário."
rm -rf index_files.zip
./Fish.sh
