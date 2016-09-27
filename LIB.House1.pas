unit LIB.House1;

interface //####################################################################

uses LIB.House0;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     IParen1 = interface;
     IChild1 = interface;

     TParen1 = class;
     TChild1 = class;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TParen1

     IParen1 = interface
       ///// アクセス
       function GetChild :IChild1;
       procedure SetChild( const Child_:IChild1 );
       ///// プロパティ
       property Child :IChild1 read GetChild write SetChild;
     end;

     TParen1 = class( THuman0, IParen1 )
     protected
       _Child :IChild1;
       ///// アクセス
       function GetChild :IChild1;
       procedure SetChild( const Child_:IChild1 );
     public
       ///// プロパティ
       property Child :IChild1 read GetChild write SetChild;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TChild1

     IChild1 = interface
       ///// アクセス
       function GetParen :IParen1;
       procedure SetParen( const Paren_:IParen1 );
       ///// プロパティ
       property Paren :IParen1 read GetParen write SetParen;
     end;

     TChild1 = class( THuman0, IChild1 )
     protected
       _Paren :IParen1;
       ///// アクセス
       function GetParen :IParen1;
       procedure SetParen( const Paren_:IParen1 );
     public
       ///// プロパティ
       property Paren :IParen1 read GetParen write SetParen;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THouse1<_TParen_,_TChild_>

     THouse1<_TParen_:TParen1,constructor;
             _TChild_:TChild1,constructor> = class
     protected
       _Paren :_TParen_;
       _Child :_TChild_;
     public
       constructor Create;
       destructor Destroy; override;
       ///// プロパティ
       property Paren :_TParen_ read _Paren;
       property Child :_TChild_ read _Child;
     end;

implementation //###############################################################

uses System.SysUtils;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TParen1

/////////////////////////////////////////////////////////////////////// アクセス

function TParen1.GetChild :IChild1;
begin
     Result := _Child;
end;

procedure TParen1.SetChild( const Child_:IChild1 );
begin
     _Child := Child_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TChild1

/////////////////////////////////////////////////////////////////////// アクセス

function TChild1.GetParen :IParen1;
begin
     Result := _Paren;
end;

procedure TChild1.SetParen( const Paren_:IParen1 );
begin
     _Paren := Paren_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THouse1<_TParen_,_TChild_>

constructor THouse1<_TParen_,_TChild_>.Create;
begin
     inherited;

     _Paren := _TParen_.Create;
     _Child := _TChild_.Create;

     _Paren.Child := _Child;
     _Child.Paren := _Paren;
end;

destructor THouse1<_TParen_,_TChild_>.Destroy;
begin
     FreeAndNil( _Paren );
     FreeAndNil( _Child );
end;

end. //#########################################################################
