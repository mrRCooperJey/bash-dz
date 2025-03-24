#!/bin/bash

# Проверка наличия аргументов
if [ "$#" -lt 1 ]; then
  echo "Использование: $0 каталог1 [каталог2 ...]"
  exit 1
fi

# Массив с каталогами для резервного копирования
backup_dirs=("$@")

# Переменные для настройки резервного копирования
dest_dir="/path/to/backup"  # Укажите каталог назначения на сервере
dest_server="user@backupserver"  # Укажите сервер назначения
backup_time=$(date +"%Y%m%d%H%M%S")  # Текущая дата и время

# Цикл по каталогам для создания резервных копий
for dir in "${backup_dirs[@]}"; do
  # Имя временного архива
  archive="/tmp/${dir##*/}_$backup_time.tar.gz"

  # Создание сжатого архива
  tar -czf "$archive" -C "$(dirname "$dir")" "$(basename "$dir")"

  # Отправка архива на сервер хранения
  scp "$archive" "$dest_server:$dest_dir"

  # Удаление временного архива
  rm "$archive"

  echo "Резервная копия $dir завершена и отправлена на $dest_server:$dest_dir"
done

