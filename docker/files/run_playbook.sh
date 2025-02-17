export ANSIBLE_COLLECTIONS_PATH=./collections
[ ! -f "./local_vars.yml" ] && touch ./local_vars.yml
ansible-playbook \
	-i collections/ansible_collections/bcgov/liquibase_deployer/inventory/localhost \
	--extra-vars @./local_vars.yml \
	collections/ansible_collections/bcgov/liquibase_deployer/playbooks/liquibase.yml
