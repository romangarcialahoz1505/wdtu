report 55002 "MFD Fan Promotion List DTU"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Fan Promotion List';
    WordLayout = 'src/5Report/MFD Fan Promotion List DTU.docx';
    DefaultLayout = Word;
    EnableHyperlinks = true;
    Permissions = TableData "MFD Radio Show Type DTU" = rimd;
    PreviewMode = PrintLayout;


    dataset
    {
        dataitem(DataItemName; "MFD Radio Show Fan DTU")
        {
            column(TitleReport; TitleReport)
            {

            }
            column(Name; Name)
            {

            }
            column(Address; Address)
            {

            }
            column(City; City)
            {

            }
            column(Post_Code; "Post Code")
            {

            }
            column(Country_Region_Code; "Country/Region Code")
            {

            }
            column(CountryName; CountryName)
            {

            }


            trigger OnAfterGetRecord()
            begin
                //Busca el nombre del país
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;

                //Calcula la edad del fan
                FanAge := Round(((WorkDate() - "Birth Date") / 365), 1.0, '<');

                //Selecciona el fan
                SelectThisFan := false;
                if Age12orLess and (FanAge <= 12) then
                    SelectThisFan := true;
                if Age13to18 and (FanAge > 12) and (FanAge <= 19) then
                    SelectThisFan := true;
                if Age19to34 and (FanAge > 18) and (FanAge <= 35) then
                    SelectThisFan := true;
                if Age35to50 and (FanAge > 34) and (FanAge <= 51) then
                    SelectThisFan := true;
                if AgeOver50 and (FanAge > 50) then
                    SelectThisFan := true;
                if Male and (Gender = Gender::Male) then
                    SelectThisFan := true;
                if Female and (Gender = Gender::Female) then
                    SelectThisFan := true;
                if NonMaleFemale and (Gender = Gender::" ") then
                    SelectThisFan := true;

                //Saltar report si ningún Fan es seleccionado
                if SelectThisFan <> true then
                    CurrReport.Skip();


            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(Age12orLess; Age12orLess)
                    {
                        ApplicationArea = All;
                        Caption = 'Edad 12 o menos';
                    }
                    field(Age13to18; Age13to18)
                    {
                        ApplicationArea = All;
                        Caption = 'Edad de 13 a 18';
                    }
                    field(Age19to34; Age19to34)
                    {
                        ApplicationArea = All;
                        Caption = 'Edad de 19 a 34';
                    }
                    field(Age35to50; Age35to50)
                    {
                        ApplicationArea = All;
                        Caption = 'Edad de 35 a 50';
                    }
                    field(AgeOver50; AgeOver50)
                    {
                        ApplicationArea = All;
                        Caption = 'Edad más de 50';
                    }
                    field(Male; Male)
                    {
                        ApplicationArea = All;
                        Caption = 'Masculino';
                    }
                    field(Female; Female)
                    {
                        ApplicationArea = All;
                        Caption = 'Femenino';
                    }


                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        TitleReport: Label 'Fan Promotion List';

        CountryRegion: Record "Country/Region";
        CountryName: Text;

        Age12orLess: Boolean;
        Age13to18: Boolean;
        Age19to34: Boolean;
        Age35to50: Boolean;
        AgeOver50: Boolean;
        Male: Boolean;
        Female: Boolean;
        NonMaleFemale: Boolean;
        SelectThisFan: Boolean;
        FanAge: Integer;


    trigger OnInitReport()
    begin

    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin

    end;
}