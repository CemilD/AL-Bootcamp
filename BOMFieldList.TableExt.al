tableextension 50100 MyWorkcenter extends "Production BOM Line"
{
    fields
    {
        field(50100;MyWorkcenter;Text[100])
        {
            TableRelation = "Work Center".Name;
            ValidateTableRelation = true;
        }
        
    }
}