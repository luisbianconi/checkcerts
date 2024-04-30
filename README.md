# CheckCerts Project

The CheckCerts Project was designed as a robust solution to be executed within a Docker container. Its main goal is to verify and validate the SSL certificate expiration dates for a list of websites specified in the `sites.txt` file.

The tool automates the process of certificate verification by using the `curl` command to access each URL listed in the `sites.txt` file. Each access is made with a response time limit set to 5 seconds, ensuring that the process is not hindered by sites that do not respond promptly. In case of a connection failure or if the response time is exceeded, the system logs an error and continues with the verification of the next sites on the list.

This method not only optimizes the efficiency of verifying multiple certificates but also ensures that all sites are checked in a systematic and orderly manner, without interruptions due to failures or delays in server response.

CheckCerts is an ideal tool for system administrators and security professionals who require an automated and reliable process to monitor the validity of SSL certificates, ensuring that all listed sites maintain their security standards up to date.

Developed by Luis Fernando Bianconi.

###
##
#

# Projeto CheckCerts

O Projeto CheckCerts foi concebido como uma solução robusta para ser executada dentro de um container Docker. Seu principal objetivo é verificar e validar a data de expiração dos certificados SSL para uma lista de sites especificada no arquivo `sites.txt`.

A ferramenta automatiza o processo de verificação de certificados, utilizando o comando `curl` para acessar cada URL listada no arquivo `sites.txt`. Cada acesso é feito com um limite de tempo de resposta configurado para 5 segundos, garantindo que o processo não fique retido por sites que não respondam prontamente. Em caso de falha na conexão ou se o tempo de resposta for excedido, o sistema registra um erro e continua a verificação dos próximos sites na lista.

Este método não apenas otimiza a eficiência da verificação de múltiplos certificados, mas também assegura que todos os sites sejam verificados de maneira sistemática e ordenada, sem interrupções por conta de falhas ou atrasos na resposta de algum servidor.

O CheckCerts é uma ferramenta ideal para administradores de sistemas e profissionais de segurança que necessitam de um processo automatizado e confiável para monitorar a validade dos certificados SSL, assegurando que todos os sites listados mantenham seus padrões de segurança atualizados.

Desenvolvido por Luis Fernando Bianconi
