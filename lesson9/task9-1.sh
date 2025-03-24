#!/bin/bash

# Файл с именами серверов
SERVERS_FILE="servers.txt"

# Проверка наличия файла с серверами
if [[ ! -f $SERVERS_FILE ]]; then
  echo "Файл $SERVERS_FILE не найден!"
  exit 1
fi

# Запрос имени пользователя и UID
read -p "Введите имя пользователя: " USERNAME
read -p "Введите UID пользователя: " UID

# Чтение файла с серверами
while IFS= read -r SERVER; do
  # Пропуск пустых строк и комментариев
  if [[ -z $SERVER || $SERVER == \#* ]]; then
    continue
  fi

  echo "Подключение к серверу: $SERVER"

  # Подключение к серверу и создание пользователя
  ssh "$SERVER" << EOF
    if id "$USERNAME" &>/dev/null; then
      echo "Пользователь $USERNAME уже существует на $SERVER"
    else
      sudo useradd -m -u $UID $USERNAME
      echo "Пользователь $USERNAME создан на $SERVER"
    fi
EOF

done < "$SERVERS_FILE"

