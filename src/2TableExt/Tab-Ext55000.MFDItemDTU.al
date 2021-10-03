tableextension 55000 "MFD Item DTU" extends Item
{
    fields
    {
        field(55000; "MFD Publisher Code"; Code[20])
        {
            Caption = 'Anunciante Código';
            DataClassification = ToBeClassified;
        }

        field(55001; "MFD ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = ToBeClassified;
        }
        field(55002; "MFD Duration"; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(55003; "MFD Data Format"; Option)
        {
            Caption = 'Formato audio';
            DataClassification = ToBeClassified;
            OptionMembers = ,Viny,CD,MP3,PSA,Advertisement;
            OptionCaption = ' ,Vinilo,CD,MP3,PSA,Anuncio';

        }
        field(55004; "MFD MP3 Location"; Text[250])
        {
            Caption = 'Almacén MP3';
            DataClassification = ToBeClassified;
        }


    }

    var
        myInt: Integer;
}