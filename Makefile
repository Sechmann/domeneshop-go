generate-domeneshop-client: 
	openapi-generator-cli generate \
		-g go \
		-i api/swagger.json \
		-o ./pkg/ \
		--additional-properties=packageName=pkg
	cp --force pkg/README.md .

all: generate-domeneshop-client
