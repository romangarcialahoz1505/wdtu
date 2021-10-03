page 55011 "MFD Playlist Line Subpage DTU"
{

    Caption = 'MFD Playlist Line Subpage DTU';
    PageType = ListPart;
    SourceTable = "MFD Playlist Line DTU";
    DelayedInsert = true;
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; "Radio Show No.")
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
                field(Publisher; Rec.Publisher)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
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
            group(Grupo)
            {
                group(GroupSub1)
                {
                    field("TotalSalesLine.Duration"; TotalSalesLine.Duration)
                    {

                    }
                }
                group(GroupSub2)
                {

                }
            }
        }
    }
    var
        TotalSalesLine: Record "MFD Playlist Line DTU";

}
