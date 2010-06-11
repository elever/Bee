unit ufEmployee;

interface
uses
  ufInterfaces, Classes, Forms, cxGrid, cxGridDBTableView, duMainDBX, IBQuery,
  DBClient, Dialogs, cxGridTableView, cxGridCustomTableView, DB,
  dxLayoutControl;

type
  TufEmployee = class(TufBase, IufUIKeyPoint, IufData)
  private
    FTasksGrid: TcxGridDBTableView;
  protected
    procedure EmployeeGridViewFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  public
    procedure DoUIInit; virtual;
    procedure DoDataInit; virtual;
    function DoBeforeCloseCheck: Boolean;
  end;

implementation

{ TufEmployee }

function TufEmployee.DoBeforeCloseCheck: Boolean;
begin
  Result := True;
end;

procedure TufEmployee.DoDataInit;
var
  AEmployeeGrid: TcxGridDBTableView;
  ATasksGrid: TcxGridDBTableView;
begin
  AEmployeeGrid := TcxGridDBTableView(Self.GetComponentByName('EmployeeGridView'));
  ATasksGrid := TcxGridDBTableView(Self.GetComponentByName('TasksGridView'));
  // todo: Ö÷±í
//  AEmployeeGrid.DataController.DataSource :=
//    dmMain.GetAssembledDataSource('select * from "Employees"', FForm);
//
//  //Ï¸±í
//  ATasksGrid.DataController.DataSource :=
//    dmMain.GetAssembledDataSource('select * from "Tasks" order by EID', FForm);
//  FEmployeeGrid := AEmployeeGrid;
//  FTasksGrid := ATasksGrid;
end;

procedure TufEmployee.DoUIInit;
var
  ALayout: TdxLayoutControl;
begin
// todo: test
//  FEmployeeGrid.OnFocusedRecordChanged := Self.EmployeeGridViewFocusedRecordChanged;
//  try
//    ALayout := TdxLayoutControl(Self.GetWinControlByName('TopLayout'));
//  finally
//    ALayout.Visible := False;
//  end;
end;

procedure TufEmployee.EmployeeGridViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  EDataSet: TDataSet;
  EID: Integer;
begin
//  EDataSet := FEmployeeGrid.DataController.DataSet;

end;

end.
