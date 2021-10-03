codeunit 55000 "MFD Date Formula Mgt DTU"
{


    procedure CalculateNewDate(DateFormulaTest: DateFormula; ReferenceForDateCalc: Date): Date
    begin



        exit(CalcDate(DateFormulaTest, ReferenceForDateCalc));



    end;

    procedure SumTotal(Sum1: Decimal; Sum2: Decimal): Decimal
    begin
        exit(Sum1 + Sum2);
    end;
}