table 50103 MyTable
{
    DataClassification = CustomerContent;
    Caption = 'My Table';
    
    fields
    {
field(1; MyItem; Code[20])
{
    DataClassification = ToBeClassified;
    Caption = 'My Item';
    TableRelation = "Item"."No."; // TableRelation ohne zusätzliche Bedingung reicht aus
    ValidateTableRelation = true;

    trigger OnValidate()
    var
        Item: Record Item;
    begin
        TestField(MyItem);
        Item.Get(MyItem);
        MyDescription := Item.Description;
    end;
}

        field(10; MyDescription; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'My Description';
        }
    }   
    
}