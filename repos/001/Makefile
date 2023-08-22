help:
	@echo "Valid arguments:"
	@grep -E '^[A-Za-z]+:' Makefile | sed -E 's/://1'

init: 
	@terraform init

lint:
	@tflint 2>&1 || true
	@terraform validate 2>&1 || true
	@terraform fmt

plan:
	@terraform plan

apply:
	@terraform apply

destroy:
	@terraform destroy
