CMD=ansible-playbook -K yseult.yml

check:
	$(CMD) --check --diff

apply:
	$(CMD)
