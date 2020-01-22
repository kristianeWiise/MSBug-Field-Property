pageextension 50100 pageextension50100 extends "Vendor Card"
{
    layout
    {
        // Hide unused fields for standard Microsoft EFT and Payment Export File
        addafter(Payments)
        {
            group(Group1)
            {
                Caption = 'Custom Group1';
                field("Custom Field 1"; "Custom Field 1")
                {
                    ApplicationArea = All;

                }
                field("Custom Field 2"; "Custom Field 2")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the BPAY name for the Biller Code.';
                }
                field(ToolTip1; "Custom Field 3")
                {
                    ApplicationArea = All;
                    Editable = isCRNEnable;
                    ToolTip = 'Tooltip 1';
                    Visible = HideToolTip1;
                }
                field(ToolTip2; "Custom Field 3")
                {
                    ApplicationArea = All;
                    Editable = isCRNEnable;
                    Visible = HideToolTip2;
                    ToolTip = 'ToolTip 2';

                }
                field(ToolTip3; "Custom Field 3")
                {
                    ApplicationArea = All;
                    Editable = isCRNEnable;
                    Visible = HideToolTip3;
                    ToolTip = 'ToolTip 3';

                }
            }
        }

    }

    var
        isCRNEnable: Boolean;
        HideToolTip1: Boolean;
        HideToolTip2: Boolean;
        HideToolTip3: Boolean;
        CRNLengthErr: Label 'The allow the max length in Customer Reference Number is %1';

    trigger OnAfterGetRecord()
    begin
        isCRNEnable := true;
        HideToolTip1 := true;
        HideToolTip2 := true;
        HideToolTip3 := true;
    end;

}