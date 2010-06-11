unit Utils;

interface

uses
  Generics.Collections, fuBaseChildForm, RzTabs, cxPC;

type
  TufChildFormManager = class
  private
    FPageControl: TcxPageControl;
    FDict: TDictionary<String,TcxTabSheet>;
  public
    constructor Create(APageControl: TcxPageControl);
    destructor Destroy; override;
    procedure AddChildForm(FormCaption: string; Tab: TcxTabSheet);
    procedure RemoveChildForm(FormCaption: String);
    function hasTheChildForm(AChildForm: TfmBaseChildForm): Boolean;
  end;

implementation

{ TChildFormManager }

procedure TufChildFormManager.AddChildForm(FormCaption: string; Tab: TcxTabSheet);
begin
  if FDict.ContainsKey(FormCaption) then
    FDict[FormCaption] := Tab
  Else
    FDict.Add(FormCaption, Tab);
end;

constructor TufChildFormManager.Create(APageControl: TcxPageControl);
begin
  FPageControl := APageControl;
  FDict := TDictionary<String,TcxTabSheet>.Create;
end;

destructor TufChildFormManager.Destroy;
begin
  FDict.Clear;
  FDict.Free;
  inherited;
end;

function TufChildFormManager.hasTheChildForm(
  AChildForm: TfmBaseChildForm): Boolean;
begin
  Result := True;
  if FDict.ContainsKey(AChildForm.Caption) then
  begin
    FPageControl.ActivePage := FDict[AChildForm.Caption];
    Exit;
  end;
  Result := False;
end;

procedure TufChildFormManager.RemoveChildForm(FormCaption: String);
begin
  if not FDict.ContainsKey(FormCaption) then
    Exit;
  FDict.Remove(FormCaption);
end;

end.
