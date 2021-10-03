page 55003 "MFD Playlist Document List DTU"
{

    ApplicationArea = All;
    Caption = 'Playlist Document List';
    PageType = List;
    SourceTable = "MFD Playlist Header DTU";
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Broadcast Date"; Rec."Broadcast Date")
                {
                    ApplicationArea = All;
                }
                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = All;
                }
                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                }
                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
