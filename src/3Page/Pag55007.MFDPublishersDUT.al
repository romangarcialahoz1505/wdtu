page 55007 "MFD Publishers DTU"
{

    ApplicationArea = All;
    Caption = 'Publishers';
    PageType = List;
    SourceTable = "Tab55007.MFDPublisherDTU.al";
    UsageCategory = Tasks;

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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
