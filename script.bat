@echo off
echo ================================
echo 🚀 Iniciando Deploy Kubernetes
echo ================================

echo 🏗️  Criando as imagens Docker dentro do Minikube...

REM Build da imagem backend
minikube image build backend --tag rogeriogeraldodev/projeto-backend:1.0

REM Build da imagem database
minikube image build database --tag rogeriogeraldodev/projeto-database:1.0

echo 🌐 Criando serviços no cluster Kubernetes...
kubectl apply --validate=false -f services.yml

echo 🚀 Realizando o deployment no Kubernetes...
kubectl apply --validate=false -f deployment.yml

echo ✅ Deploy finalizado com sucesso!
echo 🔍 Verifique os pods e serviços rodando:
echo kubectl get pods
echo kubectl get svc

pause
