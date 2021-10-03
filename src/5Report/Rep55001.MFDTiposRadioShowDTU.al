report 55001 "MFD Tipos Radio Show DTU"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Tipos de Radio Show';
    //RDLCLayout = 'src/5Report/MFD Tipos Radio Show DTU.rdlc';
    WordLayout = 'src/5Report/MFD Tipos Radio Show DTU.docx';
    DefaultLayout = Word;
    EnableHyperlinks = true;
    Permissions = TableData "MFD Radio Show Type DTU" = rimd;
    PreviewMode = PrintLayout;
    //WordMergeDataItem = RadioShowType;


    dataset
    {
        /*dataitem(RadioShowType; "MFD Radio Show Type DTU")
        {
            DataItemTableView = sorting();
            RequestFilterHeading = 'Tipos de Radio Show';
            RequestFilterFields = "Code No.";



            column(TituloDoc; TituloDoc)
            {

            }
            column(Code_No_; "Code No.")
            {
                IncludeCaption = true;
            }
            column(RadioShowType_Description; Description)
            {
                IncludeCaption = true;
            }*/
        dataitem(RadioShow; "MFD Radio Show DTU")
        {
            //DataItemLink = "Radio Show Type" = field("Code No.");
            DataItemTableView = sorting("Radio Show Type");
            PrintOnlyIfDetail = true;

            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(RadioShow_Name2; Name)
            {
                IncludeCaption = true;
            }
            column(Radio_Show_Type; "Radio Show Type")
            {
                IncludeCaption = true;
            }
        }




        //}
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
        TituloDoc: Label 'Tipos de Radio Show';

}


