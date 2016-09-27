unit LIB.House3;

interface //####################################################################

uses LIB.House1, LIB.House2;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$�y�^�z

     IParen3<_TWidth_:record> = interface;
     IChild3<_TValue3_:record> = interface;

     TParen3<_TWidth_:record;_TValue3_:record> = class;
     TChild3<_TWidth_:record;_TValue3_:record> = class;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$�y�N���X�z

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TParen3<_TValue3_>

     IParen3<_TWidth_:record> = interface( IParen2 )
       function GetWidth3 :_TWidth_;
       procedure SetWidth3( const Width3_:_TWidth_ );
       ///// �v���p�e�B
       property Width3 :_TWidth_ read GetWidth3 write SetWidth3;
     end;

     TParen3<_TWidth_:record;_TValue3_:record> = class( TParen2<TChild3<_TWidth_,_TValue3_>>, IParen3<_TWidth_> )
     protected
       _Width3 :_TWidth_;
       ///// �A�N�Z�X
       function GetWidth3 :_TWidth_;
       procedure SetWidth3( const Width3_:_TWidth_ );
     public
       ///// �v���p�e�B
       property Width3 :_TWidth_ read GetWidth3 write SetWidth3;
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TChild3<_TValue3_>

     IChild3<_TValue3_:record> = interface( IChild2 )
       function GetValue3 :_TValue3_;
       procedure SetValue3( const Value3_:_TValue3_ );
       ///// �v���p�e�B
       property Value3 :_TValue3_ read GetValue3 write SetValue3;
     end;

     TChild3<_TWidth_:record;_TValue3_:record> = class( TChild2<TParen3<_TWidth_,_TValue3_>>, IChild3<_TValue3_> )
     protected
       _Value3 :_TValue3_;
       ///// �A�N�Z�X
       function GetValue3 :_TValue3_;
       procedure SetValue3( const Value3_:_TValue3_ );
     public
       ///// �v���p�e�B
       property Value3 :_TValue3_ read GetValue3 write SetValue3;
     end;

implementation //###############################################################

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TParen3<_TValue3_>

function TParen3<_TWidth_,_TValue3_>.GetWidth3 :_TWidth_;
begin
     Result := _Width3;
end;

procedure TParen3<_TWidth_,_TValue3_>.SetWidth3( const Width3_:_TWidth_ );
begin
     _Width3 := Width3_;
end;

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TChild3<_TValue3_>

function TChild3<_TWidth_,_TValue3_>.GetValue3 :_TValue3_;
begin
     Result := _Value3;
end;

procedure TChild3<_TWidth_,_TValue3_>.SetValue3( const Value3_:_TValue3_ );
begin
     _Value3 := Value3_;
end;

end. //#########################################################################
