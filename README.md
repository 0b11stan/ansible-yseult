# ansible-yseult


Personnal ansible configuration for my arch linux computer.
Using [ansible-aur-git](https://github.com/kewlfft/ansible-aur) for aur packages.

## Installation

```
$ ansible-playbook -e "DISTRIB=<distribution_name>" -K yseult.yml
```
Available distributions :
- debian
- archlinux

## Post-install

- Changer le chemin par defaut d'installation des machines virtualbox à /var/virtualbox-vms

## TODO :

- [ ] Gérer l'install système (LVM, ...)
- [ ] Copier les templates des machines virtualbox dans /var/virtualbox
- [ ] Configurer Virtualbox par defaut avec fichiers de config
