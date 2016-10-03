unit LIB.List0;

interface //#################################################################### ■

uses LIB;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【インタフェース】

     IItem0 = interface;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IItem0

     IItem0 = interface
       ///// アクセス
       function Get_Prev :IItem0;
       procedure Set_Prev( const _Prev_:IItem0 );
       function Get_Next :IItem0;
       procedure Set_Next( const _Next_:IItem0 );
       ///// プロパティ
       property Prev :IItem0 read Get_Prev write Set_Prev;
       property Next :IItem0 read Get_Next write Set_Next;
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

     TItem0<_TPrev_:IItem0;_TNext_:IItem0> = class;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TItem0<_TPrev_,_TNext_>

     TItem0<_TPrev_:IItem0;_TNext_:IItem0> = class( TInterfacedBase, IItem0 )
     private
       ///// アクセス
       function Get_Prev :IItem0;
       procedure Set_Prev( const _Prev_:IItem0 );
       function Get_Next :IItem0;
       procedure Set_Next( const _Next_:IItem0 );
     protected
       _Prev :_TPrev_;
       _Next :_TNext_;
       ///// アクセス
       function GetPrev :_TPrev_;
       procedure SetPrev( const Prev_:_TPrev_ );
       function GetNext :_TNext_;
       procedure SetNext( const Next_:_TNext_ );
     public
       ///// プロパティ
       property Prev :_TPrev_ read GetPrev write SetPrev;
       property Next :_TNext_ read GetNext write SetNext;
     end;

implementation //############################################################### ■

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TItem0<_TPrev_,_TNext_>

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& private

function TItem0<_TPrev_,_TNext_>.Get_Prev :IItem0;
begin
     Result := _Prev;
end;

procedure TItem0<_TPrev_,_TNext_>.Set_Prev( const _Prev_:IItem0 );
begin
     _Prev := _TPrev_( _Prev_ );
end;

function TItem0<_TPrev_,_TNext_>.Get_Next :IItem0;
begin
     Result := _Next;
end;

procedure TItem0<_TPrev_,_TNext_>.Set_Next( const _Next_:IItem0 );
begin
     _Next := _TNext_( _Next_ );
end;

//&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& protected

function TItem0<_TPrev_,_TNext_>.GetPrev :_TPrev_;
begin
     Result := _Prev;
end;

procedure TItem0<_TPrev_,_TNext_>.SetPrev( const Prev_:_TPrev_ );
begin
     _Prev := Prev_;
end;

function TItem0<_TPrev_,_TNext_>.GetNext :_TNext_;
begin
     Result := _Next;
end;

procedure TItem0<_TPrev_,_TNext_>.SetNext( const Next_:_TNext_ );
begin
     _Next := Next_;
end;

end. //######################################################################### ■
