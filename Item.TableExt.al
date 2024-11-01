tableextension 50101 RevisionNo extends Item
{
    fields
    {
        field(50100; RevisionNo; code[20])
        {
            Caption = 'Revision No';
            TableRelation = "EcmRevisionTable"."ChangeRequestNO";
        }
    }
    
}