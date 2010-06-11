unit ufInterfaces;

interface
uses
  Forms, Controls, Classes, SysUtils;

type
  TufBase = class(TInterfacedObject, IInterface)
  protected
    FForm: TForm;
  protected
    function GetComponentByName(ComponentName: String): TComponent;
    function GetWinControlByName(ControlName: String): TWinControl;
  public
    procedure SetForm(const AForm: TForm);
  end;

  IufUIKeyPoint = interface
    ['{4C302142-A634-4ABD-B6A5-9BFB1DCE8A10}']
    procedure DoUIInit;
    function DoBeforeCloseCheck: Boolean;
  end;

  IufUpdateUI = interface
  ['{D9D74BDF-3739-45FB-8483-9B71E8C69D59}']
    procedure DoUpdate;
  end;

  IufData = interface
    ['{FE7AF213-E960-4E89-AB06-F95C81B2BF2D}']
    procedure DoDataInit;
  end;

implementation

{ TufBase }

function TufBase.GetComponentByName(ComponentName: String): TComponent;
var
  AComponent: TComponent;
  I: Integer;
begin
  Result := nil;
  for I := 0 to FForm.ComponentCount - 1 do
  begin
    AComponent := TComponent(FForm.Components[I]);
    if SameText(AComponent.Name, ComponentName) then
    begin
      Result := AComponent;
      Exit;
    end;
  end;
  if Result = nil then
    raise Exception.Create('系统异常');
end;

function TufBase.GetWinControlByName(ControlName: String): TWinControl;
var
  AControl: TControl;
  I: Integer;
begin
  Result := nil;
  for I := 0 to FForm.ControlCount - 1 do
  begin
    AControl := TControl(FForm.Controls[I]);
    if not (AControl is TWinControl) then
      Continue;
    if SameText(TWinControl(AControl).Name, ControlName) then
    begin
      Result := TWinControl(AControl);
    end;
  end;
  if Result = nil then
    raise Exception.Create('系统异常');
end;

procedure TufBase.SetForm(const AForm: TForm);
begin
  FForm := AForm;
end;

end.
