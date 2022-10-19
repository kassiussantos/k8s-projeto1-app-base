# Atividade Bootcamp dio.me

Cloud DevOps Experience - Banco Carrefour

Criando um Deploy de uma Aplicação

## **Descrição**

Neste projeto será realizado um deploy de uma aplicação completa com frontend, backend e database mysql. No desenvolvimento do projeto serão criadas as imagens dos containeres e serviços necessários no kubernetes para que a aplicação esteja pronta para produção.

Arquitetura se resume num Frontend isolado do Cluster K8S simulando uma aplicação instalada em dispositivos externos como mobile por exemplo. Teremos um Loadbalancer que fará a ligação com o backend php e fará conexão ao banco de dados mysql.
Será criado 6 réplicas (PODs) php divido em 3 Nodes.
Banco de Dados Mysql usará apenas um POD sem réplicas, mas teremos persistência de dados (PVC) Google Cloud Platform.

## Pré-requisitos ##

Conhecimentos Intermediarios em Linux, Docker, Kubernetes, GCP

## Extras

Criado um script basico ``delete_all.bat`` para remoção de todos os serviços criados para agilizar a reutilização em caso de mais laboratorios com a mesma infraestrutura.