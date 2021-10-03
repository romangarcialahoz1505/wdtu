page 55008 "MFD Radio Fans FactBox DTU"
{

    Caption = 'Radio Show Fans FactBox';
    PageType = ListPart;
    SourceTable = "MFD Radio Show Fan DTU";


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field("E-Mail"; "E-Mail")
                {
                    ApplicationArea = All;
                }
                field("Last Contacted"; "Last Contacted")
                {
                    ApplicationArea = All;
                }


            }
        }
    }

}
