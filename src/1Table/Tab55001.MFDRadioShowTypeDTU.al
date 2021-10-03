table 55001 "MFD Radio Show Type DTU"
{
    Caption = 'Radio Show Type';
    DataClassification = ToBeClassified;
    LookupPageId = "MFD Radio Show Type DTU";
    DrillDownPageId = "MFD Radio Show Type DTU";


    fields
    {
        field(1; "Code No."; Code[20])
        {
            Caption = 'Code No.';
            DataClassification = ToBeClassified;

        }
        field(10; Description; Text[50])
        {
            Caption = 'Descripción';
            DataClassification = ToBeClassified;

        }
        field(20; Subtype; Option)
        {
            OptionMembers = News,Weather,Sports;
            OptionCaption = 'Noticias,El Tiempo,Deportes';
        }
    }

    keys
    {
        key(Pk; "Code No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}