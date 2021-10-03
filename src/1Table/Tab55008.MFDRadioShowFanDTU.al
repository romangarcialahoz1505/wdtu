table 55008 "MFD Radio Show Fan DTU"
{
    Caption = 'Radio Show Fan';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = ToBeClassified;
            TableRelation = "MFD Radio Show DTU";
        }
        field(20; Name; Text[50])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(30; "E-Mail"; Text[250])
        {
            Caption = 'E-Mail';
            DataClassification = ToBeClassified;
        }
        field(40; "Last Contacted"; Date)
        {
            Caption = 'Últ. Contacto';
            DataClassification = ToBeClassified;
        }
        field(60; Address; Text[50])
        {
            Caption = 'Dirección';
            DataClassification = ToBeClassified;
        }
        field(70; "Address 2"; Text[50])
        {
            Caption = 'Dirección';
            DataClassification = ToBeClassified;
        }
        field(80; City; Text[50])
        {
            Caption = 'Población';
            DataClassification = ToBeClassified;
        }
        field(85; County; Text[30])
        {
            Caption = 'Provincia';
            DataClassification = ToBeClassified;
        }
        field(90; "Country/Region Code"; Code[10])
        {
            Caption = 'Código País/Región';
            DataClassification = ToBeClassified;
        }
        field(100; "Post Code"; Code[20])
        {
            Caption = 'Código Postal';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Country/Region Code" = CONST('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code" WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                PostCode.ValidatePostCode(City, "Post Code", County, "Country/Region Code", (CurrFieldNo <> 0) AND GUIALLOWED);
            end;

        }
        field(110; Gender; Option)
        {
            OptionMembers = " ",Male,Female;
            OptionCaption = ' ,Masculino,Femenino';
        }
        field(120; "Birth Date"; Date)
        {
            Caption = 'Fecha Nacimiento';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        PostCode: Record "Post Code";

}
