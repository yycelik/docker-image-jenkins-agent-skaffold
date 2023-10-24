export REGISTRY_URL="docker-r.nexus.smart.com"
export REGISTRY_USERNAME="xxx"
export REGISTRY_PASSWORD="xxx"

docker system prune

docker login -u $REGISTRY_USERNAME -p $REGISTRY_PASSWORD $REGISTRY_URL

docker build -t smart-skaffold-agent:latest .

docker tag smart-skaffold-agent:latest $REGISTRY_URL/smart-skaffold-agent:latest

docker push $REGISTRY_URL/smart-skaffold-agent:latest
