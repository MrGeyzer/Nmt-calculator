unit unit_data;

interface

uses Windows;

const MAX_SUBJECTS = 4;

type 
  TSubject = record
    Name: String;
    Score: Integer; // 100-200
    Coefficient: Real;
  end;
  TArrayOfSubject = array[1..MAX_SUBJECTS] of TSubject;

procedure InputData(var arr: TArrayOfSubject; var n: Integer);

implementation

procedure InputData(var arr: TArrayOfSubject; var n: Integer);
var i: Integer;
begin
  SetConsoleOutputCP(65001);
  n := 4;
  arr[1].Name := 'Українська мова';
  arr[2].Name := 'Математика';
  arr[3].Name := 'Історія України';
  arr[4].Name := 'Предмет на вибір';

  WriteLn('Введіть бали (від 100 до 200) та вагові коефіцієнти для предметів:');
  for i := 1 to n do
  begin
    WriteLn('--- ', arr[i].Name, ' ---');
    repeat
      Write('Бал НМТ (100-200): ');
      ReadLn(arr[i].Score);
      if (arr[i].Score < 100) or (arr[i].Score > 200) then
        WriteLn('Помилка: бал має бути в межах від 100 до 200!');
    until (arr[i].Score >= 100) and (arr[i].Score <= 200);
    
    repeat
      Write('Ваговий коефіцієнт (> 0): ');
      ReadLn(arr[i].Coefficient);
      if arr[i].Coefficient <= 0 then
        WriteLn('Помилка: коефіцієнт має бути більшим за 0!');
    until arr[i].Coefficient > 0;
  end;
end;

end.
