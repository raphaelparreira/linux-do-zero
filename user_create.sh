#!bin/bash

echo "Criando diretório dos usuários..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo -e "Diretórios criados!\n"


echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo -e "Usuários criados!\n"


echo "Atualizando dono e grupo de acesso às pastas..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo -e "Donos e grupos atualizados!\n"


echo "Atualizando permissões de acesso dos grupos..."

chown 770 /adm
chown 770 /ven
chown 770 /sec
chown 777 /publico

echo -e "Permissões atualizadas!\n"
