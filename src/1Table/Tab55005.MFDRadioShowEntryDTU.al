table 55005 "MFD Radio Show Entry DTU"
{
    Caption = 'Radio Show Entry DTU';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = ToBeClassified;
        }
        field(20; "Type"; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            OptionMembers = ,Resource,Show,Item;
            OptionCaption = ' ,Recursos,Show,Producto';
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(40; "Data Format"; Option)
        {
            Caption = 'Data Format';
            DataClassification = ToBeClassified;
            OptionMembers = ,Viny,CD,MP3,PSA,Advertisement;
            OptionCaption = ' ,Vinilo,CD,MP3,Servicio Público,Anuncio';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(60; "Date"; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(70; "Time"; Time)
        {
            Caption = 'Time';
            DataClassification = ToBeClassified;
        }
        field(80; "Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(90; "Fee Amount"; Decimal)
        {
            Caption = 'Fee Amount';
            DataClassification = ToBeClassified;
        }
        field(100; "ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = ToBeClassified;
        }
        field(120; "Publisher Code"; Code[20])
        {
            Caption = 'Publisher Code';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

}
