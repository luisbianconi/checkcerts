#!/bin/sh

# Contagem de sites listados no arquivo sites.txt
countsites=$(wc -l < ./sites.txt)  # Uso mais eficiente do wc e redirecionamento

echo "Iniciando Verificação de Certificados"
echo "Serão Verificados $countsites Sites"

# Inicialização da variável countline
countline=1

# Correção do espaço faltando e uso correto da variável countsites
while [ $countline -le $countsites ]
do
    url=$(sed -n "$countline"p ./sites.txt)
    # Execução do comando curl com limite de tempo e tratamento de erro
    output=$(curl -k $url -vI --stderr - --max-time 5)
    if [ $? -eq 0 ]; then  # Verifica se o curl foi bem-sucedido
        echo "$output" | grep "expire date" | awk -v url="$url" '{print "Certificado " url " expira em " $4 " " $5}'
    else
        echo "Falha ao acessar $url ou tempo de resposta excedido"
    fi
    countline=$((countline + 1))
done

