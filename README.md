# GiveUpBuddy_infra
GiveUpBuddy Infra repository

#Homework Ansible-2
Созданы плейбуки для сервера баз данных, сервера приложений и деплоя приложения. Обновлены шаблоны packer для образов reddit-app-base и reddit-db-base
Задание со звездой: настроено dynamic inventory (plugin gcp_compute). Для использования необходимо изменить inventory file в настройках ansible на <filename>.gcp.yml

#Homework 6
Создан файл конфигурации для Terraform

#Homework 5
С помощью Packer созданы шаблоны для развертывания инстансов в GCP:
- Fry (с предустановленным окруженим для запуска Reddit application)
- Bake (полностью готовый к работе инстанс с рабочим приложением)
Создан shell-скрипт для создания ВМ из bake-шаблона

#Homework 4
testapp_IP = 35.233.43.91
testapp_port = 9292

Для запуска настройки окружения при создании машины написан startup-scrip.sh
Команда для создания инстанса будет такая:

gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=startup-script.sh

Запусается из папки со скриптом или указывается полный путь до startup-script.sh

#Homework 3
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

