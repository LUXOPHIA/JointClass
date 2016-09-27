unit Main;

interface //####################################################################

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo,
  LIB.House0, LIB.House1, LIB.House2, LIB.House3;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
    _House :THouse1<TParen3<Integer,Integer>,TChild3<Integer,Integer>>;
  end;

var
  Form1: TForm1;

implementation //###############################################################

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
     _House := THouse1<TParen3<Integer,Integer>,TChild3<Integer,Integer>>.Create;

     _House.Paren.Width3 := 1;
     _House.Child.Value3 := 1;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
     _House.Free;
end;

end. //#########################################################################
