unit unit_output;

interface

uses unit_data, Windows;

procedure PrintResults(arr: TArrayOfSubject; n: Integer; finalScore: Real);

implementation

procedure PrintResults(arr: TArrayOfSubject; n: Integer; finalScore: Real);
var
  i: Integer;
begin
  SetConsoleOutputCP(65001);
  WriteLn;
  WriteLn('----------------------------------------------------');
  WriteLn('                 РЕЗУЛЬТАТИ НМТ                     ');
  WriteLn('----------------------------------------------------');
  for i := 1 to n do
  begin
    WriteLn(arr[i].Name, ' - Бал: ', arr[i].Score, ', Коефіцієнт: ', arr[i].Coefficient:0:2);
  end;
  WriteLn('----------------------------------------------------');
  WriteLn('КОНКУРСНИЙ БАЛ: ', finalScore:0:3);
  WriteLn('----------------------------------------------------');
end;

end.
