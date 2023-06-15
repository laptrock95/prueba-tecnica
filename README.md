Descripción del Proyecto
Este proyecto es una aplicación web desarrollada en Node.js que utiliza Docker para su contenerización, Jenkins para la integración continua y Kubernetes para el despliegue. El objetivo es mostrar un flujo de trabajo típico de DevOps, desde la construcción y pruebas de la aplicación hasta el despliegue en un entorno de producción.

Estructura del Repositorio
app/: Contiene el código fuente de la aplicación.
docker/: Contiene el Dockerfile para la contenerización de la aplicación.
jenkins/: Contiene el Jenkinsfile para la integración continua y el despliegue automatizado.
kubernetes/: Contiene los archivos YAML para el despliegue en Kubernetes.
Dockerización de la Aplicación
La aplicación ha sido dockerizada utilizando un Dockerfile que se encuentra en la carpeta docker/. El Dockerfile define los pasos necesarios para crear una imagen Docker de la aplicación, incluyendo la instalación de las dependencias, la configuración del entorno y la ejecución del servidor Node.js.

Puedes construir la imagen Docker ejecutando el siguiente comando en la raíz del proyecto:


docker build -t demo-devops-nodejs .


Integración Continua y Despliegue Automatizado con Jenkins
La integración continua y el despliegue automatizado se realizan utilizando Jenkins. En la carpeta jenkins/ se encuentra el Jenkinsfile, que define el pipeline de Jenkins con los siguientes pasos:

Clonar el repositorio.
Construir la imagen Docker de la aplicación.
Ejecutar pruebas unitarias.
Realizar análisis estático del código.
Generar informe de cobertura de código.
Construir y subir la imagen Docker al registro.
Desplegar la aplicación en Kubernetes.
El Jenkinsfile se configura en tu instancia de Jenkins para que se ejecute automáticamente cuando se realicen cambios en el repositorio.

Despliegue en Kubernetes
El despliegue en Kubernetes se realiza utilizando los archivos YAML ubicados en la carpeta kubernetes/. Estos archivos definen los recursos necesarios para el despliegue de la aplicación, como pods, servicios, configuraciones de entorno, etc.

Puedes desplegar la aplicación en Kubernetes ejecutando los siguientes comandos:


kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
kubectl apply -f kubernetes/ingress.yaml
Estos comandos aplicarán los archivos YAML correspondientes y desplegarán la aplicación en Kubernetes.

