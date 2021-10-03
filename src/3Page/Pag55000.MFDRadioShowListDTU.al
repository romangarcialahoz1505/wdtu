page 55000 "MFD Radio Show List DTU"
{
    Caption = 'Radio Show List';
    PageType = List;
    SourceTable = "MFD Radio Show DTU";
    UsageCategory = Lists;
    Editable = true;
    CardPageId = "MFD Radio Show Card DTU";

    layout
    {
        area(Content)
        {
            repeater(General)

            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field("Radio Show Type"; "Radio Show Type")
                {
                    ApplicationArea = All;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;

                }
                field("Run Time"; "Run Time")
                {
                    ApplicationArea = All;

                }
                field("Host Code"; "Host Code")
                {
                    ApplicationArea = All;

                }
                field("Host Name"; "Host Name")
                {
                    ApplicationArea = All;

                }
                field("Average Listeners"; "Average Listeners")
                {
                    ApplicationArea = All;

                }
                field("Audience Share"; "Audience Share")
                {
                    ApplicationArea = All;

                }
                field("Advertising Revenue"; "Advertising Revenue")
                {
                    ApplicationArea = All;

                }
                field("Royalty Cost"; "Royalty Cost")
                {
                    ApplicationArea = All;

                }
                field(Frecuency; Frecuency)
                {
                    ApplicationArea = All;

                }
                field("PSA Planned Required"; "PSA Required")
                {
                    ApplicationArea = All;

                }
                field("Ads Planned Required"; "Ads Planned Required")
                {
                    ApplicationArea = All;

                }
                field("News Required"; "News Required")
                {
                    ApplicationArea = All;

                }
                field("News Duration"; "News Duration")
                {
                    ApplicationArea = All;

                }
                field("Sport Required"; "Sport Required")
                {
                    ApplicationArea = All;

                }
                field("Sport Duration"; "Sport Duration")
                {
                    ApplicationArea = All;

                }
                field("Weather Required"; "Weather Required")
                {
                    ApplicationArea = All;

                }
                field("Weather Duration"; "Weather Duration")
                {
                    ApplicationArea = All;

                }

            }
        }
        area(FactBoxes)
        {
            part("Radio Fans"; "MFD Radio Fans FactBox DTU")
            {
                ApplicationArea = all;
                SubPageLink = "Radio Show No." = field("No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                Image = Cost;

                trigger OnAction()
                var

                begin

                end;



            }
        }
    }

    var
        myInt: Integer;
}