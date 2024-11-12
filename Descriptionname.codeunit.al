codeunit 50100 UpdateItemDiscription
{
    procedure UpdateItemDescription(var ItemDescription: Text[100]; OrderNo: Code[20]; ItemNo: Code[20])
    var
        ProdOrder: Record "Prod. Order Component";
    begin
        ItemNo := '';
        ItemDescription := '';
        
        if ProdOrder.Get(OrderNo, ItemNo) then
            begin
            ItemDescription := ProdOrder.Description;
            ItemNo := ProdOrder."Item No.";
            end

        else
            Error('Der Produktionsauftrag oder die Komponente wurde nicht gefunden.');
    end;
}