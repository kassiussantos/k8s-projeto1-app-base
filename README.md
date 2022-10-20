_em português_

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

-------------------------------------------------------------------------------------
_in English_

# dio.me Bootcamp Activity

Cloud DevOps Experience - Carrefour Bank

Creating an Application Deployment

## **Description**

In this project we will deploy a complete application with frontend, backend and mysql database. In the development of the project the container images and services needed in kubernetes will be created so that the application is ready for production.

The architecture can be summarized in a frontend isolated from the K8S Cluster simulating an application installed on external devices such as mobile. We will have a Loadbalancer that will connect to the php backend and connect to the mysql database.
Will be created 6 php replicas (PODs) divided into 3 Nodes.
Mysql Database will use only one POD without replicas, but we will have data persistence (PVC) Google Cloud Platform.

## Prerequisites ##

Intermediate knowledge in Linux, Docker, Kubernetes, GCP

## Extras

Created a basic script ``delete_all.bat`` to remove all services created to speed up the reuse in case of more labs with the same infrastructure.