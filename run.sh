# Borrowing k8s resource spec from http://www.monkeylittle.com/blog/2017/02/07/deploying-jenkins-with-kubernetes.html

kubectl  create -f jenkins-svc.yml
kubectl  create -f jenkins-deployment.yml
kubectl exec $(kubectl get pods -o=name | grep jenkins | cut -d "/" -f2-) cat /var/jenkins_home/secrets/initialAdminPassword
