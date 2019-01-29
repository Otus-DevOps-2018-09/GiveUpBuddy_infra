# GiveUpBuddy_infra
GiveUpBuddy Infra repository
 
Homework 3
1. Для подключения к someinternalhost в одну строку:
ssh -A -t giveup@34.76.28.166 ssh 10.132.0.3

2. Для подключения командой ssh someinternalhost добавим в ~/.ssh/config:
Host *
	IdentityFile ~/.ssh/giveup
	AddKeysToAgent yes
	ForwardAgent yes
	
Host bastion
	Hostname 34.76.28.166
	User giveup
	
host someinternalhost
	Hostname 10.132.0.3
	User giveup
	ProxyJump bastion
	
bastion_IP = 34.76.28.166
someinternalhost_IP = 10.132.0.3
