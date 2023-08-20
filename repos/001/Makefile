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
