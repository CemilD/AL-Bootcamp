page 50120 BookReadingList
{
    PageType = Listpart;
    ApplicationArea = All;
    SourceTable = Contact;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec."Name")
                {
                    ToolTip = 'Person Name';
                }
                field(Adress; Rec.Address)
                {
                    ToolTip = 'Person Name';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'City';
                }
                field(JobTitle; Rec."Job Title")
                {
                    ToolTip = 'Person Name';
                }

            }
        }
    }
    
}