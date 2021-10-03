page 55005 "MFD Radio Show Entries DTU"
{

    ApplicationArea = All;
    Caption = 'Radio Show Entries';
    PageType = List;
    SourceTable = "MFD Radio Show Entry DTU";
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Data Format"; Rec."Data Format")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                }
                field("Time"; Rec."Time")
                {
                    ApplicationArea = All;
                }
                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = All;
                }
                field("Fee Amount"; Rec."Fee Amount")
                {
                    ApplicationArea = All;
                }
                field("ACSAP ID"; Rec."ACSAP ID")
                {
                    ApplicationArea = All;
                }
                field("Publisher Code"; Rec."Publisher Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
