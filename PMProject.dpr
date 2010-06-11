program PMProject;

uses
  Forms,
  fuMain in 'fuMain.pas' {fmMain},
  duMainDBX in 'duMainDBX.pas' {dmMain: TDataModule},
  fuBaseChildForm in 'fuBaseChildForm.pas' {fmBaseChildForm},
  Utils in 'Utils\Utils.pas',
  ufInterfaces in 'Interfaces\ufInterfaces.pas',
  fuEmployee in 'Buzz\fuEmployee.pas' {fmEmployee},
  ufEmployee in 'Buzz\ufEmployee.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.Title := '项目管理工具';
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
