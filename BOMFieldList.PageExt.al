pageextension 50101 MyWorkgroup extends "Production BOM Lines"
{
    layout
    {
        addlast(Control1)
        {
            field(MyWorkspace; Rec.MyWorkcenter)
            {
                ApplicationArea = all;
                Caption = 'Workcenter';
                trigger OnLookup(var Text: Text): Boolean
                var
                    WorkcenterRec: Record "Work Center";
                begin
                    if PAGE.RunModal(PAGE::"Work Center List", WorkcenterRec) = ACTION::LookupOK then begin
                        Rec.MyWorkcenter := WorkcenterRec.Name; 
                    end;
                end;
            }

            field(MyWorkcenterID;Rec.MyWorkcenterRelation)
            {
                ApplicationArea = all;
            }

        }
    }
    
}
