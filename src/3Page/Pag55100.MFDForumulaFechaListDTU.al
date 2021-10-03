page 55100 "MFD Forumula Fecha List DTU"
{

    ApplicationArea = All;
    Caption = 'Forumula Fecha List';
    PageType = List;
    SourceTable = "MFD Formula Fechas DTU";
    UsageCategory = Tasks;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                }
                field("Fecha Referencia"; Rec."Fecha Referencia")
                {
                    ApplicationArea = All;
                }
                field("Fórmula Fecha Test"; Rec."Fórmula Fecha Test")
                {
                    ApplicationArea = All;
                }
                field("Fecha Resultado"; Rec."Fecha Resultado")
                {
                    ApplicationArea = All;
                }
                field(Sumando1; Sumando1)
                {
                    ApplicationArea = All;
                }
                field(Sumando2; Sumando2)
                {
                    ApplicationArea = All;
                }
                field(Suma; Suma)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
