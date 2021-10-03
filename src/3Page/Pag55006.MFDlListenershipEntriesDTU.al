page 55006 "MFD Listenership Entries DTU"
{

    ApplicationArea = All;
    Caption = 'MFD Listenership Entries DTU';
    PageType = List;
    SourceTable = "MFD Listernership Entry DTU";
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Ratings Source Entry No."; "Ratings Source Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Date"; "Date")
                {
                    ApplicationArea = All;
                }
                field("Start Time"; "Start Time")
                {
                    ApplicationArea = All;
                }
                field("End Time"; "End Time")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field("Listener Count"; "Listener Count")
                {
                    ApplicationArea = All;
                }
                field("Audience Share"; "Audience Share")
                {
                    ApplicationArea = All;
                }
                field("Age Demografiphic"; "Age Demografiphic")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
