report 50100 ProductionInstruction
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'ProductionPaper.rdlc';    
    dataset
    {
        dataitem(ProductionData; "Production Order")
        {
            column(ProductionOrderNo; "No.")
            {
                
            }
            column(Description; "Description")
            {
                
            }
            column(ProductionOrderStatus; "Status")
            {
                
            }
            column(Quantity;Quantity)
            {
                
            }
 
            column(DueDate; "Due Date")
            {
                
            }
            dataitem(ProductionComponents; "Prod. Order Component")
            {
                
                DataItemLink = "Prod. Order No." = field("No.");
                column(ProdOrderNo; "Prod. Order No.")
                {
                }
                column(ComponentNo; "Item No.")
                {
                }
                column(ComponentDescription; "Description")
                {      
                }
                column(ComponentQuantity; "Expected Quantity")
                {                   
                }
                column(StatingPlace; "Location Code")
                {                    
                }


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