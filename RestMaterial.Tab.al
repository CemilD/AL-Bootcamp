table 50102 RestMaterial
{
    DataClassification = CustomerContent;
    Caption = 'Rest Material';

    fields
    {
        field(1; OrderNo; Code[20])
        {
            Caption = 'Order No.';
            DataClassification = CustomerContent;
            TableRelation = "Production Order"."No." where (Status = const(Released));
            
        }
        field(10; ItemNo; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            ValidateTableRelation = false;
            TableRelation = "Prod. Order Component"."Item No." where (Status = const(Released));

        }

        field(20; ItemDescription; Text[100])
        {
            Caption = 'Description';
            FieldClass = FlowField;
            CalcFormula = lookup("Prod. Order Component".Description where ("Item No."= field(ItemNo)));

        }
    }
}