# info
	kaniko build image on kubernetes cluster
	
# step-1 kubernetes repository secrets
	create secret on kubernates cluster for private repository
	
	Windows: k8s-secret/create-private-repo-secret.ps1
	Linux: k8s-secret/create-private-repo-secret.sh

# step-2 build on Jenkins
	image info
	base image : jenkins/inbound-agent:latest
	installed apps : skaffold, kubectl