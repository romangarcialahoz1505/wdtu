table 55100 "MFD Formula Fechas DTU"
{
    Caption = 'Formula Fechas';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(15; Nombre; Text[50])
        {

        }

        field(10; "Fecha Referencia"; Date)
        {
            Caption = 'Fecha Referencia';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin

                //CalculateNewDate();

                if "Fecha Referencia" <> 0D then begin
                    "Fecha Resultado" := DateFormulaMgt.CalculateNewDate("Fórmula Fecha Test", "Fecha Referencia");
                end;

            end;
        }
        field(20; "Fórmula Fecha Test"; DateFormula)
        {
            Caption = 'Fórmula Fecha Test';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin

                //CalculateNewDate();
                "Fecha Resultado" := DateFormulaMgt.CalculateNewDate("Fórmula Fecha Test", "Fecha Referencia");

            end;
        }
        field(30; "Fecha Resultado"; Date)
        {
            Caption = 'Fecha Resultado';
            DataClassification = ToBeClassified;
        }

        field(40; Sumando1; Decimal)
        {
            Caption = 'Sumando1';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                Suma := DateFormulaMgt.SumTotal(Sumando1, Sumando2);

            end;
        }
        field(50; Sumando2; Decimal)
        {
            Caption = 'Sumando2';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin


                Suma := DateFormulaMgt.SumTotal(Sumando1, Sumando2);
                Message('El importe de la suma es: %1', Suma);

            end;

        }
        field(60; Suma; Decimal)
        {
            Caption = 'Suma';
            DataClassification = ToBeClassified;
            Editable = false;
        }


    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        DateFormulaMgt: Codeunit "MFD Date Formula Mgt DTU";


    local procedure CalculateNewDate()
    var


    begin
        "Fecha Resultado" := CalcDate("Fórmula Fecha Test", "Fecha Referencia");
    end;

}
