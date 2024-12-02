report 50101 ItemStock
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'ItemStock.rdlc';
    
    dataset
    {
        dataitem(DataItemName; Item)
        {
            column(ColumnName; "No.")
            {
                
            }
            column(ColumnName; "Description")
            {
                
            }
            column(ColumnName; "Status")
            {
                
            }
            column(ColumnName; Quantity)
            {
                
            }
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
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
                action(LayoutName)
                {
                    
                }
            }
        }
    }
    
    
    var
        myInt: Integer;
}