page 50100 BookList
{
    PageType = List;
    Caption = 'Book list';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = BookTable;
    Editable = false;
    CardPageId = BookCard;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ISBN;Rec.ISBN)
                {
                    ToolTip = 'ISBN from Book';
                }
                field(Edition;Rec.Edition)
                {
                    ToolTip = 'Edition from Book';
                }
                field(Author;Rec.Author)
                {
                    ToolTip = 'Author from Book';
                }
                field(BookName;Rec.BookName)
                {
                    ToolTip = 'Title from Book';
                }

            }
        }

    }

    
}