page 50102 "ECM List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EcmRevisionTable;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ChangeRequestNO; rec.ChangeRequestNO)
                {
                    ApplicationArea = All;
                    Caption = 'Change Request No';
                }
                field(ChangeItem; rec.ChangeItem)
                {
                    ApplicationArea = All;
                    Caption = 'Change Source Item';
                    TableRelation = Item."No.";
                }
                field(ChangeDescription; rec.ChangeDescription)
                {
                    ApplicationArea = All;
                    Caption = 'Change Description';
                }
                field(ChangeDate; rec.ChangeDate)
                {
                    ApplicationArea = All;
                    Caption = 'Change Date';
                }
                field(ChangeUser; rec.ChangeUser)
                {
                    ApplicationArea = All;
                    Caption = 'Change User';
                }
                field(ChangeStatus; rec.ChangeStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Change Status';
                }
                field(Validate; rec.Validate)
                {
                    ApplicationArea = All;
                    Caption = 'Validate Date';
                }
                field(Manager; rec.Manager)
                {
                    ApplicationArea = All;
                    Caption = 'Manager';
                }
                field(FirstUser; rec.FirstUser)
                {
                    ApplicationArea = All;
                    Caption = 'First User';
                    TableRelation = "Production Order"."No.";
                }
            }
        }
      
    }

    actions
    {
        area(Navigation)
        {
            action(ItemList)
            {
                ApplicationArea = All;
                Caption = 'Item List';
                RunObject = Page "item list";
                RunPageLink = "No." = field("ChangeItem");
            }

        }

        area(Processing)
        {
            action(ItemLager)
            {
                ApplicationArea = All;
                Caption = 'Item Lager';
                RunObject = Page "Item Ledger Entries";
                RunPageLink = "Item No." = field("ChangeItem");
                Image = MoveUp;
            }
        }

        area(Promoted)
        {
            group(CD20)
            {
                actionref(MyAction; ItemList)
                {
                }
            }

        }
    }


}