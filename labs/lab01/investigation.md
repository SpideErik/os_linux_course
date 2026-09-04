# Использованные встроенные средства Windows

1. winver ([скриншот](../../assets/screenshots/01_winver.png))
2. О системе ([скриншот](../../assets/screenshots/02_about.png))
3. Диспетчер задач
    * Скриншоты: [1](../../assets/screenshots/03_cpu.png) [2](../../assets/screenshots/04_memory.png) [3](../../assets/screenshots/05_disk.png) [4](../../assets/screenshots/06_gpu.png) [5](../../assets/screenshots/07_processes.png)
4. Сведения о системе (msinfo32.exe) ([скриншот](../../assets/screenshots/08_msinfo32.png))

# Сверка данных от разных программ
| Характеристика | Способ 1 | Способ 2 | Совпало? / комментарий |
|---|---|---|---|
| Версия Windows | winver | msinfo32 | |
|  | Windows 11 Домашняя Версия 25H2 | Windows 11 Домашняя Версия  10.0.26200 | По разному выводят номер версии |
| Модель процессора | msinfo32 | Диспетчер задач → CPU | |
|  | AMD Ryzen 7 7730U with Radeon Graphics, 2000 МГц, ядер: 8, логических процессоров: 16 | AMD Ryzen 7 7730U with Radeon Graphics | В диспечере задач меньше информации |
| Объём RAM | msinfo32 | Диспетчер задач → Memory | |
|  | 16,0 ГБ | 16,0 ГБ | Одинаково |
