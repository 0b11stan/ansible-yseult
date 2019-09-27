# ansible-yseult

Personnal ansible configuration for my arch linux computer.
Using [ansible-aur-git](https://github.com/kewlfft/ansible-aur) for aur packages.

## Installation

Follow [archlinux official installation guide](https://wiki.archlinux.org/index.php/Installation_guide).

### Create your partitions

For BIOS (fdis output):
```
Device     Start      End   Sectors  Size Type
/dev/sda1     34     2047      2014 1007K BIOS boot
/dev/sda2   2048   718847    716800  350M EFI System
/dev/sda3 718848 10000000 991544435  500G Linux LVM
```

Logical Volumes Management:
* vg-main/root
* vg-main/home
* vg-main/var
* vg-main/swap

### Play the recipe

```
$ ansible-playbook -K yseult.yml
```
Available distributions :
- archlinux

## Post-install

- Changer le chemin par defaut d'installation des machines virtualbox à /var/virtualbox-vms

## TODO :

- [ ] Gérer l'install système (LVM, ...)
- [ ] Copier les templates des machines virtualbox dans /var/virtualbox
- [ ] Configurer Virtualbox par defaut avec fichiers de config
