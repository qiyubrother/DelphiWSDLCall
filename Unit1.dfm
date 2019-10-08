object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'WebService Call'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 19
    Height = 13
    Caption = 'City'
  end
  object Memo1: TMemo
    Left = 8
    Top = 64
    Width = 619
    Height = 227
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object EditCity: TEdit
    Left = 16
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 1
    Text = #21271#20140
  end
  object btnSearch: TButton
    Left = 143
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 2
    OnClick = btnSearchClick
  end
end
