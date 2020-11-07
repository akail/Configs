* ssh configuration and opening
* Setting up x2g0 or other vnc services
Installing tmux and nvim and anaconda as well

* [ ] VPNs
  * [X] SLU
  * [X] Biogen
  * [ ] Home
* [ ] Check for zsh integration and don't install zsh stuff if not there.

Order:
* pacman
* misc
* applications
* tmux
* vim
* shells
* anaconda
* autofs

# Ideas
* templates many things to split between work and home.  For instance, isolate work stuff in vm's


# Snippets

Add a string to the vars file
  
  ansible-vault encrypt-string --vault-password-file vault-password.txt 'stringthing' --name <stringname> >> vault/vars.yaml
  
view vars file

  ansible-vault edit --vault-password-file vault-password.txt vault/vars.yaml
  
Encrypt a file

  ansible-vault encrypt --vault-password-file vault-password.txt <filename>

