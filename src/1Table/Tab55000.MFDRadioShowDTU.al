table 55000 "MFD Radio Show DTU"
{
    Caption = 'Radio Show';
    DataClassification = ToBeClassified;
    //DrillDownPageId = "MFD Radio Show Card DTU";


    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';

            DataClassification = ToBeClassified;
        }
        field(10; "Radio Show Type"; Code[20])
        {
            Caption = 'Radio Show Type';
            DataClassification = ToBeClassified;
            TableRelation = "MFD Radio Show Type DTU";

        }
        field(20; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if Name = 'Roman' then begin
                    Message(MsgRomanName, "No.");
                end;

            end;
        }

        field(40; "Run Time"; Duration)
        {
            Caption = 'Run Time';
            DataClassification = ToBeClassified;
        }
        field(50; "Host Code"; Code[20])
        {
            Caption = 'Host Code';
            DataClassification = ToBeClassified;
        }
        field(60; "Host Name"; Text[50])
        {
            Caption = 'Host Name';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if "Host Name" = 'Roman' then
                    Message(MsgRomanName);

            end;
        }
        field(100; "Average Listeners"; Decimal)
        {
            Caption = 'Average Listeners';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("MFD Listernership Entry DTU"."Listener Count"
                        where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(110; "Audience Share"; Decimal)
        {
            Caption = 'Audience Share';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("MFD Listernership Entry DTU"."Audience Share"
                        where("Radio Show No." = field("No."), Date = field("Date Filter")));


        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Caption = 'Advertising Revenue';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("MFD Radio Show Entry DTU"."Fee Amount"
                        where("Radio Show No." = field("No."), "Data Format" = filter(Advertisement)));

        }
        field(130; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("MFD Radio Show Entry DTU"."Fee Amount"
                        where("Radio Show No." = field("No."), "Data Format" = filter(Viny | CD | MP3)));


        }
        field(1000; Frecuency; Option)
        {
            Caption = 'Frecuency';
            DataClassification = ToBeClassified;
            OptionMembers = Hourly,Daily,Weekly,Monthly;
            OptionCaption = 'Hora,Diario,Semanal,Mensual';
        }
        field(1010; "PSA Required"; Boolean)
        {
            Caption = 'PSA Planned Required';
            DataClassification = ToBeClassified;
        }
        field(1011; "PSA Count"; Integer)
        {
            Caption = 'PSA Count';

            FieldClass = FlowField;
            CalcFormula = count("MFD Playlist Line DTU" where
                        ("Radio Show No." = field("No."), Type = const(Item), "Data Format" = const(PSA)));
            //rglh No. referencia al Item con No. refencia a Radio Show lo cambio por Radio Show No.
            Editable = false;

        }
        field(1020; "Ads Planned Required"; Boolean)
        {
            Caption = 'Ads Planned Required';
            DataClassification = ToBeClassified;
        }
        field(1021; "Ads Count"; Integer)
        {
            Caption = 'Ads Count';
            FieldClass = FlowField;
            CalcFormula = count("MFD Playlist Line DTU" where
                        ("Radio Show No." = field("No."), Type = const(Item), "Data Format" = const(Advertisement)));
        }
        field(1030; "News Required"; Boolean)
        {
            Caption = 'News Required';
            DataClassification = ToBeClassified;
        }
        field(1040; "News Duration"; Duration)
        {
            Caption = 'News Duration';
            DataClassification = ToBeClassified;
        }
        field(1050; "Sport Required"; Boolean)
        {
            Caption = 'Sport Required';
            DataClassification = ToBeClassified;
        }
        field(1060; "Sport Duration"; Duration)
        {
            Caption = 'Sport Duration';
            DataClassification = ToBeClassified;
        }
        field(1070; "Weather Required"; Boolean)
        {
            Caption = 'Weather Required';
            DataClassification = ToBeClassified;
        }
        field(1080; "Weather Duration"; Duration)
        {
            Caption = 'Weather Duration';
            DataClassification = ToBeClassified;
        }
        field(1090; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }

    }

    keys
    {
        key(Pk; "No.")
        {
            Clustered = true;
        }
        key(RST; "Radio Show Type")
        {

        }
    }

    fieldgroups
    {
        fieldgroup(Dropdown; "No.", Name)
        {

        }
    }

    var
        myInt: Integer;
        MsgRomanName: Label 'Román es con acento, en el registro: %1';

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