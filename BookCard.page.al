page 50101 BookCard
{
    PageType = Document;
    Caption = 'Book page';
    ApplicationArea = All;
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

            }

        }
    }

}