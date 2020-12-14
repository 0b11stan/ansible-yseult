# ARCHIVED

This is old and I do not use ansible anymore to update my configuration but
prefere a simple set of scripts you can find in my dotfiles repository. However
I keep it because there are some tricks and ansible hacks that may be useful for
targeting archlinux with ansible.

# ansible-yseult

Personnal ansible configuration for my arch linux computer.
Using [ansible-aur-git](https://github.com/kewlfft/ansible-aur) for aur packages.

## Installation

Follow [archlinux official installation guide](https://wiki.archlinux.org/index.php/Installation_guide).

**Warning :** install networkmanager before reboot

### Create your partitions

| Device    | Size | Type       |
|-----------|------|------------|
| /dev/sda1 | 350M | EFI System |
| /dev/sda2 | 500G | Linux LVM  |

Logical Volumes:
* vg-main/root
* vg-main/home
* vg-main/var
* vg-main/swap

### Play the recipe

Install required packages:
* git
* python
* ansible
* sshpass

Run the playbook:
```
$ cd /tmp
$ git clone https://github.com/TristanPinaudeau/ansible-yseult.git
$ cd ansible-yseult
$ ansible-playbook -K yseult.yml
```

## Post-install

* Ajouter les clef GPG et SSH au système de fichier
* Changer mdp tristan
* Changer mdp root
* Configurer firefox
    - extension: vixen (+config)
    - extension: duckduckgo
    - theme: dark
* Synchroniser Nextcloud sur /home/tristan/Cloud
* Synchroniser Thunderbird
* Changer le chemin par defaut d'installation des machines virtualbox à /var/virtualbox-vms

## TODO :

- [ ] Ajouter le contenu de /etc/issue
