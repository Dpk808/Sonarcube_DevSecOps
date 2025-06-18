# PV-Kubernetes-Begineer.2



PVC and PV in Kubernetes

Creating a file upload server deployed on Kubernetes using a Flask application along with PV enabled

The uploaded files are stored persistently using Persistent Volumes (PV) and Persistent Volume Claims (PVC), ensuring that files persist even if the pod is restarted or rescheduled. Below is the summary of the project:

1. Initiating Minikube:

  **_minikube start_**



![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/1.%20Started%20minikube.png)

















2.Building the Docker Image:  

  **_docker build -t deepakk2212/upload-server:v2 ._**

![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/2.%20Building%20the%20Docker%20Image.png)


3.Pushing the docker image to dockerhub:

  **_docker push deepakk2212/upload-server:v2_**


![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/3.%20Pushed%20the%20docker%20image%20to%20dockerhub.png)


4.Applying the yaml files: (deployment.yaml, service.yaml and pvc.yaml)

  **_kubectl apply -f pvc.yaml
  kubectl apply -f deployment.yaml
  kubectl apply -f service.yaml_**

![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/4.%20Applied%20the%20yaml%20files.png)


5.Port forwarding to the localhost:8080

  **_kubectl port-forward svc/upload-server-service 8080:80_**



![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/4.5%20Port%20forwarding.png)




6.File-Uploadable Webpage:

  **_http://localhost:8080_**


![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/5.%20Uploadable%20Webpage.png)



![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/6.%20File%20is%20uploaded.png)



File named ‘kubernetes_image.png’ has been uploaded to the webpage.


On clicking the file name: the file can be accessed:


![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/7.%20seeing%20the%20uploaded%20image.png)



And this is where the files uploaded to the deployed web app stays (in PVC) :

  _**kubectl get pvc**_


![image alt](https://github.com/Dpk808/PV-Kubernetes-Begineer.2/blob/main/Screenshots/8.%20This%20is%20where%20the%20uploaded%20files%20stay.png)
