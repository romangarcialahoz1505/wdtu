page 55002 "MFD Radio Show Type DTU"
{
    Caption = 'Radio Show Type';
    PageType = List;
    SourceTable = "MFD Radio Show Type DTU";
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Code No."; "Code No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}