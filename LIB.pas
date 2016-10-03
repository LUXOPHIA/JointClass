unit LIB;

interface //#################################################################### ��

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$�y�^�z

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$�y�N���X�z

     TInterfacedBase = class;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TInterfacedBase

     TInterfacedBase = class( TObject, IUnknown )
     public
       function QueryInterface( const IID_:TGUID; out Obj_ ) :HRESULT; stdcall;
       function _AddRef: Integer; stdcall;
       function _Release: Integer; stdcall;
     end;

implementation //############################################################### ��

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$�y�N���X�z

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TInterfacedBase

function TInterfacedBase._AddRef: Integer;
begin
     Result := -1;
end;

function TInterfacedBase._Release: Integer;
begin
     Result := -1;
end;

function TInterfacedBase.QueryInterface( const IID_:TGUID; out Obj_ ): HRESULT;
const
     E_NOINTERFACE = HResult($80004002);
begin
     if GetInterface( IID_, Obj_ ) then Result := 0
                                   else Result := E_NOINTERFACE;
end;

end. //######################################################################### ��
