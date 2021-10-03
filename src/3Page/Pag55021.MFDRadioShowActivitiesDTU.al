page 55021 "MFD Radio Show Activities DTU"
{
    Caption = 'Radio Show Activities';
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MFD Radio Show Cue DTU";

    layout
    {
        area(Content)
        {
            cuegroup(RadioShow)
            {
                Caption = 'Radio Show';
                //CuegroupLayout = Wide;

                field("Radio Show All"; "Radio Show All")
                {
                    ApplicationArea = All;
                    //Caption = 'Radio Show Todos';
                    DrillDownPageId = "MFD Radio Show List DTU";

                }
                field("Playlist Document All"; "Playlist Document All")
                {
                    ApplicationArea = All;
                    //Caption = 'Playlist Documents';
                    DrillDownPageId = "MFD Playlist Document List DTU";
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert();
        end;
    end;


}