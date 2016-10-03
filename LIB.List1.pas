unit LIB.List1;

interface //#################################################################### Å°

uses LIB.List0;

type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$Åyå^Åz

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ÅyÉCÉìÉ^ÉtÉFÅ[ÉXÅz

     IHead1 = interface;
     IKnot1 = interface;
     ITail1 = interface;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IHead1

     IHead1 = interface( IItem0 )
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IKnot1

     IKnot1 = interface( IItem0 )
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ITail1

     ITail1 = interface( IItem0 )
     end;

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ÅyÉNÉâÉXÅz

     THead1<_TNext_:IKnot1> = class;
     TKnot1<_TPrev_:IHead1;_TNext_:ITail1> = class;
     TTail1<_TPrev_:IKnot1> = class;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THead1<_TNext_>

     THead1<_TNext_:IKnot1> = class( TItem0<_TNext_,_TNext_>, IHead1 )
     protected
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKnot1<_TPrev_,_TNext_>

     TKnot1<_TPrev_:IHead1;_TNext_:ITail1> = class( TItem0<_TPrev_,_TNext_>, IKnot1 )
     protected
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TTail1<_TPrev_,_TPrev_>

     TTail1<_TPrev_:IKnot1> = class( TItem0<_TPrev_,_TPrev_>, ITail1 )
     protected
     public
     end;

     //%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TList1<_THead_,_TKnot_,_TTail_>

     TList1<_THead_:IHead1,constructor;
            _TKnot_:IKnot1,constructor;
            _TTail_:ITail1,constructor> = class
     protected
       _Head :_THead_;
       _Knot :_TKnot_;
       _Tail :_TTail_;
     public
       constructor Create;
       destructor Destroy; override;
       ///// ÉvÉçÉpÉeÉB
       property Head :_THead_ read _Head;
       property Knot :_TKnot_ read _Knot;
       property Tail :_TTail_ read _Tail;
     end;

implementation //############################################################### Å°

uses System.SysUtils;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ÅyÉNÉâÉXÅz

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% THead1<_TNext_>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TKnot1<_TPrev_,_TNext_>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TTail1<_TPrev_,_TPrev_>

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TList1<_THead_,_TKnot_,_TTail_>

constructor TList1<_THead_,_TKnot_,_TTail_>.Create;
begin
     inherited;

     _Head := _THead_.Create;
     _Knot := _TKnot_.Create;
     _Tail := _TTail_.Create;

     _Head.Next := _Knot;
     _Knot.Prev := _Head;
     _Knot.Next := _Tail;
     _Tail.Prev := _Knot;
end;

destructor TList1<_THead_,_TKnot_,_TTail_>.Destroy;
begin
     FreeAndNil( _Head );
     FreeAndNil( _Knot );
     FreeAndNil( _Tail );

     inherited;
end;

end. //######################################################################### Å°
