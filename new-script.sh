#!/bin/bash

echo "Criando estrutura de pastas..."

mkdir -v /adm /publico /ven /sec

echo "Criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo donos dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando usuários do sistema..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
passwd carlos -e 
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
passwd maria -e 
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
passwd debora -e 
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
passwd sebastiana -e 
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
passwd roberto -e 
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
passwd josefina -e 
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
passwd amanda -e 
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
passwd rogerio -e 

echo "Definindo permissões de usuários"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "finalizado..."
