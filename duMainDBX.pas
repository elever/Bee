unit duMainDBX;

interface

uses
  SysUtils, Classes, WideStrings, DBXFirebird, DB, SqlExpr, ADODB,
  IBCustomDataSet, IBQuery, IBDatabase, FMTBcd, Provider, DBClient, DBXPool,
  DBXInterbase;

type
  //不做跨数据库了，妈的~！就用FB
  TdmMain = class(TDataModule)
    Conn: TSQLConnection;
    ds1: TDataSource;
    SQLDataSet1: TSQLDataSet;
    ds2: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetAssembledDataSource(ASql: String; AOwner: TComponent): TDataSource;
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

{ TdmMain }

function TdmMain.GetAssembledDataSource(ASql: String; AOwner: TComponent): TDataSource;
var
  AQuery: TSQLQuery;
  AProvider: TDataSetProvider;
  AClientDataSet: TClientDataSet;
begin
  Result := TDataSource.Create(AOwner);
  AQuery := TSQLQuery.Create(Result);
  with AQuery do
  begin
    AQuery.SQLConnection := Conn;
    AQuery.SQL.Text := ASql;
    Open;
  end;
  AProvider := TDataSetProvider.Create(AOwner);
  AClientDataSet := TClientDataSet.Create(AOwner);
  AProvider.DataSet := AQuery;
  AClientDataSet.SetProvider(AProvider);
  Result.DataSet := AClientDataSet;
  AClientDataSet.Open;
end;

end.
