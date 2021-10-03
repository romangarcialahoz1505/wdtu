pageextension 55000 "MFD Item Card DTU" extends "Item Card"
{
    layout
    {
        addafter(Item)
        {
            group(Radio)
            {
                Caption = 'Radio';

                field("MFD Publisher Code"; "MFD Publisher Code")
                {
                    ApplicationArea = All;
                }
                field("MFD ACSAP ID"; "MFD ACSAP ID")
                {
                    ApplicationArea = All;
                }
                field("MFD Duration"; "MFD Duration")
                {
                    ApplicationArea = All;
                }
                field("MFD Data Format"; "MFD Data Format")
                {
                    ApplicationArea = All;
                }
                field("MFD MP3 Location"; "MFD MP3 Location")
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}