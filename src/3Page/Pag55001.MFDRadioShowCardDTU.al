page 55001 "MFD Radio Show Card DTU"
{
    Caption = 'Radio Show Card';
    PageType = Card;
    //aparecen en la lupa pero no deberían aparecer comentarlas al terminar, ApplicasionArea y UsageCategory
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MFD Radio Show DTU";

    layout
    {
        area(Content)
        {
            group(General)
            {
                //Editable = false;

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
                field(Frecuency; Frecuency)
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
            }

            group(Requirements)
            {
                field("PSA Planned Required"; "PSA Required")
                {
                    ApplicationArea = All;
                }
                field("PSA Count"; "PSA Count")
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

            group(Stadistics)
            {
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
            }



        }
        area(FactBoxes)
        {

        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }

        }
    }

    var
        myInt: Integer;

    trigger OnInit()
    begin

    end;


}