program JointClass;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {Form1},
  LIB.List0 in 'LIB.List0.pas',
  LIB.List1 in 'LIB.List1.pas',
  LIB.List2 in 'LIB.List2.pas',
  LIB.List3 in 'LIB.List3.pas',
  LIB in 'LIB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
