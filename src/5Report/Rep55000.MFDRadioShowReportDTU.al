report 55000 "MFD Radio Show Report DTU"
{
    Caption = 'Radio Show Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'RadioShows.docx';
    DefaultLayout = Word;
    Permissions = tabledata "MFD Radio Show DTU" = rimd;
    PreviewMode = PrintLayout;



    dataset
    {
        dataitem(DataItemName; "MFD Radio Show DTU")
        {

            column(No_; "No.")
            {

            }
            column(Radio_Show_Type; "Radio Show Type")
            {

            }
            column(Name; Name)
            {

            }
            column(Run_Time; "Run Time")
            {

            }
            column(Host_Code; "Host Code")
            {

            }
            column(Host_Name; "Host Name")
            {

            }
            column(Average_Listeners; "Average Listeners")
            {

            }
            column(Audience_Share; "Audience Share")
            {

            }
            column(Advertising_Revenue; "Advertising Revenue")
            {

            }
            column(Royalty_Cost; "Royalty Cost")
            {

            }

        }

    }



    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }
    }


    trigger OnInitReport()
    begin

    end;


}
