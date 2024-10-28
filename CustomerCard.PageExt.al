pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(SystemCreatedAt;Rec.SystemCreatedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Created';
            }
            field(SystemModifiedAt;Rec.SystemModifiedAt)
            {
                ApplicationArea = All;
                ToolTip = 'Changed';
            }

        }
    }

    actions
    {
        addlast(Action82)
        {
            action(ItemLedgerList)
            {
                ApplicationArea = all;
                Image = Report;
                RunObject = page "Item Ledger Entries";
            }
        }
    }
    
}