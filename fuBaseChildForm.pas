unit fuBaseChildForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RzButton, RzPanel, Generics.Collections, ufInterfaces,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxLCPainter, dxLayoutControl, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxLookAndFeels, dxSkinsForm;

type
  TfmBaseChildForm = class(TForm)
    ComponentContainer: TPanel;
    Toolbar: TRzToolbar;
    TopLayoutGroup_Root: TdxLayoutGroup;
    TopLayout: TdxLayoutControl;
    procedure FormCreate(Sender: TObject);
  protected
    FIntfObjs: TList<TufBase>;
    procedure AddObj(AObj: TufBase);
    procedure AddImplementationObj; virtual;
    procedure InitImplementationObj; virtual;
  public
    { Public declarations }
    destructor Destroy; override;
    //��ϵ�ӿ�
    function GetContainer: TWinControl;
    procedure DataInit;//���ݳ�ʼ���ӿڡ�����ӿ��л�ȡ��������Դ
    procedure UpdateUI;//����ʵ����������ģ�һ��ˢ�µ�������Ҫ��������������ʾ
    procedure UIInit;//����ʵ��������������õĽӿڵģ�һ������������й�
    function IsPassBeforeCloseCheck: Boolean;//����ʵ��������������õĽӿڵģ�һ���������й�
  end;

implementation
uses
  fuMain, JvTabBar;

{$R *.dfm}

procedure TfmBaseChildForm.AddImplementationObj;
begin
//������ʵ��
end;

procedure TfmBaseChildForm.InitImplementationObj;
var
  AObj: TufBase;
  ADataIntfObj: IufData;
  AUIInitIntfObj: IufUIKeyPoint;
begin
  for AObj in FIntfObjs do
  begin
    if AObj.GetInterface(IufData, ADataIntfObj) then
    begin
      ADataIntfObj.DoDataInit;
    end;
    if AObj.GetInterface(IufUIKeyPoint, AUIInitIntfObj) then
    begin
      AUIInitIntfObj.DoUIInit;
    end;
  end;
end;

//��������õĹ��߷���
procedure TfmBaseChildForm.AddObj(AObj: TufBase);
begin
  FIntfObjs.Add(AObj);
end;

function TfmBaseChildForm.IsPassBeforeCloseCheck: Boolean;
var
  AObj: TObject;
  AUIKeyPoint: IufUIKeyPoint;
begin
  Result := True;
  for AObj in Self.FIntfObjs do
  begin
    if AObj.GetInterface(IufUIKeyPoint, AUIKeyPoint) then
    begin      
      Result := AUIKeyPoint.DoBeforeCloseCheck;
    end;
  end;
end;

procedure TfmBaseChildForm.UIInit;
var
  AObj: TObject;
  AUIInit: IufUIKeyPoint;
begin
  for AObj in Self.FIntfObjs do
  begin
    if AObj.GetInterface(IufUIKeyPoint, AUIInit) then
    begin
      AUIInit.DoUIInit;
    end;
  end;
end;

procedure TfmBaseChildForm.UpdateUI;
var
  AObj: TObject;
  AUpdateUI: IufUpdateUI;
begin
  for AObj in Self.FIntfObjs do
  begin
    if AObj.GetInterface(IufUpdateUI, AUpdateUI) then
    begin
      AUpdateUI.DoUpdate;
    end;
  end;
end;

procedure TfmBaseChildForm.DataInit;
var
  AObj: TObject;
  ADataIntf: IufData;
begin
  for AObj in Self.FIntfObjs do
  begin
    if AObj.GetInterface(IufData, ADataIntf) then
    begin
      ADataIntf.DoDataInit;
    end;
  end;
end;

destructor TfmBaseChildForm.Destroy;
var
  AObj: TufBase;
begin
  if not Assigned(FIntfObjs) then
    Exit;

  FreeAndNil(FIntfObjs);
  inherited;
end;

procedure TfmBaseChildForm.FormCreate(Sender: TObject);
begin
  FIntfObjs := TList<TufBase>.Create();
  AddImplementationObj;
  InitImplementationObj;
end;

function TfmBaseChildForm.GetContainer: TWinControl;
begin
  Result := Self.ComponentContainer;
end;

end.
