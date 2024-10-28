pageextension 50101 MyWorkgroup extends "Production BOM Lines"
{
    layout
    {
        addlast(Control1)
        {
            field(MyWorkspace;rec.MyWorkcenter)
            {
                ApplicationArea = all;
                Caption = 'Workcenter' ;
            }

        }
    }
    
}
