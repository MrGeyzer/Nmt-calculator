program NMTCalculator;

uses unit_data, unit_algo, unit_output, Windows;

var
  subjects: TArrayOfSubject;
  numSubjects: Integer;
  finalScore: Real;

begin
  SetConsoleOutputCP(65001);
  WriteLn('Ласкаво просимо до калькулятора балів НМТ!');
  WriteLn;
  
  InputData(subjects, numSubjects);
  finalScore := CalculateCompetitiveScore(subjects, numSubjects);
  PrintResults(subjects, numSubjects, finalScore);
  
  WriteLn('Натисніть Enter для виходу...');
  ReadLn;
end.
