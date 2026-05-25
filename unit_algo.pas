unit unit_algo;

interface

uses unit_data, Windows;

function CalculateCompetitiveScore(arr: TArrayOfSubject; n: Integer): Real;

implementation

function CalculateCompetitiveScore(arr: TArrayOfSubject; n: Integer): Real;
var
  i: Integer;
  sumScoreCoef, sumCoef: Real;
begin
  SetConsoleOutputCP(65001);
  sumScoreCoef := 0.0;
  sumCoef := 0.0;
  for i := 1 to n do
  begin
    sumScoreCoef := sumScoreCoef + (arr[i].Score * arr[i].Coefficient);
    sumCoef := sumCoef + arr[i].Coefficient;
  end;
  
  if sumCoef > 0 then
    CalculateCompetitiveScore := sumScoreCoef / sumCoef
  else
    CalculateCompetitiveScore := 0.0;
end;

end.
