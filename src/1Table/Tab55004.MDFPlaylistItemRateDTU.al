table 55004 "MDF Playlist Item Rate DTU"
{
    Caption = 'Tab55004.MDFPlaylistItemRateDTU.al';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            DataClassification = ToBeClassified;
            OptionMembers = Vendor,Customer;
            OptionCaption = 'Proveedor,Cliente';
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = ToBeClassified;
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
            else
            if ("Source Type" = const(Customer)) Customer."No.";
        }
        field(30; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = ToBeClassified;
        }
        field(40; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(50; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
        field(60; "Rate Amount"; Decimal)
        {
            Caption = 'Rate Amount';
            DataClassification = ToBeClassified;
        }
        field(70; "Publisher Code"; Code[20])
        {
            Caption = 'Publisher Code';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Source Type")
        {
            Clustered = true;
        }
    }

}
