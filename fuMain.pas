unit fuMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, JvMenus, ActnList, JvTabBar, fuBaseChildForm, Tabs, DockTabSet,
  JvPageList, JvExControls, JvOutlookBar, ComCtrls, JvExComCtrls, JvComCtrls,
  JvgPage, ToolWin, JvToolBar, RzStatus, ExtCtrls, RzPanel, RzTabs, RzCommon,
  RzTray, Grids, DBGrids, RzDBGrid, Utils, RzGroupBar, RzSplit, IdBaseComponent,
  IdZLibCompressorBase, IdCompressorZLib, RzButton, fuEmployee, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels,
  dxSkinsForm, dxSkinsdxBarPainter, cxClasses, dxBar, dxRibbon,
  dxSkinscxPCPainter, cxPC, cxControls, cxGraphics, dxSkinsdxStatusBarPainter,
  dxStatusBar;

type
  TfmMain = class(TForm)
    ActList: TActionList;
    actExit: TAction;
    actEmployees: TAction;
    TrayIcon: TRzTrayIcon;
    actAddEmployee: TAction;
    actProjcets: TAction;
    actAddProject: TAction;
    actTasks: TAction;
    actAddTask: TAction;
    actRelations: TAction;
    actAddRelations: TAction;
    dxSkinController1: TdxSkinController;
    dxBarManager1: TdxBarManager;
    PageControl: TcxPageControl;
    NavSheet: TcxTabSheet;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxStatusBar1: TdxStatusBar;
    procedure actExitExecute(Sender: TObject);
    procedure actEmployeesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControlCanClose(Sender: TObject; var ACanClose: Boolean);
  private
    { Private declarations }
    FChildFormManager: TufChildFormManager;
    procedure CreateTabSheet(ACaption: String; AChildForm: TfmBaseChildForm);
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation
uses
  ufInterfaces;
{$R *.dfm}

procedure TfmMain.actEmployeesExecute(Sender: TObject);
begin
  CreateTabSheet(TAction(Sender).Caption,
    TfmEmployee.Create(TcxTabSheet.Create(PageControl)));
end;

procedure TfmMain.actExitExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfmMain.CreateTabSheet(ACaption: String; AChildForm: TfmBaseChildForm);
var
  ATabSheet: TcxTabSheet;
  I: Integer;
  J: Integer;
begin
  ATabSheet := TcxTabSheet(AChildForm.Owner);
  ATabSheet.Caption := ACaption;
  AChildForm.Caption := ACaption;
  if FChildFormManager.hasTheChildForm(AChildForm) then
  begin
    ATabSheet.Free;
    Exit;
  end;

  with AChildForm do
  begin
    //todo: bbb
    ATabSheet.PageControl := Self.PageControl;
    FChildFormManager.AddChildForm(ATabSheet.Caption, ATabSheet);
    //todo: 这地方有问题，应使用FChildFormManager.SetChildActive(ATabSheet.Caption);
    Self.PageControl.ActivePageIndex := Self.PageControl.PageCount - 1;

    GetContainer.Parent := ATabSheet;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  FChildFormManager := TufChildFormManager.Create(PageControl);
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  FChildFormManager.Free;
end;

procedure TfmMain.PageControlCanClose(Sender: TObject; var ACanClose: Boolean);
begin
  if PageControl.ActivePage = NavSheet then
  begin
    ACanClose := False;
    exit;
  end;
  with TcxTabSheet(PageControl.ActivePage) do
  begin
    FChildFormManager.RemoveChildForm(TcxTabSheet(PageControl.ActivePage).Caption);
  end;
  ACanClose := True;
end;

end.
