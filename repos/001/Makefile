init: 
	@terraform init

lint:
	@tflint 2>&1 || true
	@terraform validate 2>&1 || true
	@terraform fmt

plan:
	@terraform plan

scan: 
	@terraform init 2>&1 || true
	@terraform plan -out tf.plan 2>&1 || true
	@terraform show -json tf.plan | jq '.' > tf.json 2>&1 || true
	@checkov -f tf.json 2>&1 || true
	@rm tf.plan tf.json 2>&1 || true

apply:
	@terraform apply

destroy:
	@terraform destroy
