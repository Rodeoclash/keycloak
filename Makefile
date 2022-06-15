.PHONY: infra-deploy

infra-deploy:
	ansible-playbook --vault-password-file=infra/vault_password.sh -i infra/hosts infra/playbook.yml
