table 50100 BookTable
{
    DataClassification = CustomerContent;
    Caption  = 'My Book Table';
    
    fields
    {
        field(10;ISBN; code[20])
        {
            Caption = 'ISBN';
        }
        field(20;Author; Text[50])
        {
            Caption = 'Author';
        }
        field(30;BookName; Text[50])
        {
            Caption = 'Book Name';
        }
        field(40;Edition; Code[20])
        {
            Caption = 'Edition';
        }
    }
    
    keys
    {
        key(PK; ISBN)
        {
            Clustered = true;
        }
    }
}