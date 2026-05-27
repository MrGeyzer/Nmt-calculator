# Калькулятор балів НМТ (Команда 7)

Програма для розрахунку конкурсного бала вступника на основі результатів Національного мультипредметного тесту (НМТ) та вагових коефіцієнтів спеціальності.

## Структура даних
Використовується масив записів `TSubject`, що містить назву предмета, отриманий бал (100-200) та ваговий коефіцієнт.

## Модулі та їх контракти
- `unit_data.pas` – введення даних та їх зберігання.
  - `procedure InputData(var arr: TArrayOfSubject; var n: Integer);`
- `unit_algo.pas` – обчислення конкурсного бала.
  - `function CalculateCompetitiveScore(arr: TArrayOfSubject; n: Integer): Real;`
- `unit_output.pas` – форматований вивід результатів.
  - `procedure PrintResults(arr: TArrayOfSubject; n: Integer; finalScore: Real);`

![Архітектура](nmt_architecture.svg)

## Розподіл ролей
- **Тімлід**: unit_algo.pas (алгоритм обчислення)
- **Розробник 1**: unit_data.pas (введення даних)
- **Розробник 2**: main.pas (головна програма та інтеграція)
- **Розробник 3**: unit_output.pas (вивід результату)
- **Документатор**: README.md, diagram.drawio
