unit fuEmployee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fuBaseChildForm, RzPanel, ExtCtrls, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter,
  ufEmployee, dxSkinsdxLCPainter, dxLayoutControl, cxContainer, cxTextEdit,
  cxDBEdit, cxLookAndFeels, dxSkinsForm;

type
  TfmEmployee = class(TfmBaseChildForm)
    EmployeeGrid: TcxGrid;
    EmployeeGridView: TcxGridDBTableView;
    EmployeeGridLevel: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    TasksGrid: TcxGrid;
    EmployeeGridViewColumn1: TcxGridDBColumn;
    EmployeeGridViewColumn2: TcxGridDBColumn;
    EmployeeGridViewColumn3: TcxGridDBColumn;
    EmployeeGridViewColumn4: TcxGridDBColumn;
    EmployeeGridViewColumn5: TcxGridDBColumn;
    TasksGridLevel: TcxGridLevel;
    TasksGridView: TcxGridDBTableView;
    asksGridViewColumn1: TcxGridDBColumn;
    asksGridViewColumn2: TcxGridDBColumn;
    asksGridViewColumn3: TcxGridDBColumn;
    procedure asksGridViewColumn3GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
  protected
    procedure AddImplementationObj; override;
  public
    { Public declarations }
  end;

implementation
uses
  ufInterfaces;
{$R *.dfm}

{ TfmEmployee }

procedure TfmEmployee.AddImplementationObj;
var
  AIntfObj: TufBase;
begin
  AddObj(TufEmployee.Create);

  for AIntfObj in FIntfObjs do
  begin
    AIntfObj.SetForm(Self);
  end;
end;

procedure TfmEmployee.asksGridViewColumn3GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
  if SameText(AText, '0') then
  begin
    AText := '½øÐÐÖÐ';
  end;
end;

end.
