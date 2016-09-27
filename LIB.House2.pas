unit LIB.House2;

interface //####################################################################

uses LIB.House1;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     IParen2 = interface( IParen1 )

     end;

     IChild2 = interface( IChild1 )

     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TParen2<_TChild_>

     TParen2<_TChild_:class> = class( TParen1, IParen2 )
     protected
       function GetChild :_TChild_;
     public
       ///// プロパティ
       property Child :_TChild_ read GetChild;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TChild2<_TParen_>

     TChild2<_TParen_:class> = class( TChild1, IChild2 )
     protected
       function GetParen :_TParen_;
     public
       ///// プロパティ
       property Paren :_TParen_ read GetParen;
     end;

implementation //###############################################################

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TParen2<_TChild_>

function TParen2<_TChild_>.GetChild :_TChild_;
begin
     Result := _Child as _TChild_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TChild2<_TParen_>

function TChild2<_TParen_>.GetParen :_TParen_;
begin
     Result := _Paren as _TParen_;
end;

end. //#########################################################################
