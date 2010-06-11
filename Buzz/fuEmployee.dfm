inherited fmEmployee: TfmEmployee
  Caption = 'fmEmployee'
  ClientHeight = 421
  ClientWidth = 649
  ExplicitWidth = 657
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited ComponentContainer: TPanel
    Width = 649
    Height = 421
    ExplicitWidth = 649
    ExplicitHeight = 421
    inherited Toolbar: TRzToolbar
      Width = 647
      ExplicitWidth = 647
    end
    inherited TopLayout: TdxLayoutControl
      Width = 647
      TabOrder = 2
      ExplicitLeft = 2
      ExplicitTop = 24
      ExplicitWidth = 647
    end
    object EmployeeGrid: TcxGrid
      Left = 1
      Top = 137
      Width = 647
      Height = 75
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 71
      object EmployeeGridView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Indicator = True
        object EmployeeGridViewColumn1: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'Name'
          Width = 110
        end
        object EmployeeGridViewColumn2: TcxGridDBColumn
          Caption = #35282#33394
          DataBinding.FieldName = 'Role'
          Width = 95
        end
        object EmployeeGridViewColumn3: TcxGridDBColumn
          Caption = #30005#35805
          DataBinding.FieldName = 'Tel'
          Width = 102
        end
        object EmployeeGridViewColumn4: TcxGridDBColumn
          Caption = #25163#26426
          DataBinding.FieldName = 'Mobile'
          Width = 123
        end
        object EmployeeGridViewColumn5: TcxGridDBColumn
          Caption = #30005#23376#37038#20214
          DataBinding.FieldName = 'EMail'
          Width = 115
        end
      end
      object EmployeeGridLevel: TcxGridLevel
        GridView = EmployeeGridView
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 1
      Top = 212
      Width = 647
      Height = 4
      HotZoneClassName = 'TcxXPTaskBarStyle'
      AlignSplitter = salBottom
      Control = TasksGrid
      ExplicitTop = 210
    end
    object TasksGrid: TcxGrid
      Left = 1
      Top = 216
      Width = 647
      Height = 204
      Align = alBottom
      TabOrder = 3
      object TasksGridView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object asksGridViewColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
        end
        object asksGridViewColumn2: TcxGridDBColumn
        end
        object asksGridViewColumn3: TcxGridDBColumn
        end
      end
      object TasksGridLevel: TcxGridLevel
        GridView = TasksGridView
      end
    end
  end
end
