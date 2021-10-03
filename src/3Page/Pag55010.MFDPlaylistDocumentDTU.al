page 55010 "MFD Playlist Document DTU"
{

    Caption = 'Playlist Document';
    PageType = Document;
    SourceTable = "MFD Playlist Header DTU";
    UsageCategory = Tasks;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; Rec."Radio Show No.")
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }


                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                }
                field("End Time"; "End Time")
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

                field("Tiempo final"; Rec."End Time")
                {
                    ApplicationArea = All;
                }
                field("PSA Count"; "PSA Count")
                {
                    ApplicationArea = All;
                }
                field("Ads Count"; "Ads Count")
                {
                    ApplicationArea = All;
                }

            }
            part(LineasPlaylist; "MFD Playlist Line Subpage DTU")
            {
                ApplicationArea = All;
                Enabled = true;
                SubPageLink = Code = field("No.");

            }

        }
        area(FactBoxes)
        {
            part(FactBoxPlaylist; "MFD Playlist Factbox DTU")
            {
                SubPageLink = "No." = field("No.");
            }
        }
    }

}