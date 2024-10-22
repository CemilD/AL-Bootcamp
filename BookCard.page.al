page 50101 BookCard
{
    PageType = Card;
    Caption = 'Book page';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = BookTable;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field(ISBN; Rec.ISBN)
                {
                    ToolTip = 'ISBN from Book';
                }
                field(Edition;Rec.Edition)
                {
                    ToolTip = 'Book Edition';
                }
                field(BookName;Rec.BookName)
                {
                    ToolTip = 'Book titel';
                }
                field(Author;Rec.Author)
                {
                    ToolTip = 'Book author';
                }
                field("Set from Employee No.";Rec."Set from Employee No.")
                {
                    ToolTip = 'Employee who recomand this book';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}