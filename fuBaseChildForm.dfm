object fmBaseChildForm: TfmBaseChildForm
  Left = 0
  Top = 0
  Caption = 'fmBaseChildForm'
  ClientHeight = 206
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ComponentContainer: TPanel
    Left = 0
    Top = 0
    Width = 339
    Height = 206
    Align = alClient
    TabOrder = 0
    object Toolbar: TRzToolbar
      Left = 1
      Top = 1
      Width = 337
      Height = 29
      BorderInner = fsNone
      BorderOuter = fsGroove
      BorderSides = [sdTop]
      BorderWidth = 0
      TabOrder = 0
    end
    object TopLayout: TdxLayoutControl
      Left = 1
      Top = 30
      Width = 337
      Height = 107
      Align = alTop
      TabOrder = 1
      TabStop = False
      object TopLayoutGroup_Root: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
      end
    end
  end
end
