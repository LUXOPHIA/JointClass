unit Main;

interface //####################################################################

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  LIB.List0, LIB.List1, LIB.List2, LIB.List3;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
    _List :TList3;
  end;

var
  Form1: TForm1;

implementation //###############################################################

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
     _List := TList3.Create;

     _List.Head.Value := False;
     _List.Knot.Value := 100;
     _List.Tail.Value := 0.01;

     TKnot3( _List.Head.Next ).Value := 10;
     THead3( _List.Knot.Prev ).Value := True;
     TTail3( _List.Knot.Next ).Value := 0.01;
     TKnot3( _List.Tail.Prev ).Value := 100;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
     _List.Free;
end;

end. //#########################################################################
