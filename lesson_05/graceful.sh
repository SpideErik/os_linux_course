#!/bin/bash

# Путь к временному файлу с PID текущего процесса
TMPFILE="/tmp/graceful-$$.tmp"

# Функция очистки, вызываемая при поступлении сигнала TERM
cleanup() {
    echo "Получен сигнал TERM. Удаление $TMPFILE..."
    rm -f "$TMPFILE"
    exit 0
}

# Регистрация обработчика сигнала TERM
trap cleanup TERM

# Создание временного файла при запуске
touch "$TMPFILE"
echo "Скрипт запущен с PID $$"
echo "Создан временный файл: $TMPFILE"

# Бесконечный рабочий цикл
while true; do
    sleep 1
done

