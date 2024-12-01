table 50101 EcmRevisionTable
{
    DataClassification = ToBeClassified;
    Caption = 'ECM Revision Table';

    fields
    {
        field(1; ChangeRequestNO; code[20])
        {
            Caption = 'Change Request No';
        }

        field(10; ChangeItem; code[20])
        {
            Caption = 'Change Source Item';
            TableRelation = Item."No.";
        }

        field(20; ChangeDescription; Text[100])
        {
            Caption = 'Change Request No';
        }

        field(30; ChangeDate; Date)
        {
            Caption = 'Change Date';
        }
        field(40; ChangeUser; code[20])
        {
            Caption = 'Change User';
        }
        field(50; ChangeStatus; Option)
        {
            Caption = 'Change Status';
            OptionMembers = "Open","Cancel", "Pending", "Approve", "Reject", "Implement in MBOM";
        }
        field(60; Validate; Date)
        {
            Caption = 'Validate Date';
        }
        field(70; Manager; code[20])
        {
            Caption = 'Manager';
        }
        field(80; FirstUser; code[20])
        {
            Caption = 'First User';
            TableRelation = "Production Order"."No.";
        } 
    }

    keys
    {
        key(Key1; ChangeRequestNO)
        {
            Clustered = true;
        }

        key(Key2; ChangeItem)
        {
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }



}