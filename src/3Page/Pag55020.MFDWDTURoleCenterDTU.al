page 55020 "MFD WDTU Role Center DTU"
{
    PageType = RoleCenter;
    Caption = 'Contratos Role Center';

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; "MFD Radio Show Activities DTU")
                {
                    ApplicationArea = All;
                    Caption = 'Radio Show';
                }

            }
        }
    }


    actions
    {
        area(Sections)
        {
            group(Invoices)
            {
                Caption = 'Facturas';
                Image = RegisteredDocs;
                action(SalesInvoices)
                {
                    Caption = 'Facturas Venta';
                    RunObject = Page "Sales Invoice List";
                    ApplicationArea = All;
                }

                action(PostedSalesInvoices)
                {
                    Caption = 'Facturas Ventas Registradas';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }
                /*group(ContractConfiguration)
                todas las pages de este menú deben ser del tipo list sino tenemos un error
                {
                    Caption = 'Contract Configuration';
                    ToolTip = 'Contract Configuracion';
                    action(FeeContractSetup2)
                    {
                        Caption = 'Fee Contract Setup2';
                        Image = Setup;
                        RunObject = Page "ALX Hires Setup HFS";
                        RunPageMode = Edit;
                    }
                }*/

            }
        }

        area(Embedding)
        {

            action(RadioShowList)
            {
                Caption = 'Radio Show List';
                RunObject = Page "MFD Radio Show List DTU";
                ApplicationArea = All;
            }
            // action(FeeCancelList)
            // {
            //     Caption = 'Lista Canceladicones';
            //     RunObject = Page "ALX Cancel Fee List HFS";
            //     ApplicationArea = All;
            // }
            // action(ContractControlEntries)
            // {
            //     Caption = 'Control Entradas';
            //     RunObject = Page "ALX Fee Control Entries HSF";
            //     ApplicationArea = All;
            // }
            // action(FeeItems)
            // {
            //     Caption = 'Productos Contratos';
            //     RunObject = Page "Item List";
            //     RunPageLink = "ALX Hire Fee HFS" = const(true);
            //     ApplicationArea = All;
            // }
            action(Customers)
            {
                Caption = 'Clientes';
                RunObject = Page "Customer List";
                ApplicationArea = All;
            }
            action(SalesInvoicesDirect)
            {
                Caption = 'Facturas Venta';
                RunObject = Page "Sales Invoice List";
                ApplicationArea = All;
            }
            /*action(CalenderProof)
            {
                Caption = 'Calender Proof';
                RunObject = Page "ALX Calender List HFS";
                ApplicationArea = All;
                RunPageMode = Edit;
            }*/
            action(SalesQuoteDirect)
            {
                Caption = 'Ofertas Venta';
                RunObject = Page "Sales Quotes";
                ApplicationArea = All;
            }
            action(JobsDirect)
            {
                Caption = 'Proyectos';
                RunObject = Page "Job List";
                ApplicationArea = All;
            }
            action(PurchaseDirect)
            {
                Caption = 'Facturas Compra';
                RunObject = Page "Purchase Invoices";
                ApplicationArea = All;
            }

        }

        area(Processing)
        {
            // action(FeeContractSetup)
            // {
            //     Caption = 'Configuración Contratos';
            //     Image = Setup;
            //     RunObject = Page "ALX Hires Setup HFS";
            //     RunPageMode = Create;
            // }

        }

        area(Creation)
        {
            action(RadioShowCard)
            {
                Caption = 'Radio Show Card';
                Image = Setup;
                RunObject = Page "MFD Radio Show Card DTU";
                RunPageMode = Create;
            }
            // action(CancelContract)
            // {
            //     Caption = 'Cancelación Contratos';
            //     Image = Setup;
            //     RunObject = Page "ALX Fee Cancel Document HFS";
            //     RunPageMode = Create;
            // }
        }

        /*area(Reporting)
        {
            action(SalesInvoicesReport)
            {
                Caption = 'Sales Invoices Report';
                Image = "Report";
                RunObject = Report "Sales - Invoice";
            }
        }*/
    }

}




