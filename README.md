# k8s-jenkins-terraform
Terraform plan to create a simple jenkins instance running and using an alternate Docker daemon

-----------------------

### Setup on Windows 

* Install Docker for Windows and enable Kubernetes cluster in the settings

* Install Chocolatey

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install kubernetes-helm -y

choco install terraform -y


-----------------------
### Steps to run  

1) terraform init
2) terraform apply

#### On Windows:

Go to http://localhost:32000

#### If using Minikube:

get the ip of Minikube by running the command 'minikube ip' and go to http://{minikube ip value}:32000

#### To get the jenkins password use : 

**MAC:** printf $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo

**Windows:** kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode

login with username admin and previous password

