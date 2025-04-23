# :penguin: Infraestrutura como Código

Essa prática consiste em gerenciar e provisionar a infraestrutura de TI (como servidores, redes, e bancos de dados) por meio de arquivos de configuração e scripts, em vez de processos manuais ou interativos.

## :memo: Objetivo deste repositório 

Demonstração do desenvolvimento de um script de setup de diretórios, grupos e usuários.
Este foi o primeiro desafio proposto pelo professor Denilson Bonatti no Bootcamp Santander - Linux para Iniciantes.

* Durante o curso, estamos aprendendo a utilizar o sistema operacional **Linux**, com a distribuição Ubuntu voltada para servidores.

## :brain: Explicando o script

| 🔵 **REQUISITO**               | 🟢 **DESCRIÇÃO**                                                                                     |
|--------------------------------|-----------------------------------------------------------------------------------------------------|
| 📁 **Provisionamento em Bash** | • Script **exclusivo em Bash** (.sh)<br> • Nome: `provisionamento.sh`                              |
| 👑 **Dono dos Diretórios**      | • **Root** como proprietário de todos diretórios<br> • Exemplo: `chown root /publico /adm /ven /sec` |
| 🌍 **Diretório Público**       | • Permissão **`rwx` para todos**<br> • Caminho: `/publico`                                         |
| 🔐 **Diretórios por Grupo**    | • **Grupos e Diretórios**:<br>   - `GRP_ADM` → `/adm` (usuários: carlos, maria, joao)<br>   - `GRP_VEN` → `/ven` (debora, sebastiana, roberto)<br>   - `GRP_SEC` → `/sec` (josefina, amanda, rogerio)<br> • Permissão: `chmod 770` (apenas grupo) |
| 🚫 **Restrição de Acesso**     | • **Bloquear acesso** a diretórios de outros grupos<br> • Exemplo: `debora` (GRP_VEN) não pode ler/editar `/adm` ou `/sec` |

## :white_check_mark: Considerações finais

Fiquei muito empolgado com esta primeira atividade e, utilizando as IAs como ferramenta, consegui ir além do que foi proposto pelo professor. Busquei me preocupar com a funcionalidade do script, seguir padrões que são considerados boas práticas e explorar recursos como laços de repetição e estruturas condicionais, como o for e o case.
