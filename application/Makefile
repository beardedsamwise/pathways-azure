DOCKERFILE = weather-app-dockerfile
export ARM_CLIENT_ID
export ARM_CLIENT_SECRET 
export ARM_TENANT_ID
export ARM_SUBSCRIPTION_ID 
export ACR_URL
export ACR_USER
export ACR_PASSWORD

.PHONY: build
build:
	docker build -t $(ACR_URL)/weatherapp -f $(DOCKERFILE) .

.PHONY: login
login:
	echo $(ACR_PASSWORD) | docker login --username beardedweatherapp --password-stdin $(ACR_URL)

.PHONY: push
push:
	docker push $(ACR_URL)/weatherapp