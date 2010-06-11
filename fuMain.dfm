object fmMain: TfmMain
  Left = 183
  Top = 154
  Caption = #29992#21451'T1'#39033#30446#31649#29702
  ClientHeight = 333
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TcxPageControl
    Left = 0
    Top = 18
    Width = 689
    Height = 295
    ActivePage = NavSheet
    Align = alClient
    LookAndFeel.NativeStyle = True
    Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoFixedTabWidthWhenRotated, pcoGoDialog, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoTopToBottomText, pcoUsePageColorForTab]
    OwnerDraw = True
    TabOrder = 4
    OnCanClose = PageControlCanClose
    ExplicitTop = 12
    ClientRectBottom = 291
    ClientRectLeft = 2
    ClientRectRight = 685
    ClientRectTop = 22
    object NavSheet: TcxTabSheet
      Caption = #23548#33322#31383#21475
      ImageIndex = 0
      ExplicitTop = 25
      ExplicitWidth = 685
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 313
    Width = 689
    Height = 20
    Panels = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitLeft = 2
    ExplicitTop = 274
    ExplicitWidth = 685
  end
  object ActList: TActionList
    Left = 328
    Top = 136
    object actExit: TAction
      Caption = #36864#20986
      ShortCut = 16465
      OnExecute = actExitExecute
    end
    object actEmployees: TAction
      Category = #20154#21592
      Caption = #20154#21592#20449#24687
      ShortCut = 16449
      OnExecute = actEmployeesExecute
    end
    object actAddEmployee: TAction
      Category = #20154#21592
      Caption = #28155#21152#20154#21592#20449#24687
    end
    object actProjcets: TAction
      Category = #39033#30446
      Caption = #39033#30446#20449#24687
    end
    object actAddProject: TAction
      Category = #39033#30446
      Caption = #28155#21152#39033#30446#20449#24687
    end
    object actTasks: TAction
      Category = #20219#21153
      Caption = #20219#21153#20449#24687
    end
    object actAddTask: TAction
      Category = #20219#21153
      Caption = #28155#21152#20219#21153#20449#24687
    end
    object actRelations: TAction
      Category = #20851#31995#20154
      Caption = #20851#31995#20154#28165#21333
    end
    object actAddRelations: TAction
      Category = #20851#31995#20154
      Caption = #28155#21152#20851#31995#20154
    end
  end
  object TrayIcon: TRzTrayIcon
    Enabled = False
    Left = 488
    Top = 136
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    SkinName = 'LondonLiquidSky'
    Left = 368
    Top = 224
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    MenuAnimations = maFade
    PopupMenuLinks = <>
    ShowHint = False
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 208
    Top = 168
    DockControlHeights = (
      0
      0
      18
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'MainMenu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 715
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #25805#20316'(&C)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actAddEmployee
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actAddProject
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = actAddRelations
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = actAddTask
      Category = 0
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #22522#26412#36164#26009
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarButton5: TdxBarButton
      Action = actTasks
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = actRelations
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = actProjcets
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = actExit
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = actEmployees
      Category = 0
    end
  end
end
