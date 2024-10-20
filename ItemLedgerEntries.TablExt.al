tableextension 50100 RemainingQTY extends "Item Ledger Entry"
{
    fields
    {
        field(50100;"Total Remaining QTY CD";Decimal)// Sum all over remaining quantity of Item
        {
            Caption = 'Total Remaining QTY';
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" where ("Item No." = field("Item No."), Open = const(true)));
            Editable = false;

        } 
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}