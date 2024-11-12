page 50103 RestMaterial
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = RestMaterial;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(OrderNo; rec.OrderNo)
                {
                    ApplicationArea = All;
                }
                field(ItemNo; rec.ItemNo)
                {
                    ApplicationArea = All;
                    caption = 'Item No.';
                    
                }
                field(ItemDescription; rec.ItemDescription)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}