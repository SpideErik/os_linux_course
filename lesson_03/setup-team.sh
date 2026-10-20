#!/bin/bash
# Создание групп
sudo groupadd tg-dev
sudo groupadd tg-ops

# Создание пользователей
sudo useradd admin -m -s /bin/bash
sudo useradd dev -m -s /bin/bash
sudo useradd ops -m -s /bin/bash
sudo useradd guest -m -s /bin/bash

# Назначение групп
sudo usermod -aG tg-dev,tg-ops,sudo admin
sudo usermod -aG tg-dev dev
sudo usermod -aG tg-ops ops

# Создание и настройка каталогов
sudo mkdir -p /srv/tg-bot/src /srv/tg-bot/logs
sudo chgrp tg-dev /srv/tg-bot/src
sudo chgrp tg-ops /srv/tg-bot/logs
sudo chmod 2770 /srv/tg-bot/src /srv/tg-bot/logs
