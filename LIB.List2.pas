unit LIB.List2;

interface //#################################################################### ■

uses LIB.List1;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【インタフェース】

     IHead2 = interface;
     IKnot2 = interface;
     ITail2 = interface;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IHead2

     IHead2 = interface( IHead1 )
       ///// アクセス
       function GetValue :Boolean;
       procedure SetValue( const Value_:Boolean );
       ///// プロパティ
       property Value :Boolean read GetValue write SetValue;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IKnot2

     IKnot2 = interface( IKnot1 )
       ///// アクセス
       function GetValue :Integer;
       procedure SetValue( const Value_:Integer );
       ///// プロパティ
       property Value :Integer read GetValue write SetValue;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ITail2

     ITail2 = interface( ITail1 )
       ///// アクセス
       function GetValue :Double;
       procedure SetValue( const Value_:Double );
       ///// プロパティ
       property Value :Double read GetValue write SetValue;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     THead2<               _TNext_:IKnot2> = class;
     TKnot2<_TPrev_:IHead2;_TNext_:ITail2> = class;
     TTail2<_TPrev_:IKnot2               > = class;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THead2<_TNext_>

     THead2<_TNext_:IKnot2> = class( THead1<_TNext_>, IHead2 )
     protected
       _Value :Boolean;
       ///// アクセス
       function GetValue :Boolean;
       procedure SetValue( const Value_:Boolean );
     public
       ///// プロパティ
       property Value :Boolean read GetValue write SetValue;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKnot2<_TPrev_,_TNext_>

     TKnot2<_TPrev_:IHead2;_TNext_:ITail2> = class( TKnot1<_TPrev_,_TNext_>, IKnot2 )
     protected
       _Value :Integer;
       ///// アクセス
       function GetValue :Integer;
       procedure SetValue( const Value_:Integer );
     public
       ///// プロパティ
       property Value :Integer read GetValue write SetValue;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TTail2<_TPrev_>

     TTail2<_TPrev_:IKnot2> = class( TTail1<_TPrev_>, ITail2 )
     protected
       _Value :Double;
       ///// アクセス
       function GetValue :Double;
       procedure SetValue( const Value_:Double );
     public
       ///// プロパティ
       property Value :Double read GetValue write SetValue;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TList2<_THead_,_TTail_>

     TList2<_THead_:IHead2,constructor;
            _TKnot_:IKnot2,constructor;
            _TTail_:ITail2,constructor> = class( TList1<_THead_,_TKnot_,_TTail_> )
     protected
     public
       constructor Create;
       destructor Destroy; override;
     end;

implementation //############################################################### ■

uses System.SysUtils;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THead2<_TNext_>

function THead2<_TNext_>.GetValue :Boolean;
begin
     Result := _Value;
end;

procedure THead2<_TNext_>.SetValue( const Value_:Boolean );
begin
     _Value := Value_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKnot2<_TPrev_,_TNext_>

function TKnot2<_TPrev_,_TNext_>.GetValue :Integer;
begin
     Result := _Value;
end;

procedure TKnot2<_TPrev_,_TNext_>.SetValue( const Value_:Integer );
begin
     _Value := Value_;
end;


//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TTail2<_TPrev_>

function TTail2<_TPrev_>.GetValue :Double;
begin
     Result := _Value;
end;

procedure TTail2<_TPrev_>.SetValue( const Value_:Double );
begin
     _Value := Value_;
end;


//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TList2<_THead_,_TKnot_,_TTail_>

constructor TList2<_THead_,_TKnot_,_TTail_>.Create;
begin
     inherited;

     _Head.Value := True;
     _Knot.Value := 10;
     _Tail.Value := 0.1;
end;

destructor TList2<_THead_,_TKnot_,_TTail_>.Destroy;
begin

     inherited;
end;

end. //######################################################################### ■
