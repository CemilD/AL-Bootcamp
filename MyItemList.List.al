page 50104 MyItemList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "MyTable";
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(MyItem; Rec."MyItem")
                {
                    ApplicationArea = All;
                    Caption = 'My Item';
                }
                field(MyDescription; Rec."MyDescription")
                {
                    ApplicationArea = All;
                    Caption = 'My Description';
                }
            }
        }
    }
}