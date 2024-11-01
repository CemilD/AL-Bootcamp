pageextension 50102 RevisionNo extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            field(RevisionNo; rec.RevisionNo)
            {
                ApplicationArea = All;
                Caption = 'Revision No';
                TableRelation = "EcmRevisionTable"."ChangeRequestNO";
            }
        }
    }
}
