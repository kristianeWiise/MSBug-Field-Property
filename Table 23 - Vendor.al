tableextension 50100 tableextension16034600 extends Vendor
{
    fields
    {

        field(50100; "Custom Field 1"; Text[8])
        {
            Caption = 'Custom Field 1';
            DataClassification = CustomerContent;

        }
        field(16034602; "Custom Field 2"; Text[255])
        {
            Caption = 'Custom Field 2';
            DataClassification = CustomerContent;

        }
        field(16034603; "Custom Field 3"; Text[50])
        {
            Caption = 'Custom Field 3';
            DataClassification = CustomerContent;

        }
    }
}

