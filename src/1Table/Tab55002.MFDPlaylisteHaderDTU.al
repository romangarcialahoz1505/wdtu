table 55002 "MFD Playlist Header DTU"
{
    Caption = 'Playlist Header';
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

            trigger OnValidate()


            begin

                if RadioShow.Get("Radio Show No.") then begin
                    "PSA Required" := RadioShow."PSA Required";
                    "Ads Planned Required" := RadioShow."Ads Planned Required";
                    "News Required" := RadioShow."News Required";
                    "Sport Required" := RadioShow."News Required";
                    "Weather Required" := RadioShow."Weather Required"
                end else begin
                    "PSA Required" := false;
                    "Ads Planned Required" := false;
                    "News Required" := false;
                    "Sport Required" := false;
                    "Weather Required" := false;
                end;

            end;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Descripción';
            DataClassification = ToBeClassified;
        }
        field(30; "Broadcast Date"; Date)
        {
            Caption = 'Fecha emisión';
            DataClassification = ToBeClassified;
        }
        field(40; "Duration"; Duration)
        {
            Caption = 'Duración';
            DataClassification = ToBeClassified;
        }
        field(50; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin

                if RadioShow.Get("Radio Show No.") then
                    "End Time" := "Start Time" + RadioShow."Run Time";

            end;

        }
        field(60; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
        //rglh copio todos los campos de Radio Show
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
                        ("Radio Show No." = field("Radio Show No."), Type = const(Item), "Data Format" = const(PSA)));
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
                        ("Radio Show No." = field("Radio Show No."), Type = const(Item), "Data Format" = const(Advertisement)));
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
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    var
        RadioShow: Record "MFD Radio Show DTU";

    procedure NWSRequired(Category: Option ,News,Weather,Sports): Integer
    var
        PlaylistLine: Record "MFD Playlist Line DTU";
        RadioShowReq: Record "MFD Radio Show DTU";
        RadioShowTye: Record "MFD Radio Show Type DTU";
        Cnt: Integer;

    begin

        PlaylistLine.SetRange(Code, "No.");
        PlaylistLine.SetRange(Type, PlaylistLine.Type::Show);
        if PlaylistLine.FindSet() then
            repeat
                RadioShowReq.Get(PlaylistLine."No.");
                RadioShowTye.Get(RadioShowReq."Radio Show Type");//dificil de ver es RadioShowReq
                case Category of
                    Category::News:
                        if RadioShowTye."Code No." = 'NEWS' then
                            Cnt += 1;
                    Category::Weather:
                        if RadioShowTye."Code No." = 'WEATHER' then
                            Cnt += 1;
                    Category::Sports:
                        if RadioShowTye."Code No." = 'SPORTS' then
                            Cnt += 1;
                end;

            until PlaylistLine.Next() = 0;


    end;



}
