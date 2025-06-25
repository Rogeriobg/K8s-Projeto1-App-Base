# 📌 Descrição do Projeto
Este projeto demonstra o uso de Kubernetes (K8s) com Minikube para orquestração de containers, criando um ambiente completo com serviços backend em PHP e um banco de dados MySQL.
## Professor Denilson Bonatti

## ✅ Tecnologias utilizadas:
Kubernetes (Minikube) → Para criação e gerenciamento de pods, deployments e serviços.

MySQL → Banco de dados persistente para armazenar as mensagens enviadas via formulário.

PHP (backend) → API simples que recebe os dados do frontend e grava no banco.

NodePort e ClusterIP Services → Permitem comunicação entre os pods e também acesso externo ao backend.

## ✅ Estrutura do Projeto:
1 Pod MySQL com armazenamento persistente via PersistentVolumeClaim (PVC).

2 réplicas do Pod PHP garantindo alta disponibilidade para o backend.

Services:

mysql-connection (ClusterIP) → Comunicação interna entre o PHP e o MySQL.

php (NodePort) → Permite acessar a aplicação PHP externamente via porta do Minikube.

## ✅ Fluxo da Aplicação:
O usuário preenche um formulário frontend.

Os dados são enviados via HTTP (NodePort) para o backend PHP rodando no cluster.

O backend PHP se conecta ao MySQL (via Service interno ClusterIP) e grava os dados.

Foi realizada a consulta via terminal no pod do MySQL para validar que os dados foram persistidos com sucesso.

## Acessando o banco de dados dentro do pod no minikube 
 kubectl exec -it mysql-69fcbbbf8c-7lm8c -- bash

## executando o clienente no pod  
mysql -u root -p 
digite a senha Senha123

# Imagens de checagem 

### Frontend Formulário
![Frontend Formulário](https://github.com/Rogeriobg/K8s-Projeto1-App-Base/raw/main/01-dados-salvos.png)

### Dados Salvos Minikube
![Dados Salvos Minikube](https://github.com/Rogeriobg/K8s-Projeto1-App-Base/raw/main/02-Dados%20Salvos%20Minikube.png)

### Verificações kubectl
![Verificações kubectl](https://github.com/Rogeriobg/K8s-Projeto1-App-Base/raw/main/03-Verifica%C3%A7%C3%B5es%20kubectl.png)

### Resposta no Banco de Dados
![Resposta no Banco de Dados](https://github.com/Rogeriobg/K8s-Projeto1-App-Base/raw/main/04-Resposta%20no%20banco%20de%20dados.png)
