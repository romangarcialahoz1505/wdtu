page 55012 "MFD Playlist Factbox DTU"
{

    Caption = 'MFD Playlist Factbox DTU';
    PageType = CardPart;
    SourceTable = "MFD Playlist Header DTU";
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("PSA Required"; Rec."PSA Required")
                {
                    ApplicationArea = All;
                }
                field("PSA Count"; Rec."PSA Count")
                {
                    ApplicationArea = All;
                }
                field("Ads Planned Required"; Rec."Ads Planned Required")
                {
                    ApplicationArea = All;
                }
                field("Ads Count"; Rec."Ads Count")
                {
                    ApplicationArea = All;
                }
                field("News Required"; Rec."News Required")
                {
                    ApplicationArea = All;
                }
                field("Weather Required"; Rec."Weather Required")
                {
                    ApplicationArea = All;
                }
                field("Sport Required"; Rec."Sport Required")
                {
                    ApplicationArea = All;
                }
                field(NewsCount; NWSRequired(1))
                {
                    ApplicationArea = All;
                }
                field(WeaterCount; NWSRequired(2))
                {

                }
                field(SportsCount; NWSRequired(3))
                {

                }
            }
        }
    }

}
