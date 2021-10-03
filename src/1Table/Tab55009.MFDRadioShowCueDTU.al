table 55009 "MFD Radio Show Cue DTU"
{
    Caption = 'Radio Show Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Radio Show All"; Integer)
        {

            Caption = 'Radio Show Todos';
            FieldClass = FlowField;
            CalcFormula = count("MFD Radio Show DTU");
        }
        field(20; "Playlist Document All"; Integer)
        {
            Caption = 'Playlist Todos';
            FieldClass = FlowField;
            CalcFormula = count("MFD Playlist Header DTU");
        }

    }
    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;



}