table 55003 "MFD Playlist Line DTU"
{
    Caption = 'Paly List Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;

        }
        field(5; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = ToBeClassified;

        }
        field(10; "Type"; Option)
        {
            Caption = 'Tipo';
            DataClassification = ToBeClassified;
            OptionMembers = " ",Resource,Show,Item;
            OptionCaption = ' ,Recursos,Show,Producto';
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "MFD Radio Show DTU"."No."
            else
            if (Type = const(Item)) Item."No.";

            trigger OnValidate()
            begin

                case Type of
                    Type::Resource:
                        begin
                            Resource.Get("No.");
                            Description := Resource.Name;
                        end;
                    Type::Item:
                        begin
                            Item.Get("No.");
                            Description := Item.Description;
                            "Data Format" := Item."MFD Data Format";
                            Duration := Item."MFD Duration";
                        end;
                    Type::Show:
                        begin
                            RadioShow.Get("No.");
                            Description := RadioShow.Name;
                        end;

                end;

            end;
        }
        field(30; "Data Format"; Option)
        {
            Caption = 'Formato Audio';
            DataClassification = ToBeClassified;
            OptionMembers = " ",Viny,CD,MP3,PSA,Advertisement;
            OptionCaption = ' ,Vinilo,CD,MP3,Servicio Público,Anuncio';
        }
        field(40; Publisher; Code[20])
        {
            Caption = 'Publisher';
            DataClassification = ToBeClassified;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Descrición';
            DataClassification = ToBeClassified;
        }
        field(60; "Duration"; Duration)
        {
            Caption = 'Duración';
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(70; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if Duration <> 0 then "End Time" := "Start Time" + Duration;




            end;
        }
        field(80; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
        //field(10)
    }

    keys
    {
        key(PK; "Code", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        PaylistHeader: Record "MFD Playlist Header DTU";
        Item: Record Item;
        Resource: Record Resource;
        RadioShow: Record "MFD Radio Show DTU";

}
