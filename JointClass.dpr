program JointClass;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  LIB.House0 in 'LIB.House0.pas',
  LIB.House2 in 'LIB.House2.pas',
  LIB.House1 in 'LIB.House1.pas',
  LIB.House3 in 'LIB.House3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
