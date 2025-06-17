�(
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\VentanaEmergentePersonalizada.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
{ 
public 

partial 
class )
VentanaEmergentePersonalizada 6
:7 8
Window9 ?
{ 
public 
bool 
? 
ConfirmacionUsuario (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
enum 

DialogType 
{ 	
Success 
, 
Error 
, 
Warning 
, 
Confirmation 
} 	
public )
VentanaEmergentePersonalizada ,
(, -
string- 3
mensaje4 ;
,; <

DialogType= G
tipoH L
)L M
{ 	
InitializeComponent   
(    
)    !
;  ! "
txtb_Mensaje!! 
.!! 
Text!! 
=!! 
mensaje!!  '
;!!' (
EstablecerEstilo"" 
("" 
tipo"" !
)""! "
;""" #
}## 	
private%% 
void%% 
EstablecerEstilo%% %
(%%% &

DialogType%%& 0
tipo%%1 5
)%%5 6
{&& 	
switch'' 
('' 
tipo'' 
)'' 
{(( 
case)) 

DialogType)) 
.))  
Success))  '
:))' (
	img_Icono++ 
.++ 
Source++ $
=++% &
new++' *
BitmapImage+++ 6
(++6 7
new++7 :
Uri++; >
(++> ?
$str++? d
,++d e
UriKind++f m
.++m n
Relative++n v
)++v w
)++w x
;++x y
break,, 
;,, 
case-- 

DialogType-- 
.--  
Warning--  '
:--' (
	img_Icono// 
.// 
Source// $
=//% &
new//' *
BitmapImage//+ 6
(//6 7
new//7 :
Uri//; >
(//> ?
$str//? c
,//c d
UriKind//e l
.//l m
Relative//m u
)//u v
)//v w
;//w x
break00 
;00 
case22 

DialogType22 
.22  
Error22  %
:22% &
	img_Icono44 
.44 
Source44 $
=44% &
new44' *
BitmapImage44+ 6
(446 7
new447 :
Uri44; >
(44> ?
$str44? b
,44b c
UriKind44d k
.44k l
Relative44l t
)44t u
)44u v
;44v w
break55 
;55 
case66 

DialogType66 
.66  
Confirmation66  ,
:66, -
	img_Icono88 
.88 
Source88 $
=88% &
new88' *
BitmapImage88+ 6
(886 7
new887 :
Uri88; >
(88> ?
$str88? e
,88e f
UriKind88g n
.88n o
Relative88o w
)88w x
)88x y
;88y z
brd_BotonSi99 
.99  

Visibility99  *
=99+ ,

Visibility99- 7
.997 8
Visible998 ?
;99? @
brd_BotonNo:: 
.::  

Visibility::  *
=::+ ,

Visibility::- 7
.::7 8
Visible::8 ?
;::? @
brd_BotonAceptar;; $
.;;$ %

Visibility;;% /
=;;0 1

Visibility;;2 <
.;;< =
	Collapsed;;= F
;;;F G
break<< 
;<< 
}== 
}>> 	
privateBB 
voidBB 
CerrarBB 
(BB 
objectBB "
senderBB# )
,BB) *
RoutedEventArgsBB+ :
eBB; <
)BB< =
{CC 	
thisDD 
.DD 
CloseDD 
(DD 
)DD 
;DD 
}EE 	
privateGG 
voidGG 
AceptarGG 
(GG 
objectGG #
senderGG$ *
,GG* +
RoutedEventArgsGG, ;
eGG< =
)GG= >
{HH 	
ConfirmacionUsuarioII 
=II  !
trueII" &
;II& '
thisJJ 
.JJ 
DialogResultJJ 
=JJ 
trueJJ  $
;JJ$ %
thisKK 
.KK 
CloseKK 
(KK 
)KK 
;KK 
}LL 	
privateNN 
voidNN 
CancelarNN 
(NN 
objectNN $
senderNN% +
,NN+ ,
RoutedEventArgsNN- <
eNN= >
)NN> ?
{OO 	
ConfirmacionUsuarioPP 
=PP  !
falsePP" '
;PP' (
thisQQ 
.QQ 
DialogResultQQ 
=QQ 
falseQQ  %
;QQ% &
thisRR 
.RR 
CloseRR 
(RR 
)RR 
;RR 
}SS 	
}UU 
}VV ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\VisualizarPerfilAmigo.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloUsuario% 2
{ 
public 

partial 
class !
VisualizarPerfilAmigo .
:/ 0
Page1 5
{   
private## 
static## 
readonly## 
LoggerManager##  -
_logger##. 5
=##6 7
new##8 ;
LoggerManager##< I
(##I J
typeof##J P
(##P Q
Login##Q V
)##V W
)##W X
;##X Y
private$$ 
Frame$$ 
_frame$$ 
;$$ 
private%% 
UsuarioPerfil%% 
_usuario%% &
;%%& '
public&& !
VisualizarPerfilAmigo&& $
(&&$ %
Frame&&% *
frame&&+ 0
,&&0 1
UsuarioPerfil&&2 ?
usuario&&@ G
)&&G H
{'' 	
InitializeComponent(( 
(((  
)((  !
;((! "
_frame)) 
=)) 
frame)) 
;)) 
_usuario** 
=** 
usuario** 
;**  
VerificarSeguimiento++  
(++  !
usuario++! (
.++( )
IdUsuarioRegistrado++) <
)++< =
;++= >$
MostrarInformacionPerfil,, $
(,,$ %
),,% &
;,,& '
CargarDocumentos-- 
(-- 
)-- 
;-- 
}// 	
private11 
void11 '
MostrarMensajePersonalizado11 0
(110 1
string111 7
message118 ?
,11? @

DialogType11A K
type11L P
)11P Q
{22 	
var33 
dialog33 
=33 
new33 )
VentanaEmergentePersonalizada33 :
(33: ;
message33; B
,33B C
type33D H
)33H I
{44 
Owner55 
=55 
Window55 
.55 
	GetWindow55 (
(55( )
this55) -
)55- .
}66 
;66 
dialog77 
.77 

ShowDialog77 
(77 
)77 
;77  
}88 	
private:: 
async:: 
void:: 
CargarDocumentos:: +
(::+ ,
)::, -
{;; 	"
itmc_DocumentosControl<< "
.<<" #
ItemsSource<<# .
=<</ 0
null<<1 5
;<<5 6
try>> 
{?? 
string@@ 
token@@ 
=@@ 
PerfilSingleton@@ .
.@@. /
Instance@@/ 7
.@@7 8
TokenJwt@@8 @
;@@@ A
intAA 
idUsuarioRegistradoAA '
=AA( )
_usuarioAA* 2
.AA2 3
IdUsuarioRegistradoAA3 F
;AAF G
varCC 
	respuestaCC 
=CC 
awaitCC  %
PublicacionServicioCC& 9
.CC9 :)
BuscarPublicacionesPorUsuarioCC: W
(CCW X
idUsuarioRegistradoCCX k
,CCk l
tokenCCm r
)CCr s
;CCs t
switchEE 
(EE 
	respuestaEE !
.EE! "
	ResultadoEE" +
)EE+ ,
{FF 
caseGG 
$numGG 
:GG 
varHH #
listaPublicacionesVistaHH 3
=HH4 5
newHH6 9
ListHH: >
<HH> ?
PublicacionVistaHH? O
>HHO P
(HHP Q
)HHQ R
;HHR S
foreachJJ 
(JJ  !
varJJ! $
publicacionJJ% 0
inJJ1 3
	respuestaJJ4 =
.JJ= >
DatosJJ> C
)JJC D
{KK 
byteLL  
[LL  !
]LL! "
imagenBinariaLL# 0
=LL1 2
ArrayLL3 8
.LL8 9
EmptyLL9 >
<LL> ?
byteLL? C
>LLC D
(LLD E
)LLE F
;LLF G
tryNN 
{OO 
varPP  #
grpcPP$ (
=PP) *
newPP+ .$
FileServiceClientHandlerPP/ G
(PPG H
)PPH I
;PPI J
varQQ  #
(QQ$ %
imagenQQ% +
,QQ+ ,
_QQ- .
)QQ. /
=QQ0 1
awaitQQ2 7
grpcQQ8 <
.QQ< =
DownloadCoverAsyncQQ= O
(QQO P
publicacionQQP [
.QQ[ \
RutaQQ\ `
)QQ` a
;QQa b
imagenBinariaRR  -
=RR. /
imagenRR0 6
??RR7 9
ArrayRR: ?
.RR? @
EmptyRR@ E
<RRE F
byteRRF J
>RRJ K
(RRK L
)RRL M
;RRM N
}SS 
catchTT !
(TT" #
	ExceptionTT# ,
exTT- /
)TT/ 0
{UU 
_loggerVV  '
.VV' (
LogErrorVV( 0
(VV0 1
exVV1 3
)VV3 4
;VV4 5'
MostrarMensajePersonalizadoWW  ;
(WW; <
$str	WW< �
,
WW� �

DialogType
WW� �
.
WW� �
Error
WW� �
)
WW� �
;
WW� �
}XX #
listaPublicacionesVistaZZ 3
.ZZ3 4
AddZZ4 7
(ZZ7 8
newZZ8 ;
PublicacionVistaZZ< L
{[[ 
Titulo\\  &
=\\' (
publicacion\\) 4
.\\4 5
Titulo\\5 ;
,\\; <
Descripcion]]  +
=]], -
publicacion]]. 9
.]]9 :
ResuContenido]]: G
,]]G H
Autor^^  %
=^^& '
publicacion^^( 3
.^^3 4
NombreCompleto^^4 B
,^^B C
Fecha__  %
=__& '
publicacion__( 3
.__3 4
Fecha__4 9
.__9 :
ToString__: B
(__B C
$str__C U
)__U V
,__V W
Likes``  %
=``& '
publicacion``( 3
.``3 4
NumeroLiker``4 ?
,``? @
	Descargasaa  )
=aa* +
publicacionaa, 7
.aa7 8
NumeroDescargasaa8 G
,aaG H
Vistasbb  &
=bb' (
publicacionbb) 4
.bb4 5!
NumeroVisualizacionesbb5 J
,bbJ K
Imagencc  &
=cc' (
ConvertirABitmapcc) 9
(cc9 :
imagenBinariacc: G
)ccG H
}dd 
)dd 
;dd 
}ee 
ifgg 
(gg #
listaPublicacionesVistagg 3
.gg3 4
Countgg4 9
==gg: <
$numgg= >
)gg> ?
{hh  
grd_SinPublicacionesii 0
.ii0 1

Visibilityii1 ;
=ii< =

Visibilityii> H
.iiH I
VisibleiiI P
;iiP Q
}jj "
itmc_DocumentosControlll .
.ll. /
ItemsSourcell/ :
=ll; <#
listaPublicacionesVistall= T
;llT U
breakmm 
;mm 
caseoo 
$numoo 
:oo  
grd_SinPublicacionespp ,
.pp, -

Visibilitypp- 7
=pp8 9

Visibilitypp: D
.ppD E
VisibleppE L
;ppL M
breakqq 
;qq 
casess 
(ss 
intss 
)ss 
HttpStatusCodess ,
.ss, -
Unauthorizedss- 9
:ss9 :'
MostrarMensajePersonalizadott 3
(tt3 4
$strtt4 q
,ttq r

DialogTypetts }
.tt} ~
Error	tt~ �
)
tt� �
;
tt� �
NavigationServiceuu )
.uu) *
Navigateuu* 2
(uu2 3
newuu3 6
Loginuu7 <
(uu< =
)uu= >
)uu> ?
;uu? @
PerfilSingletonvv '
.vv' (
Instancevv( 0
.vv0 1
Resetvv1 6
(vv6 7
)vv7 8
;vv8 9
breakww 
;ww 
caseyy 
$numyy 
:yy '
MostrarMensajePersonalizadozz 3
(zz3 4
$strzz4 f
,zzf g

DialogTypezzh r
.zzr s
Errorzzs x
)zzx y
;zzy z
break{{ 
;{{ 
default}} 
:}} '
MostrarMensajePersonalizado~~ 3
(~~3 4
$"~~4 6
$str~~6 =
{~~= >
	respuesta~~> G
.~~G H
Mensaje~~H O
}~~O P
"~~P Q
,~~Q R

DialogType~~S ]
.~~] ^
Warning~~^ e
)~~e f
;~~f g
break 
; 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, b
,
��b c

DialogType
��d n
.
��n o
Error
��o t
)
��t u
;
��u v
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� &
MostrarInformacionPerfil
�� 3
(
��3 4
)
��4 5
{
�� 	
try
�� 
{
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
TokenJwt
��8 @
;
��@ A
int
�� !
idUsuarioRegistrado
�� '
=
��( )
_usuario
��* 2
.
��2 3!
IdUsuarioRegistrado
��3 F
;
��F G
var
�� 
	respuesta
�� 
=
�� 
await
��  %
PerfilServicio
��& 4
.
��4 5
BuscarPerfilPorId
��5 F
(
��F G!
idUsuarioRegistrado
��G Z
,
��Z [
token
��\ a
)
��a b
;
��b c
switch
�� 
(
�� 
	respuesta
�� !
.
��! "
	Resultado
��" +
)
��+ ,
{
�� 
case
�� 
$num
�� 
:
�� 
var
�� 
listaPerfiles
�� )
=
��* +
new
��, /
List
��0 4
<
��4 5
UsuarioPerfil
��5 B
>
��B C
(
��C D
)
��D E
;
��E F
byte
�� 
[
�� 
]
�� 
imagenBinaria
�� ,
=
��- .
Array
��/ 4
.
��4 5
Empty
��5 :
<
��: ;
byte
��; ?
>
��? @
(
��@ A
)
��A B
;
��B C
try
�� 
{
�� 
var
�� 
grpc
��  $
=
��% &
new
��' *&
FileServiceClientHandler
��+ C
(
��C D
)
��D E
;
��E F
var
�� 
(
��  !
imagen
��! '
,
��' (
_
��) *
)
��* +
=
��, -
await
��. 3
grpc
��4 8
.
��8 9 
DownloadImageAsync
��9 K
(
��K L
	respuesta
��L U
.
��U V
Datos
��V [
.
��[ \

FotoPerfil
��\ f
)
��f g
;
��g h
imagenBinaria
�� )
=
��* +
imagen
��, 2
??
��3 5
Array
��6 ;
.
��; <
Empty
��< A
<
��A B
byte
��B F
>
��F G
(
��G H
)
��H I
;
��I J
}
�� 
catch
�� 
(
�� 
	Exception
�� (
ex
��) +
)
��+ ,
{
�� 
_logger
�� #
.
��# $
LogError
��$ ,
(
��, -
ex
��- /
)
��/ 0
;
��0 1)
MostrarMensajePersonalizado
�� 7
(
��7 8
$str
��8 }
,
��} ~

DialogType�� �
.��� �
Error��� �
)��� �
;��� �
}
�� 
UsuarioPerfil
�� %
usuario
��& -
=
��. /
new
��0 3
UsuarioPerfil
��4 A
{
�� !
IdUsuarioRegistrado
�� /
=
��0 1
	respuesta
��2 ;
.
��; <
Datos
��< A
.
��A B!
IdUsuarioRegistrado
��B U
,
��U V
Nombre
�� "
=
��# $
	respuesta
��% .
.
��. /
Datos
��/ 4
.
��4 5
Nombre
��5 ;
,
��; <
PrimerApellido
�� *
=
��+ ,
	respuesta
��- 6
.
��6 7
Datos
��7 <
.
��< =
PrimerApellido
��= K
,
��K L
SegundoApellido
�� +
=
��, -
	respuesta
��. 7
.
��7 8
Datos
��8 =
.
��= >
SegundoApellido
��> M
,
��M N
FotoPerfilRuta
�� *
=
��+ ,
	respuesta
��- 6
.
��6 7
Datos
��7 <
.
��< =

FotoPerfil
��= G
,
��G H
NombreUsuario
�� )
=
��* +
	respuesta
��, 5
.
��5 6
Datos
��6 ;
.
��; <
NombreUsuario
��< I
,
��I J
NombreInstitucion
�� -
=
��. /
	respuesta
��0 9
.
��9 :
Datos
��: ?
.
��? @
NombreInstitucion
��@ Q
,
��Q R
NivelEducativo
�� *
=
��+ ,
	respuesta
��- 6
.
��6 7
Datos
��7 <
.
��< =
NivelEducativo
��= K
,
��K L
	Seguidore
�� %
=
��& '
	respuesta
��( 1
.
��1 2
Datos
��2 7
.
��7 8
NumeroSeguidores
��8 H
,
��H I
Seguidos
�� $
=
��% &
	respuesta
��' 0
.
��0 1
Datos
��1 6
.
��6 7
NumeroSeguidos
��7 E
,
��E F
Imagen
�� "
=
��# $
ConvertirABitmap
��% 5
(
��5 6
imagenBinaria
��6 C
)
��C D
}
�� 
;
�� 
LlenarCampos
�� $
(
��$ %
usuario
��% ,
)
��, -
;
��- .
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
Unauthorized
��- 9
:
��9 :)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 q
,
��q r

DialogType
��s }
.
��} ~
Error��~ �
)��� �
;��� �
NavigationService
�� )
.
��) *
Navigate
��* 2
(
��2 3
new
��3 6
Login
��7 <
(
��< =
)
��= >
)
��> ?
;
��? @
PerfilSingleton
�� '
.
��' (
Instance
��( 0
.
��0 1
Reset
��1 6
(
��6 7
)
��7 8
;
��8 9
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 t
,
��t u

DialogType��v �
.��� �
Error��� �
)��� �
;��� �
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$"
��4 6
$str
��6 =
{
��= >
	respuesta
��> G
.
��G H
Mensaje
��H O
}
��O P
"
��P Q
,
��Q R

DialogType
��S ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
break
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, J
,
��J K

DialogType
��L V
.
��V W
Error
��W \
)
��\ ]
;
��] ^
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� "
VerificarSeguimiento
�� /
(
��/ 0
int
��0 3!
idUsuarioRegistrado
��4 G
)
��G H
{
�� 	
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
var
�� "
respuestaSeguimiento
�� $
=
��% &
await
��' ,
PerfilServicio
��- ;
.
��; <"
VerificarSeguimiento
��< P
(
��P Q!
idUsuarioRegistrado
��Q d
,
��d e
token
��f k
)
��k l
;
��l m
if
�� 
(
�� "
respuestaSeguimiento
�� $
.
��$ %
Estado
��% +
==
��, .
$num
��/ 2
)
��2 3
{
�� 

brd_Seguir
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =
}
�� 
else
�� 
if
�� 
(
�� "
respuestaSeguimiento
�� )
.
��) *
Estado
��* 0
==
��1 3
$num
��4 7
)
��7 8
{
�� 

brd_Seguir
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
Visible
��3 :
;
��: ;
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, P
,
��P Q

DialogType
��R \
.
��\ ]
Warning
��] d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
LlenarCampos
�� !
(
��! "
UsuarioPerfil
��" /
usuario
��0 7
)
��7 8
{
�� 	 
txt_NombreCompleto
�� 
.
�� 
Text
�� #
=
��$ %
usuario
��& -
.
��- .
NombreCompleto
��. <
;
��< =
txt_Usuario
�� 
.
�� 
Text
�� 
=
�� 
usuario
�� &
.
��& '
NombreUsuario
��' 4
;
��4 5 
txt_NivelEducativo
�� 
.
�� 
Text
�� #
=
��$ %
usuario
��& -
.
��- .
NivelEducativo
��. <
;
��< =
txt_Institucion
�� 
.
�� 
Text
��  
=
��! "
usuario
��# *
.
��* +
NombreInstitucion
��+ <
;
��< =
txt_Seguidores
�� 
.
�� 
Text
�� 
=
��  !
usuario
��" )
.
��) *
	Seguidore
��* 3
.
��3 4
ToString
��4 <
(
��< =
)
��= >
;
��> ?
txt_Seguidos
�� 
.
�� 
Text
�� 
=
�� 
usuario
��  '
.
��' (
Seguidos
��( 0
.
��0 1
ToString
��1 9
(
��9 :
)
��: ;
;
��; <
img_FotoPerfil
�� 
.
�� 
ImageSource
�� &
=
��' (
usuario
��) 0
.
��0 1
Imagen
��1 7
;
��7 8
}
�� 	
public
�� 
BitmapImage
�� 
?
�� 
ConvertirABitmap
�� ,
(
��, -
byte
��- 1
[
��1 2
]
��2 3
datos
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
datos
�� 
==
�� 
null
�� 
||
��  
datos
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
return
��4 :
null
��; ?
;
��? @
using
�� 
var
�� 
stream
�� 
=
�� 
new
�� "
MemoryStream
��# /
(
��/ 0
datos
��0 5
)
��5 6
;
��6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
RegresarAlLaComunidad
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9"
MouseButtonEventArgs
��: N
e
��O P
)
��P Q
{
�� 	
_frame
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� 
BuscarPerfil
��  ,
(
��, -
_frame
��- 3
)
��3 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
async
�� 
void
�� 
SeguirPerfil
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
�� 	
try
�� 
{
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
TokenJwt
��8 @
;
��@ A
int
�� 
idUsuarioASeguir
�� $
=
��% &
_usuario
��' /
.
��/ 0!
IdUsuarioRegistrado
��0 C
;
��C D
var
�� 
	respuesta
�� 
=
�� 
await
��  %
PerfilServicio
��& 4
.
��4 5
SeguirUsuario
��5 B
(
��B C
idUsuarioASeguir
��C S
,
��S T
token
��U Z
)
��Z [
;
��[ \
if
�� 
(
�� 
	respuesta
�� 
.
�� 
Estado
�� $
==
��% '
$num
��( +
)
��+ ,
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 N
,
��N O

DialogType
��P Z
.
��Z [
Success
��[ b
)
��b c
;
��c d

brd_Seguir
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
if
�� 
(
�� 
int
�� 
.
�� 
TryParse
�� $
(
��$ %
txt_Seguidores
��% 3
.
��3 4
Text
��4 8
,
��8 9
out
��: =
int
��> A

seguidores
��B L
)
��L M
)
��M N
{
�� 
txt_Seguidores
�� &
.
��& '
Text
��' +
=
��, -
(
��. /

seguidores
��/ 9
+
��: ;
$num
��< =
)
��= >
.
��> ?
ToString
��? G
(
��G H
)
��H I
;
��I J
}
��  
EnviarNotificacion
�� &
(
��& '
)
��' (
;
��( )
}
�� 
else
�� 
if
�� 
(
�� 
	respuesta
�� "
.
��" #
Estado
��# )
==
��* ,
$num
��- 0
)
��0 1
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 T
,
��T U

DialogType
��V `
.
��` a
Warning
��a h
)
��h i
;
��i j

brd_Seguir
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$"
��0 2
$str
��2 9
{
��9 :
	respuesta
��: C
.
��C D
Mensaje
��D K
}
��K L
"
��L M
,
��M N

DialogType
��O Y
.
��Y Z
Warning
��Z a
)
��a b
;
��b c
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, R
,
��R S

DialogType
��T ^
.
��^ _
Error
��_ d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
async
�� 
void
��  
EnviarNotificacion
�� -
(
��- .
)
��. /
{
�� 	
try
�� 
{
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
TokenJwt
��8 @
;
��@ A
int
�� 
idOrigen
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8!
IdUsuarioRegistrado
��8 K
;
��K L
string
�� 
	idDestino
��  
=
��! "
_usuario
��# +
.
��+ ,!
IdUsuarioRegistrado
��, ?
.
��? @
ToString
��@ H
(
��H I
)
��I J
;
��J K
var
�� 
	respuesta
�� 
=
�� 
await
��  %
PerfilServicio
��& 4
.
��4 5
ObtenerSeguidores
��5 F
(
��F G
token
��G L
)
��L M
;
��M N
if
�� 
(
�� 
	respuesta
�� 
?
�� 
.
�� 
Datos
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
List
�� 
<
�� 
int
�� 
>
�� 
idsSeguidores
�� +
=
��, -
	respuesta
��. 7
.
��7 8
Datos
��8 =
.
�� 
Select
�� 
(
��  
s
��  !
=>
��" $
s
��% &
.
��& '!
IdUsuarioRegistrado
��' :
)
��: ;
.
�� 
ToList
�� 
(
��  
)
��  !
;
��! "
var
�� 
notificacion
�� $
=
��% &
new
��' *
{
�� 
accion
�� 
=
��  
$str
��! /
,
��/ 0
UsuarioOrigenId
�� '
=
��( )
idOrigen
��* 2
,
��2 3
UsuarioDestinoId
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4
string
��4 :
>
��: ;
{
��< =
	idDestino
��> G
}
��H I
,
��I J
Titulo
�� 
=
��  
$str
��! 1
,
��1 2
Mensaje
�� 
=
��  !
$"
��" $
$str
��$ %
{
��% &
PerfilSingleton
��& 5
.
��5 6
Instance
��6 >
.
��> ?
NombreUsuario
��? L
}
��L M
$str
��M d
"
��d e
,
��e f
Tipo
�� 
=
�� 
$str
�� +
,
��+ ,
FechaCreacion
�� %
=
��& '
DateTime
��( 0
.
��0 1
Now
��1 4
.
��4 5
ToString
��5 =
(
��= >
$str
��> S
)
��S T
}
�� 
;
�� 
string
�� 
json
�� 
=
��  !
JsonConvert
��" -
.
��- .
SerializeObject
��. =
(
��= >
notificacion
��> J
)
��J K
;
��K L
await
�� 
App
�� 
.
�� "
SocketNotificaciones
�� 2
.
��2 3 
EnviarMensajeAsync
��3 E
(
��E F
json
��F J
)
��J K
;
��K L
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
$"
��" $
$str
��$ C
{
��C D
ex
��D F
.
��F G
Message
��G N
}
��N O
"
��O P
)
��P Q
;
��Q R
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\RegistrarUsuario.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloUsuario% 2
{ 
public 

partial 
class 
RegistrarUsuario )
:* +
Page, 0
{ 
private 
List 
< 
Institucion  
>  !"
_todasLasInstituciones" 8
=9 :
new; >
(> ?
)? @
;@ A
private 
bool 
_cargandoDatos #
=$ %
false& +
;+ ,
public   
RegistrarUsuario   
(    
)    !
{!! 	
InitializeComponent"" 
(""  
)""  !
;""! "
this## 
.## 
Loaded## 
+=## "
RegistrarUsuarioLoaded## 1
;##1 2
}%% 	
private'' 
async'' 
void'' "
RegistrarUsuarioLoaded'' 1
(''1 2
object''2 8
sender''9 ?
,''? @
RoutedEventArgs''A P
e''Q R
)''R S
{(( 	
await)) "
InicializarCombosAsync)) (
())( )
)))) *
;))* +
}** 	
private,, 
async,, 
Task,, "
InicializarCombosAsync,, 1
(,,1 2
),,2 3
{-- 	
_cargandoDatos.. 
=.. 
true.. !
;..! "
List00 
<00 
string00 
>00 
niveles00  
=00! "
new00# &
(00& '
)00' (
{00) *
$str00+ 9
,009 :
$str00; H
}00I J
;00J K
cmb_NivelEducativo11 
.11 
ItemsSource11 *
=11+ ,
niveles11- 4
;114 5
var33 
	respuesta33 
=33 
await33 !
CatalogosServicio33" 3
.333 4%
ObtenerInstitucionesAsync334 M
(33M N
)33N O
;33O P
if55 
(55 
	respuesta55 
.55 
	Resultado55 #
!=55$ &
(55' (
int55( +
)55+ ,
HttpStatusCode55, :
.55: ;
OK55; =
||55> @
	respuesta55A J
.55J K
Datos55K P
==55Q S
null55T X
)55X Y
{66 '
MostrarMensajePersonalizado77 +
(77+ ,
$str77, i
,77i j

DialogType77k u
.77u v
Error77v {
)77{ |
;77| }
Login88 
login88 
=88 
new88 !
(88! "
)88" #
;88# $
this99 
.99 
NavigationService99 &
?99& '
.99' (
Navigate99( 0
(990 1
login991 6
)996 7
;997 8
return:: 
;:: 
};; "
_todasLasInstituciones== "
===# $
	respuesta==% .
.==. /
Datos==/ 4
;==4 5
cmb_Institución?? 
.?? 
ItemsSource?? '
=??( )"
_todasLasInstituciones??* @
;??@ A
cmb_Institución@@ 
.@@ 
DisplayMemberPath@@ -
=@@. /
$str@@0 C
;@@C D
cmb_InstituciónAA 
.AA 
SelectedValuePathAA -
=AA. /
$strAA0 ?
;AA? @
_cargandoDatosCC 
=CC 
falseCC "
;CC" #
}DD 	
privateFF 
voidFF '
Cmb_NivelEducativoSeleccionFF 0
(FF0 1
objectFF1 7
senderFF8 >
,FF> ?%
SelectionChangedEventArgsFF@ Y
eFFZ [
)FF[ \
{GG 	
ifHH 
(HH 
_cargandoDatosHH 
)HH 
returnHH  &
;HH& '
stringJJ 
nivelSeleccionadoJJ $
=JJ% &
cmb_NivelEducativoJJ' 9
.JJ9 :
SelectedItemJJ: F
asJJG I
stringJJJ P
;JJP Q
ifKK 
(KK 
!KK 
stringKK 
.KK 
IsNullOrEmptyKK %
(KK% &
nivelSeleccionadoKK& 7
)KK7 8
)KK8 9
{LL 
varMM 
	filtradasMM 
=MM "
_todasLasInstitucionesMM  6
.NN 
WhereNN 
(NN 
iNN 
=>NN 
iNN  !
.NN! "
NivelEducativoNN" 0
==NN1 3
nivelSeleccionadoNN4 E
)NNE F
.OO 
ToListOO 
(OO 
)OO 
;OO 
grd_InstitucionPP 
.PP  

VisibilityPP  *
=PP+ ,

VisibilityPP- 7
.PP7 8
VisiblePP8 ?
;PP? @
cmb_InstituciónQQ 
.QQ  
ItemsSourceQQ  +
=QQ, -
	filtradasQQ. 7
;QQ7 8
cmb_InstituciónRR 
.RR  
SelectedIndexRR  -
=RR. /
-RR0 1
$numRR1 2
;RR2 3
}SS 
}TT 	
privateVV 
voidVV $
Cmb_InstitucionSeleccionVV -
(VV- .
objectVV. 4
senderVV5 ;
,VV; <%
SelectionChangedEventArgsVV= V
eVVW X
)VVX Y
{WW 	
ifXX 
(XX 
_cargandoDatosXX 
)XX 
returnXX  &
;XX& '
ifZZ 
(ZZ 
cmb_InstituciónZZ 
.ZZ  
SelectedItemZZ  ,
isZZ- /
InstitucionZZ0 ;
seleccionadaZZ< H
)ZZH I
{[[ 
cmb_NivelEducativo\\ "
.\\" #
SelectedItem\\# /
=\\0 1
seleccionada\\2 >
.\\> ?
NivelEducativo\\? M
;\\M N
}]] 
}^^ 	
privatebb 
voidbb '
MostrarMensajePersonalizadobb 0
(bb0 1
stringbb1 7
messagebb8 ?
,bb? @

DialogTypebbA K
typebbL P
)bbP Q
{cc 	
vardd 
dialogdd 
=dd 
newdd )
VentanaEmergentePersonalizadadd :
(dd: ;
messagedd; B
,ddB C
typeddD H
)ddH I
{ee 
Ownerff 
=ff 
Windowff 
.ff 
	GetWindowff (
(ff( )
thisff) -
)ff- .
}gg 
;gg 
dialoghh 
.hh 

ShowDialoghh 
(hh 
)hh 
;hh  
}ii 	
privatekk 
voidkk 
BtnRegistrarkk !
(kk! "
objectkk" (
senderkk) /
,kk/ 0
RoutedEventArgskk1 @
ekkA B
)kkB C
{ll 	!
RegresarBordeOriginalmm !
(mm! "
)mm" #
;mm# $
ifnn 
(nn 
ValidarCamposVaciosnn #
(nn# $
)nn$ %
)nn% &
{oo 
ifqq 
(qq 
VerificarCamposqq #
(qq# $
)qq$ %
)qq% &
{rr 
UsuarioRegistross #
nuevoUsuarioss$ 0
=ss1 2
CrearPerfilss3 >
(ss> ?
)ss? @
;ss@ A
RespuestaDeLaAPItt $
(tt$ %
nuevoUsuariott% 1
)tt1 2
;tt2 3
}uu 
elsevv 
{ww '
MostrarMensajePersonalizadoxx /
(xx/ 0
$str	xx0 �
,
xx� �

DialogType
xx� �
.
xx� �
Warning
xx� �
)
xx� �
;
xx� �
}yy 
}zz 
else{{ 
{|| '
MostrarMensajePersonalizado}} +
(}}+ ,
$str}}, `
,}}` a

DialogType}}b l
.}}l m
Warning}}m t
)}}t u
;}}u v
}~~ 
}
�� 	
private
�� 
async
�� 
void
�� 
RespuestaDeLaAPI
�� +
(
��+ ,
UsuarioRegistro
��, ;
usuarioRegistro
��< K
)
��K L
{
�� 	
	Respuesta
�� 
	respuesta
�� 
=
��  !
await
��" '
UsuarioServicio
��( 7
.
��7 8#
RegistrarUsuarioAsync
��8 M
(
��M N
usuarioRegistro
��N ]
)
��] ^
;
��^ _
switch
�� 
(
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
)
��$ %
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� )
.
��) *
OK
��* ,
:
��, -)
MostrarMensajePersonalizado
�� /
(
��/ 0
$str��0 �
,��� �

DialogType��� �
.��� �
Success��� �
)��� �
;��� �
Login
�� 
login
�� 
=
��  !
new
��" %
(
��% &
)
��& '
;
��' (
this
�� 
.
�� 
NavigationService
�� *
.
��* +
Navigate
��+ 3
(
��3 4
login
��4 9
)
��9 :
;
��: ;
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� )
.
��) *
Conflict
��* 2
:
��2 3)
MostrarMensajePersonalizado
�� /
(
��/ 0
$"
��0 2
{
��2 3
	respuesta
��3 <
.
��< =
Mensaje
��= D
}
��D E
$str
��E `
"
��` a
,
��a b

DialogType
��c m
.
��m n
Warning
��n u
)
��u v
;
��v w
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� )
.
��) *!
InternalServerError
��* =
:
��= >)
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 b
,
��b c

DialogType
��d n
.
��n o
Error
��o t
)
��t u
;
��u v
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
	respuesta
��0 9
.
��9 :
Mensaje
��: A
,
��A B

DialogType
�� "
.
��" #
Error
��# (
)
�� 
;
�� 
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
UsuarioRegistro
�� 
CrearPerfil
��  +
(
��+ ,
)
��, -
{
�� 	
UsuarioRegistro
�� 
perfil
�� "
=
��# $
new
��% (
(
��( )
)
��) *
;
��* +
perfil
�� 
.
�� 
Correo
�� 
=
�� 
txtb_Correo
�� '
.
��' (
Text
��( ,
;
��, -
string
�� 
contrasenia
�� 
=
��  
isPasswordVisible
��! 2
?
��3 4$
txt_ContraseñaVisible
��5 J
.
��J K
Text
��K O
:
��P Q
pwb_PasswordBox
��R a
.
��a b
Password
��b j
;
��j k
string
�� 
hashedPassword
�� !
=
��" #
Hasher
��$ *
.
��* +

HashToSHA2
��+ 5
(
��5 6
contrasenia
��6 A
)
��A B
;
��B C
perfil
�� 
.
�� 
Contrasenia
�� 
=
��  
hashedPassword
��! /
;
��/ 0
perfil
�� 
.
�� 
NombreUsuario
��  
=
��! "
txtb_Usuario
��# /
.
��/ 0
Text
��0 4
.
��4 5
Trim
��5 9
(
��9 :
)
��: ;
;
��; <
perfil
�� 
.
�� 
Nombre
�� 
=
�� 
txtb_Nombre
�� '
.
��' (
Text
��( ,
.
��, -
Trim
��- 1
(
��1 2
)
��2 3
;
��3 4
perfil
�� 
.
�� 
PrimerApellido
�� !
=
��" #!
txtb_PrimerApellido
��$ 7
.
��7 8
Text
��8 <
.
��< =
Trim
��= A
(
��A B
)
��B C
;
��C D
perfil
�� 
.
�� 
SegundoApellido
�� "
=
��# $"
txtb_SegundoApellido
��% 9
.
��9 :
Text
��: >
.
��> ?
Trim
��? C
(
��C D
)
��D E
;
��E F
string
�� 
fotoPorDefecto
�� !
=
��" #
$str
��$ =
;
��= >
perfil
�� 
.
�� 

FotoPerfil
�� 
=
�� 
fotoPorDefecto
��  .
;
��. /
if
�� 
(
�� 
cmb_Institución
�� 
.
��  
SelectedItem
��  ,
is
��- /
Institucion
��0 ;
seleccionada
��< H
)
��H I
{
�� 
perfil
�� 
.
�� 
IdInstitucion
�� $
=
��% &
seleccionada
��' 3
.
��3 4
IdInstitucion
��4 A
;
��A B
}
�� 
return
�� 
perfil
�� 
;
�� 
}
�� 	
public
�� 
void
�� #
RegresarBordeOriginal
�� )
(
��) *
)
��* +
{
�� 	
SolidColorBrush
�� 
verde
�� !
=
��" #
new
��$ '
(
��( )
(
��) *
Color
��* /
)
��/ 0
ColorConverter
��0 >
.
��> ?
ConvertFromString
��? P
(
��P Q
$str
��Q Z
)
��Z [
)
��[ \
;
��\ ]

brd_Nombre
�� 
.
�� 
BorderBrush
�� "
=
��# $
verde
��% *
;
��* + 
brd_PrimerApellido
�� 
.
�� 
BorderBrush
�� *
=
��+ ,
verde
��- 2
;
��2 3!
brd_SegundoApellido
�� 
.
��  
BorderBrush
��  +
=
��, -
verde
��. 3
;
��3 4

brd_Correo
�� 
.
�� 
BorderBrush
�� "
=
��# $
verde
��% *
;
��* +
brd_Usuario
�� 
.
�� 
BorderBrush
�� #
=
��$ %
verde
��& +
;
��+ ,
brd_Contraseña
�� 
.
�� 
BorderBrush
�� &
=
��' (
verde
��) .
;
��. / 
brd_NivelEducativo
�� 
.
�� 
BorderBrush
�� *
=
��+ ,
verde
��- 2
;
��2 3
brd_Institucion
�� 
.
�� 
BorderBrush
�� '
=
��( )
verde
��* /
;
��/ 0
}
�� 	
public
�� 
bool
�� 
VerificarCampos
�� #
(
��# $
)
��$ %
{
�� 	
bool
�� 
nombre
�� 
=
�� 
	Validador
�� #
.
��# $
ValidarNombre
��$ 1
(
��1 2
txtb_Nombre
��2 =
.
��= >
Text
��> B
)
��B C
;
��C D
bool
�� 
primerApellido
�� 
=
��  !
	Validador
��" +
.
��+ ,
ValidarNombre
��, 9
(
��9 :!
txtb_PrimerApellido
��: M
.
��M N
Text
��N R
)
��R S
;
��S T
bool
�� 
segundoApellido
��  
=
��! "
	Validador
��# ,
.
��, -$
ValidarSegundoApellido
��- C
(
��C D"
txtb_SegundoApellido
��D X
.
��X Y
Text
��Y ]
)
��] ^
;
��^ _
bool
�� 
correo
�� 
=
�� 
	Validador
�� #
.
��# $
ValidarCorreo
��$ 1
(
��1 2
txtb_Correo
��2 =
.
��= >
Text
��> B
)
��B C
;
��C D
bool
�� 
usuario
�� 
=
�� 
	Validador
�� $
.
��$ %
ValidarUsuario
��% 3
(
��3 4
txtb_Usuario
��4 @
.
��@ A
Text
��A E
)
��E F
;
��F G
string
�� 
contraseña
�� 
=
�� 
isPasswordVisible
��  1
?
��2 3$
txt_ContraseñaVisible
��4 I
.
��I J
Text
��J N
:
��O P
pwb_PasswordBox
��Q `
.
��` a
Password
��a i
;
��i j
bool
�� 
contrasenaValida
�� !
=
��" #
	Validador
��$ -
.
��- . 
ValidarContraseña
��. ?
(
��? @
contraseña
��@ J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 
nombre
�� 
)
�� 

brd_Nombre
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
primerApellido
�� 
)
��   
brd_PrimerApellido
��! 3
.
��3 4
BorderBrush
��4 ?
=
��@ A
Brushes
��B I
.
��I J
Red
��J M
;
��M N
if
�� 
(
�� 
!
�� 
segundoApellido
��  
)
��  !!
brd_SegundoApellido
��" 5
.
��5 6
BorderBrush
��6 A
=
��B C
Brushes
��D K
.
��K L
Red
��L O
;
��O P
if
�� 
(
�� 
!
�� 
correo
�� 
)
�� 

brd_Correo
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
usuario
�� 
)
�� 
brd_Usuario
�� %
.
��% &
BorderBrush
��& 1
=
��2 3
Brushes
��4 ;
.
��; <
Red
��< ?
;
��? @
if
�� 
(
�� 
!
�� 
contrasenaValida
�� !
)
��! "
brd_Contraseña
��# 1
.
��1 2
BorderBrush
��2 =
=
��> ?
Brushes
��@ G
.
��G H
Red
��H K
;
��K L
return
�� 
nombre
�� 
&&
�� 
primerApellido
�� +
&&
��, .
segundoApellido
��/ >
&&
��? A
correo
��B H
&&
��I K
usuario
��L S
&&
��T V
contrasenaValida
��W g
;
��g h
}
�� 	
public
�� 
bool
�� !
ValidarCamposVacios
�� '
(
��' (
)
��( )
{
�� 	
bool
�� 
nombre
�� 
=
�� 
!
�� 
string
�� !
.
��! " 
IsNullOrWhiteSpace
��" 4
(
��4 5
txtb_Nombre
��5 @
.
��@ A
Text
��A E
)
��E F
;
��F G
bool
�� 
primerApellido
�� 
=
��  !
!
��" #
string
��# )
.
��) * 
IsNullOrWhiteSpace
��* <
(
��< =!
txtb_PrimerApellido
��= P
.
��P Q
Text
��Q U
)
��U V
;
��V W
bool
�� 
usuario
�� 
=
�� 
!
�� 
string
�� "
.
��" # 
IsNullOrWhiteSpace
��# 5
(
��5 6
txtb_Usuario
��6 B
.
��B C
Text
��C G
)
��G H
;
��H I
bool
�� 
correo
�� 
=
�� 
!
�� 
string
�� !
.
��! " 
IsNullOrWhiteSpace
��" 4
(
��4 5
txtb_Correo
��5 @
.
��@ A
Text
��A E
)
��E F
;
��F G
string
�� 
contraseña
�� 
=
�� 
isPasswordVisible
��  1
?
��2 3$
txt_ContraseñaVisible
��4 I
.
��I J
Text
��J N
:
��O P
pwb_PasswordBox
��Q `
.
��` a
Password
��a i
;
��i j
bool
�� 
contrasenaValida
�� !
=
��" #
!
��$ %
string
��% +
.
��+ , 
IsNullOrWhiteSpace
��, >
(
��> ?
contraseña
��? I
)
��I J
;
��J K
bool
�� 
cmbNivelEducativo
�� "
=
��# $ 
cmb_NivelEducativo
��% 7
.
��7 8
SelectedItem
��8 D
!=
��E G
null
��H L
;
��L M
bool
�� 
cmbInstitucion
�� 
=
��  !
cmb_Institución
��" 1
.
��1 2
SelectedItem
��2 >
!=
��? A
null
��B F
;
��F G
if
�� 
(
�� 
!
�� 
nombre
�� 
)
�� 

brd_Nombre
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
primerApellido
�� 
)
��   
brd_PrimerApellido
��! 3
.
��3 4
BorderBrush
��4 ?
=
��@ A
Brushes
��B I
.
��I J
Red
��J M
;
��M N
if
�� 
(
�� 
!
�� 
correo
�� 
)
�� 

brd_Correo
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
usuario
�� 
)
�� 
brd_Usuario
�� %
.
��% &
BorderBrush
��& 1
=
��2 3
Brushes
��4 ;
.
��; <
Red
��< ?
;
��? @
if
�� 
(
�� 
!
�� 
contrasenaValida
�� !
)
��! "
brd_Contraseña
��# 1
.
��1 2
BorderBrush
��2 =
=
��> ?
Brushes
��@ G
.
��G H
Red
��H K
;
��K L
if
�� 
(
�� 
!
�� 
cmbNivelEducativo
�� "
)
��" # 
brd_NivelEducativo
��$ 6
.
��6 7
BorderBrush
��7 B
=
��C D
Brushes
��E L
.
��L M
Red
��M P
;
��P Q
if
�� 
(
�� 
!
�� 
cmbInstitucion
�� 
)
��  
brd_Institucion
��! 0
.
��0 1
BorderBrush
��1 <
=
��= >
Brushes
��? F
.
��F G
Red
��G J
;
��J K
return
�� 
nombre
�� 
&&
�� 
primerApellido
�� +
&&
��, .
correo
��/ 5
&&
��6 8
usuario
��9 @
&&
��A C
contrasenaValida
��D T
&&
�� 
cmbNivelEducativo
��  
&&
��! #
cmbInstitucion
��$ 2
;
��2 3
}
�� 	
private
�� 
void
�� %
RegresarAlMenuPrincipal
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;"
MouseButtonEventArgs
��< P
e
��Q R
)
��R S
{
�� 	
MenuPrincipal
�� 
menuPrincipal
�� '
=
��( )
new
��* -
(
��. /
)
��/ 0
;
��0 1
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
menuPrincipal
��, 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
void
�� 
	IrAlLogin
�� 
(
�� 
object
�� %
sender
��& ,
,
��, -"
MouseButtonEventArgs
��. B
e
��C D
)
��D E
{
�� 	
Login
�� 
login
�� 
=
�� 
new
�� 
(
�� 
)
��  
;
��  !
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
login
��, 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� "
PasswordBox_GotFocus
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
txtb_Contraseña
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
}
�� 	
private
�� 
void
�� #
PasswordBox_LostFocus
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
pwb_PasswordBox
��* 9
.
��9 :
Password
��: B
)
��B C
)
��C D
{
�� 
txtb_Contraseña
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
Visible
��8 ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� )
PasswordBox_PasswordChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
�� 	
txtb_Contraseña
�� 
.
�� 

Visibility
�� &
=
��' (
string
��) /
.
��/ 0
IsNullOrEmpty
��0 =
(
��= >
pwb_PasswordBox
��> M
.
��M N
Password
��N V
)
��V W
?
��X Y

Visibility
��Z d
.
��d e
Visible
��e l
:
��m n

Visibility
��o y
.
��y z
	Collapsed��z �
;��� �
}
�� 	
private
�� 
bool
�� 
isPasswordVisible
�� &
=
��' (
false
��) .
;
��. /
private
�� 
void
�� *
ActivarDesactivarVisibilidad
�� 1
(
��1 2
object
��2 8
sender
��9 ?
,
��? @"
MouseButtonEventArgs
��A U
e
��V W
)
��W X
{
�� 	
isPasswordVisible
�� 
=
�� 
!
��  !
isPasswordVisible
��! 2
;
��2 3
if
�� 
(
�� 
isPasswordVisible
�� !
)
��! "
{
�� $
txt_ContraseñaVisible
�� %
.
��% &
Text
��& *
=
��+ ,
pwb_PasswordBox
��- <
.
��< =
Password
��= E
;
��E F$
txt_ContraseñaVisible
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
Visible
��> E
;
��E F
pwb_PasswordBox
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
	Collapsed
��8 A
;
��A B
}
�� 
else
�� 
{
�� 
pwb_PasswordBox
�� 
.
��  
Password
��  (
=
��) *$
txt_ContraseñaVisible
��+ @
.
��@ A
Text
��A E
;
��E F
pwb_PasswordBox
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
Visible
��8 ?
;
��? @$
txt_ContraseñaVisible
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
	Collapsed
��> G
;
��G H
}
�� 
}
�� 	
private
�� 
void
�� )
VisiblePassword_TextChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?"
TextChangedEventArgs
��@ T
e
��U V
)
��V W
{
�� 	
if
�� 
(
�� 
isPasswordVisible
�� !
)
��! "
{
�� 
pwb_PasswordBox
�� 
.
��  
Password
��  (
=
��) *$
txt_ContraseñaVisible
��+ @
.
��@ A
Text
��A E
;
��E F
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\Perfil.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloUsuario% 2
{ 
public 

partial 
class 
Perfil 
:  !
Page" &
{ 
private 
Frame 
_frame 
; 
public 
Perfil 
( 
Frame 
frame !
)! "
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
_frame"" 
="" 
frame"" 
;"" #
VerificarSiInicioSesion## #
(### $
)##$ %
;##% &
}$$ 	
private&& 
void&& '
MostrarMensajePersonalizado&& 0
(&&0 1
string&&1 7
message&&8 ?
,&&? @

DialogType&&A K
type&&L P
)&&P Q
{'' 	
var(( 
dialog(( 
=(( 
new(( )
VentanaEmergentePersonalizada(( :
(((: ;
message((; B
,((B C
type((D H
)((H I
{)) 
Owner** 
=** 
Window** 
.** 
	GetWindow** (
(**( )
this**) -
)**- .
}++ 
;++ 
dialog,, 
.,, 

ShowDialog,, 
(,, 
),, 
;,,  
}-- 	
private// 
async// 
void// #
VerificarSiInicioSesion// 2
(//2 3
)//3 4
{00 	
var11 
perfil11 
=11 
PerfilSingleton11 (
.11( )
Instance11) 1
;111 2
img_FotoPerfil22 
.22 
ImageSource22 &
=22' ( 
ConvertirFotoABitmap22) =
(22= >
perfil22> D
.22D E
FotoPerfilBinaria22E V
)22V W
;22W X
await33 *
CargarPerfilDesdeServidorAsync33 0
(330 1
perfil331 7
.337 8
TokenJwt338 @
)33@ A
;33A B
}44 	
private66 
async66 
Task66 *
CargarPerfilDesdeServidorAsync66 9
(669 :
string66: @
token66A F
)66F G
{77 	
var88 
	resultado88 
=88 
await88 !
UsuarioServicio88" 1
.881 2
ObtenerPerfilAsync882 D
(88D E
token88E J
)88J K
;88K L
switch:: 
(:: 
	resultado:: 
.:: 
Codigo:: $
)::$ %
{;; 
case<< 
(<< 
int<< 
)<< 
HttpStatusCode<< (
.<<( )
OK<<) +
:<<+ ,
if== 
(== 
	resultado== "
.==" #
Datos==# (
!===) +
null==, 0
)==0 1
{>> 
var?? 
perfil?? "
=??# $
PerfilSingleton??% 4
.??4 5
Instance??5 =
;??= >
txtb_Nombre@@ #
.@@# $
Text@@$ (
=@@) *
$"@@+ -
{@@- .
	resultado@@. 7
.@@7 8
Datos@@8 =
.@@= >
Nombre@@> D
}@@D E
$str@@E F
{@@F G
	resultado@@G P
.@@P Q
Datos@@Q V
.@@V W
PrimerApellido@@W e
}@@e f
$str@@f g
{@@g h
	resultado@@h q
.@@q r
Datos@@r w
.@@w x
SegundoApellido	@@x �
}
@@� �
"
@@� �
;
@@� �
txtb_CorreoAA #
.AA# $
TextAA$ (
=AA) *
	resultadoAA+ 4
.AA4 5
DatosAA5 :
.AA: ;
CorreoAA; A
;AAA B
txtb_UsuarioBB $
.BB$ %
TextBB% )
=BB* +
	resultadoBB, 5
.BB5 6
DatosBB6 ;
.BB; <
NombreUsuarioBB< I
;BBI J
txtb_NivelEducativoCC +
.CC+ ,
TextCC, 0
=CC1 2
	resultadoCC3 <
.CC< =
DatosCC= B
.CCB C
NivelEducativoCCC Q
;CCQ R
txtb_InstitucionDD (
.DD( )
TextDD) -
=DD. /
	resultadoDD0 9
.DD9 :
DatosDD: ?
.DD? @
NombreInstitucionDD@ Q
;DDQ R
txtb_SeguidoresEE '
.EE' (
TextEE( ,
=EE- .
	resultadoEE/ 8
.EE8 9
DatosEE9 >
.EE> ?
NumeroSeguidoresEE? O
;EEO P
txtb_SeguidosFF %
.FF% &
TextFF& *
=FF+ ,
	resultadoFF- 6
.FF6 7
DatosFF7 <
.FF< =
NumeroSeguidosFF= K
;FFK L
perfilGG 
.GG 
IdInstitucionGG ,
=GG- .
intGG/ 2
.GG2 3
ParseGG3 8
(GG8 9
	resultadoGG9 B
.GGB C
DatosGGC H
.GGH I
IdInstitucionGGI V
)GGV W
;GGW X
perfilHH 
.HH 
NivelEducativoHH -
=HH. /
	resultadoHH0 9
.HH9 :
DatosHH: ?
.HH? @
NivelEducativoHH@ N
;HHN O
}II 
breakJJ 
;JJ 
caseLL 
(LL 
intLL 
)LL 
HttpStatusCodeLL (
.LL( )
UnauthorizedLL) 5
:LL5 6'
MostrarMensajePersonalizadoMM /
(MM/ 0
$strMM0 m
,MMm n

DialogTypeMMo y
.MMy z
ErrorMMz 
)	MM �
;
MM� �
NavigationServiceNN %
.NN% &
NavigateNN& .
(NN. /
newNN/ 2
LoginNN3 8
(NN8 9
)NN9 :
)NN: ;
;NN; <
PerfilSingletonOO #
.OO# $
InstanceOO$ ,
.OO, -
ResetOO- 2
(OO2 3
)OO3 4
;OO4 5
breakPP 
;PP 
caseRR 
(RR 
intRR 
)RR 
HttpStatusCodeRR (
.RR( )
NotFoundRR) 1
:RR1 2'
MostrarMensajePersonalizadoSS /
(SS/ 0
$strSS0 G
,SSG H

DialogTypeSSI S
.SSS T
WarningSST [
)SS[ \
;SS\ ]
breakTT 
;TT 
defaultVV 
:VV '
MostrarMensajePersonalizadoWW /
(WW/ 0
$strWW0 j
,WWj k

DialogTypeWWl v
.WWv w
ErrorWWw |
)WW| }
;WW} ~
breakXX 
;XX 
}YY 
}ZZ 	
public\\ 
ImageSource\\  
ConvertirFotoABitmap\\ /
(\\/ 0
byte\\0 4
[\\4 5
]\\5 6
binario\\7 >
)\\> ?
{]] 	
if^^ 
(^^ 
binario^^ 
==^^ 
null^^ 
||^^  "
binario^^# *
.^^* +
Length^^+ 1
==^^2 4
$num^^5 6
)^^6 7
return^^8 >
null^^? C
;^^C D
using`` 
var`` 
ms`` 
=`` 
new`` 
MemoryStream`` +
(``+ ,
binario``, 3
)``3 4
;``4 5
varaa 
bitmapaa 
=aa 
newaa 
BitmapImageaa (
(aa( )
)aa) *
;aa* +
bitmapbb 
.bb 
	BeginInitbb 
(bb 
)bb 
;bb 
bitmapcc 
.cc 
CacheOptioncc 
=cc  
BitmapCacheOptioncc! 2
.cc2 3
OnLoadcc3 9
;cc9 :
bitmapdd 
.dd 
StreamSourcedd 
=dd  !
msdd" $
;dd$ %
bitmapee 
.ee 
EndInitee 
(ee 
)ee 
;ee 
returnff 
bitmapff 
;ff 
}gg 	
privateii 
boolii 
EsImagenValidaii #
(ii# $
byteii$ (
[ii( )
]ii) *
dataii+ /
)ii/ 0
{jj 	
ifkk 
(kk 
datakk 
.kk 
Lengthkk 
<kk 
$numkk 
)kk  
returnll 
falsell 
;ll 
bytenn 
[nn 
]nn 
firmaPngnn 
=nn 
newnn !
bytenn" &
[nn& '
]nn' (
{nn) *
$numnn+ /
,nn/ 0
$numnn1 5
,nn5 6
$numnn7 ;
,nn; <
$numnn= A
,nnA B
$numnnC G
,nnG H
$numnnI M
,nnM N
$numnnO S
,nnS T
$numnnU Y
}nnZ [
;nn[ \
byteoo 
[oo 
]oo 
	firmaJpegoo 
=oo 
newoo "
byteoo# '
[oo' (
]oo( )
{oo* +
$numoo, 0
,oo0 1
$numoo2 6
,oo6 7
$numoo8 <
}oo= >
;oo> ?
ifqq 
(qq 
dataqq 
.qq 
Takeqq 
(qq 
$numqq 
)qq 
.qq 
SequenceEqualqq *
(qq* +
firmaPngqq+ 3
)qq3 4
)qq4 5
returnrr 
truerr 
;rr 
iftt 
(tt 
datatt 
.tt 
Takett 
(tt 
$numtt 
)tt 
.tt 
SequenceEqualtt *
(tt* +
	firmaJpegtt+ 4
)tt4 5
)tt5 6
returnuu 
trueuu 
;uu 
returnww 
falseww 
;ww 
}xx 	
private{{ 
async{{ 
void{{ 
CambiarImagen{{ (
({{( )
object{{) /
sender{{0 6
,{{6 7 
MouseButtonEventArgs{{8 L
e{{M N
){{N O
{|| 	
LoggerManager}} 
logger}}  
=}}! "
new}}# &
(}}& '
this}}' +
.}}+ ,
GetType}}, 3
(}}3 4
)}}4 5
)}}5 6
;}}6 7
OpenFileDialog~~ 
dialogo~~ "
=~~# $
new~~% (
(~~( )
)~~) *
{ 
Title
�� 
=
�� 
$str
�� 9
,
��9 :
Filter
�� 
=
�� 
$str
�� =
,
��= >
Multiselect
�� 
=
�� 
false
�� #
}
�� 
;
�� 
bool
�� 
?
�� 
	resultado
�� 
=
�� 
dialogo
�� %
.
��% &

ShowDialog
��& 0
(
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
	resultado
�� 
==
�� 
true
�� !
)
��! "
{
�� 
FileInfo
�� 
archivo
��  
=
��! "
new
��# &
(
��& '
dialogo
��' .
.
��. /
FileName
��/ 7
)
��7 8
;
��8 9
if
�� 
(
�� 
archivo
�� 
.
�� 
Length
�� "
>
��# $
$num
��% '
*
��( )
$num
��* .
*
��/ 0
$num
��1 5
)
��5 6
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 h
,
��h i

DialogType
��j t
.
��t u
Warning
��u |
)
��| }
;
��} ~
return
�� 
;
�� 
}
�� 
try
�� 
{
�� 
BitmapImage
�� 
nuevaImagen
��  +
=
��, -
new
��. 1
(
��1 2
)
��2 3
;
��3 4
nuevaImagen
�� 
.
��  
	BeginInit
��  )
(
��) *
)
��* +
;
��+ ,
nuevaImagen
�� 
.
��  
	UriSource
��  )
=
��* +
new
��, /
Uri
��0 3
(
��3 4
archivo
��4 ;
.
��; <
FullName
��< D
)
��D E
;
��E F
nuevaImagen
�� 
.
��  
CacheOption
��  +
=
��, -
BitmapCacheOption
��. ?
.
��? @
OnLoad
��@ F
;
��F G
nuevaImagen
�� 
.
��  
EndInit
��  '
(
��' (
)
��( )
;
��) *
byte
�� 
[
�� 
]
�� 
bytesImagen
�� &
=
��' (
File
��) -
.
��- .
ReadAllBytes
��. :
(
��: ;
archivo
��; B
.
��B C
FullName
��C K
)
��K L
;
��L M
if
�� 
(
�� 
!
�� 
EsImagenValida
�� '
(
��' (
bytesImagen
��( 3
)
��3 4
)
��4 5
{
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 h
,
��h i

DialogType
��j t
.
��t u
Warning
��u |
)
��| }
;
��} ~
return
�� 
;
�� 
}
�� 
bool
�� 
exitoso
��  
=
��! "
await
��# ("
ActualizarFotoPerfil
��) =
(
��= >
bytesImagen
��> I
)
��I J
;
��J K
if
�� 
(
�� 
!
�� 
exitoso
��  
)
��  !
{
�� 
return
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 i
,
��i j

DialogType
��k u
.
��u v
Warning
��v }
)
��} ~
;
��~ 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $
ex
��$ &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
��  "
ActualizarFotoPerfil
��! 5
(
��5 6
byte
��6 :
[
��: ;
]
��; < 
nuevaImagenBinaria
��= O
)
��O P
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
(
��& '
this
��' +
.
��+ ,
GetType
��, 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
var
�� 
perfil
�� 
=
�� 
PerfilSingleton
�� (
.
��( )
Instance
��) 1
;
��1 2
var
�� 
clienteGrpc
�� 
=
�� 
new
�� !&
FileServiceClientHandler
��" :
(
��: ;
)
��; <
;
��< =
var
�� 
imagenAnterior
�� 
=
��  
perfil
��! '
.
��' (
FotoPerfilBinaria
��( 9
;
��9 :
try
�� 
{
�� 
string
�� 
nombreArchivo
�� $
=
��% &
$"
��' )
$str
��) 0
{
��0 1
perfil
��1 7
.
��7 8
NombreUsuario
��8 E
}
��E F
$str
��F G
{
��G H
Guid
��H L
.
��L M
NewGuid
��M T
(
��T U
)
��U V
}
��V W
$str
��W [
"
��[ \
;
��\ ]
var
�� 

rutaImagen
�� 
=
��  
await
��! &
clienteGrpc
��' 2
.
��2 3
UploadImageAsync
��3 C
(
��C D
perfil
��D J
.
��J K
NombreUsuario
��K X
,
��X Y
nombreArchivo
��Z g
,
��g h 
nuevaImagenBinaria
��i {
)
��{ |
;
��| }
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� -
(
��- .

rutaImagen
��. 8
)
��8 9
)
��9 :
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 e
,
��e f

DialogType
��g q
.
��q r
Error
��r w
)
��w x
;
��x y
img_FotoPerfil
�� "
.
��" #
ImageSource
��# .
=
��/ 0"
ConvertirFotoABitmap
��1 E
(
��E F
imagenAnterior
��F T
)
��T U
;
��U V
return
�� 
false
��  
;
��  !
}
�� 
var
�� 
resultadoApi
��  
=
��! "
await
��# (
UsuarioServicio
��) 8
.
��8 9#
ActualizarAvatarAsync
��9 N
(
��N O
perfil
��O U
.
��U V
TokenJwt
��V ^
,
��^ _

rutaImagen
��` j
)
��j k
;
��k l
switch
�� 
(
�� 
resultadoApi
�� $
.
��$ %
Codigo
��% +
)
��+ ,
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
OK
��- /
:
��/ 0
perfil
�� 
.
�� 
FotoPerfilBinaria
�� 0
=
��1 2 
nuevaImagenBinaria
��3 E
;
��E F
return
�� 
true
�� #
;
��# $
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
Unauthorized
��- 9
:
��9 :)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 q
,
��q r

DialogType
��s }
.
��} ~
Error��~ �
)��� �
;��� �
NavigationService
�� )
.
��) *
Navigate
��* 2
(
��2 3
new
��3 6
Login
��7 <
(
��< =
)
��= >
)
��> ?
;
��? @
PerfilSingleton
�� '
.
��' (
Instance
��( 0
.
��0 1
Reset
��1 6
(
��6 7
)
��7 8
;
��8 9
break
�� 
;
�� 
default
�� 
:
�� 
perfil
�� 
.
�� 
FotoPerfilBinaria
�� 0
=
��1 2 
nuevaImagenBinaria
��3 E
;
��E F
break
�� 
;
�� 
}
�� 
img_FotoPerfil
�� 
.
�� 
ImageSource
�� *
=
��+ ,"
ConvertirFotoABitmap
��- A
(
��A B
imagenAnterior
��B P
)
��P Q
;
��Q R
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, `
,
��` a

DialogType
��b l
.
��l m
Error
��m r
)
��r s
;
��s t
img_FotoPerfil
�� 
.
�� 
ImageSource
�� *
=
��+ ,"
ConvertirFotoABitmap
��- A
(
��A B
imagenAnterior
��B P
)
��P Q
;
��Q R
logger
�� 
.
�� 
LogFatal
�� 
(
��  
ex
��  "
)
��" #
;
��# $
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
Editar
�� 
(
�� 
object
�� "
sender
��# )
,
��) *"
MouseButtonEventArgs
��+ ?
e
��@ A
)
��A B
{
�� 	
_frame
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� 
EditarPerfil
��  ,
(
��, -
_frame
��- 3
)
��3 4
)
��4 5
;
��5 6
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\EditarPerfil.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloUsuario% 2
{ 
public 

partial 
class 
EditarPerfil %
:& '
Page( ,
{ 
private 
Frame 
_frame 
; 
private 
bool 
_cargandoDatos #
=$ %
false& +
;+ ,
private 
List 
< 
Institucion  
>  !"
_todasLasInstituciones" 8
=9 :
new; >
(> ?
)? @
;@ A
public   
EditarPerfil   
(   
Frame   !
frame  " '
)  ' (
{!! 	
InitializeComponent"" 
(""  
)""  !
;""! "
this## 
.## 
Loaded## 
+=## #
ActualizarUsuarioLoaded## 2
;##2 3
_frame$$ 
=$$ 
frame$$ 
;$$ 
}%% 	
private&& 
async&& 
void&& #
ActualizarUsuarioLoaded&& 2
(&&2 3
object&&3 9
sender&&: @
,&&@ A
RoutedEventArgs&&B Q
e&&R S
)&&S T
{'' 	
await(( "
InicializarCombosAsync(( (
(((( )
)(() *
;((* +
var)) 
perfil)) 
=)) 
PerfilSingleton)) (
.))( )
Instance))) 1
;))1 2
txtb_Nombre** 
.** 
Text** 
=** 
perfil** %
.**% &
Nombre**& ,
;**, -
txtb_PrimerApellido++ 
.++  
Text++  $
=++% &
perfil++' -
.++- .
PrimerApellido++. <
;++< = 
txtb_SegundoApellido,,  
.,,  !
Text,,! %
=,,& '
perfil,,( .
.,,. /
SegundoApellido,,/ >
;,,> ?
txtb_Correo-- 
.-- 
Text-- 
=-- 
perfil-- %
.--% &
Correo--& ,
;--, -
txtb_Usuario.. 
... 
Text.. 
=.. 
perfil..  &
...& '
NombreUsuario..' 4
;..4 5
}// 	
private11 
async11 
Task11 "
InicializarCombosAsync11 1
(111 2
)112 3
{22 	
_cargandoDatos33 
=33 
true33 !
;33! "
List55 
<55 
string55 
>55 
niveles55  
=55! "
new55# &
(55& '
)55' (
{55) *
$str55+ 9
,559 :
$str55; H
}55I J
;55J K
cmb_NivelEducativo77 
.77 
ItemsSource77 *
=77+ ,
null77- 1
;771 2
cmb_NivelEducativo88 
.88 
Items88 $
.88$ %
Clear88% *
(88* +
)88+ ,
;88, -
cmb_NivelEducativo99 
.99 
ItemsSource99 *
=99+ ,
niveles99- 4
;994 5
var;; 
	respuesta;; 
=;; 
await;; !
CatalogosServicio;;" 3
.;;3 4%
ObtenerInstitucionesAsync;;4 M
(;;M N
);;N O
;;;O P
if== 
(== 
	respuesta== 
.== 
	Resultado== #
!===$ &
(==' (
int==( +
)==+ ,
HttpStatusCode==, :
.==: ;
OK==; =
||==> @
	respuesta==A J
.==J K
Datos==K P
====Q S
null==T X
)==X Y
{>> '
MostrarMensajePersonalizado?? +
(??+ ,
$str??, u
,??u v

DialogType	??w �
.
??� �
Error
??� �
)
??� �
;
??� �
_frame@@ 
.@@ 
Navigate@@ 
(@@  
new@@  #
Perfil@@$ *
(@@* +
_frame@@+ 1
)@@1 2
)@@2 3
;@@3 4
returnAA 
;AA 
}BB "
_todasLasInstitucionesDD "
=DD# $
	respuestaDD% .
.DD. /
DatosDD/ 4
;DD4 5
cmb_InstituciónFF 
.FF 
ItemsSourceFF '
=FF( )
nullFF* .
;FF. /
cmb_InstituciónGG 
.GG 
ItemsGG !
.GG! "
ClearGG" '
(GG' (
)GG( )
;GG) *
cmb_InstituciónHH 
.HH 
ItemsSourceHH '
=HH( )"
_todasLasInstitucionesHH* @
;HH@ A
cmb_InstituciónII 
.II 
DisplayMemberPathII -
=II. /
$strII0 C
;IIC D
cmb_InstituciónJJ 
.JJ 
SelectedValuePathJJ -
=JJ. /
$strJJ0 ?
;JJ? @
varLL 
perfilLL 
=LL 
PerfilSingletonLL (
.LL( )
InstanceLL) 1
;LL1 2
cmb_NivelEducativoMM 
.MM 
SelectedItemMM +
=MM, -
perfilMM. 4
.MM4 5
NivelEducativoMM5 C
;MMC D
cmb_InstituciónNN 
.NN 
SelectedValueNN )
=NN* +
perfilNN, 2
.NN2 3
IdInstitucionNN3 @
;NN@ A
_cargandoDatosPP 
=PP 
falsePP "
;PP" #
}QQ 	
privateTT 
voidTT '
Cmb_NivelEducativoSeleccionTT 0
(TT0 1
objectTT1 7
senderTT8 >
,TT> ?%
SelectionChangedEventArgsTT@ Y
eTTZ [
)TT[ \
{UU 	
ifVV 
(VV 
_cargandoDatosVV 
)VV 
returnVV  &
;VV& '
stringXX 
nivelSeleccionadoXX $
=XX% &
cmb_NivelEducativoXX' 9
.XX9 :
SelectedItemXX: F
asXXG I
stringXXJ P
;XXP Q
ifYY 
(YY 
!YY 
stringYY 
.YY 
IsNullOrEmptyYY %
(YY% &
nivelSeleccionadoYY& 7
)YY7 8
)YY8 9
{ZZ 
var[[ 
	filtradas[[ 
=[[ "
_todasLasInstituciones[[  6
.\\ 
Where\\ 
(\\ 
i\\ 
=>\\ 
i\\  !
.\\! "
NivelEducativo\\" 0
==\\1 3
nivelSeleccionado\\4 E
)\\E F
.]] 
ToList]] 
(]] 
)]] 
;]] 
cmb_Institución__ 
.__  
ItemsSource__  +
=__, -
	filtradas__. 7
;__7 8
cmb_Institución`` 
.``  
SelectedIndex``  -
=``. /
-``0 1
$num``1 2
;``2 3
}aa 
}bb 	
privatedd 
voiddd $
Cmb_InstitucionSelecciondd -
(dd- .
objectdd. 4
senderdd5 ;
,dd; <%
SelectionChangedEventArgsdd= V
eddW X
)ddX Y
{ee 	
ifff 
(ff 
_cargandoDatosff 
)ff 
returnff  &
;ff& '
ifhh 
(hh 
cmb_Instituciónhh 
.hh  
SelectedItemhh  ,
ishh- /
Institucionhh0 ;
seleccionadahh< H
)hhH I
{ii 
cmb_NivelEducativojj "
.jj" #
SelectedItemjj# /
=jj0 1
seleccionadajj2 >
.jj> ?
NivelEducativojj? M
;jjM N
}kk 
}ll 	
privatenn 
voidnn '
MostrarMensajePersonalizadonn 0
(nn0 1
stringnn1 7
messagenn8 ?
,nn? @

DialogTypennA K
typennL P
)nnP Q
{oo 	
varpp 
dialogpp 
=pp 
newpp )
VentanaEmergentePersonalizadapp :
(pp: ;
messagepp; B
,ppB C
typeppD H
)ppH I
{qq 
Ownerrr 
=rr 
Windowrr 
.rr 
	GetWindowrr (
(rr( )
thisrr) -
)rr- .
}ss 
;ss 
dialogtt 
.tt 

ShowDialogtt 
(tt 
)tt 
;tt  
}uu 	
privateww 
voidww 
RegresarAlPerfilww %
(ww% &
objectww& ,
senderww- 3
,ww3 4 
MouseButtonEventArgsww5 I
ewwJ K
)wwK L
{xx 	
_frameyy 
.yy 
Navigateyy 
(yy 
newyy 
Perfilyy  &
(yy& '
_frameyy' -
)yy- .
)yy. /
;yy/ 0
}{{ 	
private}} 
bool}}  
HayCambiosEnElPerfil}} )
(}}) *
)}}* +
{~~ 	
var 
perfil 
= 
PerfilSingleton (
.( )
Instance) 1
;1 2
return
�� 
txtb_Nombre
�� 
.
�� 
Text
�� #
!=
��$ &
perfil
��' -
.
��- .
Nombre
��. 4
||
��5 7!
txtb_PrimerApellido
�� &
.
��& '
Text
��' +
!=
��, .
perfil
��/ 5
.
��5 6
PrimerApellido
��6 D
||
��E G"
txtb_SegundoApellido
�� '
.
��' (
Text
��( ,
!=
��- /
perfil
��0 6
.
��6 7
SegundoApellido
��7 F
||
��G I
txtb_Correo
�� 
.
�� 
Text
�� #
!=
��$ &
perfil
��' -
.
��- .
Correo
��. 4
||
��5 7
txtb_Usuario
�� 
.
��  
Text
��  $
!=
��% '
perfil
��( .
.
��. /
NombreUsuario
��/ <
||
��= ?
(
��  
cmb_NivelEducativo
�� &
.
��& '
SelectedItem
��' 3
as
��4 6
string
��7 =
)
��= >
!=
��? A
perfil
��B H
.
��H I
NivelEducativo
��I W
||
��X Z
(
�� 
(
�� 
Institucion
��  
)
��  !
cmb_Institución
��! 0
.
��0 1
SelectedItem
��1 =
)
��= >
?
��> ?
.
��? @
IdInstitucion
��@ M
!=
��N P
perfil
��Q W
.
��W X
IdInstitucion
��X e
;
��e f
}
�� 	
private
�� 
void
�� '
ActualizarPerfilSingleton
�� .
(
��. /
)
��/ 0
{
�� 	
var
�� 
perfil
�� 
=
�� 
PerfilSingleton
�� (
.
��( )
Instance
��) 1
;
��1 2
perfil
�� 
.
�� 
Nombre
�� 
=
�� 
txtb_Nombre
�� '
.
��' (
Text
��( ,
;
��, -
perfil
�� 
.
�� 
PrimerApellido
�� !
=
��" #!
txtb_PrimerApellido
��$ 7
.
��7 8
Text
��8 <
;
��< =
perfil
�� 
.
�� 
SegundoApellido
�� "
=
��# $"
txtb_SegundoApellido
��% 9
.
��9 :
Text
��: >
;
��> ?
perfil
�� 
.
�� 
Correo
�� 
=
�� 
txtb_Correo
�� '
.
��' (
Text
��( ,
;
��, -
perfil
�� 
.
�� 
NombreUsuario
��  
=
��! "
txtb_Usuario
��# /
.
��/ 0
Text
��0 4
;
��4 5
perfil
�� 
.
�� 
NivelEducativo
�� !
=
��" # 
cmb_NivelEducativo
��$ 6
.
��6 7
SelectedItem
��7 C
as
��D F
string
��G M
;
��M N
if
�� 
(
�� 
cmb_Institución
�� 
.
��  
SelectedItem
��  ,
is
��- /
Institucion
��0 ;
institucion
��< G
)
��G H
{
�� 
perfil
�� 
.
�� 
IdInstitucion
�� $
=
��% &
institucion
��' 2
.
��2 3
IdInstitucion
��3 @
;
��@ A
}
�� 
}
�� 	
private
�� 
void
�� 
ActualizarPerfil
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	#
RegresarBordeOriginal
�� !
(
��! "
)
��" #
;
��# $
if
�� 
(
�� !
ValidarCamposVacios
�� #
(
��# $
)
��$ %
)
��% &
{
�� 
if
�� 
(
�� 
!
�� "
HayCambiosEnElPerfil
�� )
(
��) *
)
��* +
)
��+ ,
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 [
,
��[ \

DialogType
��] g
.
��g h
Warning
��h o
)
��o p
;
��p q
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
VerificarCampos
�� #
(
��# $
)
��$ %
)
��% &
{
�� 
UsuarioRegistro
�� # 
usuarioActualizado
��$ 6
=
��7 8
CrearPerfil
��9 D
(
��D E
)
��E F
;
��F G
RespuestaDeLaAPI
�� $
(
��$ % 
usuarioActualizado
��% 7
)
��7 8
;
��8 9
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str��0 �
,��� �

DialogType��� �
.��� �
Warning��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, `
,
��` a

DialogType
��b l
.
��l m
Warning
��m t
)
��t u
;
��u v
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
RespuestaDeLaAPI
�� +
(
��+ ,
UsuarioRegistro
��, ; 
usuarioActualizado
��< N
)
��N O
{
�� 	
var
�� 
token
�� 
=
�� 
PerfilSingleton
�� '
.
��' (
Instance
��( 0
.
��0 1
TokenJwt
��1 9
;
��9 :
	Respuesta
�� 
	respuesta
�� 
=
��  !
await
��" '
UsuarioServicio
��( 7
.
��7 8
ActualizarPerfil
��8 H
(
��H I
token
��I N
,
��N O 
usuarioActualizado
��P b
)
��b c
;
��c d
switch
�� 
(
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
)
��$ %
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
OK
��) +
:
��+ ,'
ActualizarPerfilSingleton
�� -
(
��- .
)
��. /
;
��/ 0)
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 P
,
��P Q

DialogType
��R \
.
��\ ]
Success
��] d
)
��d e
;
��e f
_frame
�� 
.
�� 
Navigate
�� #
(
��# $
new
��$ '
Perfil
��( .
(
��. /
_frame
��/ 5
)
��5 6
)
��6 7
;
��7 8
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 m
,
��m n

DialogType
��o y
.
��y z
Warning��z �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 _
,
��_ `

DialogType
��a k
.
��k l
Error
��l q
)
��q r
;
��r s
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 g
,
��g h

DialogType
��i s
.
��s t
Warning
��t {
)
��{ |
;
��| }
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 u
,
��u v

DialogType��w �
.��� �
Error��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
Unauthorized
��) 5
:
��5 6)
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 m
,
��m n

DialogType
��o y
.
��y z
Error
��z 
)�� �
;��� �
NavigationService
�� %
.
��% &
Navigate
��& .
(
��. /
new
��/ 2
Login
��3 8
(
��8 9
)
��9 :
)
��: ;
;
��; <
PerfilSingleton
�� #
.
��# $
Instance
��$ ,
.
��, -
Reset
��- 2
(
��2 3
)
��3 4
;
��4 5
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 _
,
��_ `

DialogType
��a k
.
��k l
Error
��l q
)
��q r
;
��r s
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
UsuarioRegistro
�� 
CrearPerfil
��  +
(
��+ ,
)
��, -
{
�� 	
UsuarioRegistro
�� 
datosActualizados
�� -
=
��. /
new
��0 3
(
��3 4
)
��4 5
{
�� 
Nombre
�� 
=
�� 
txtb_Nombre
�� $
.
��$ %
Text
��% )
,
��) *
PrimerApellido
�� 
=
��  !
txtb_PrimerApellido
��! 4
.
��4 5
Text
��5 9
,
��9 :
SegundoApellido
�� 
=
��  !"
txtb_SegundoApellido
��" 6
.
��6 7
Text
��7 ;
,
��; <
Correo
�� 
=
�� 
txtb_Correo
�� $
.
��$ %
Text
��% )
,
��) *
NombreUsuario
�� 
=
�� 
txtb_Usuario
��  ,
.
��, -
Text
��- 1
,
��1 2
IdInstitucion
�� 
=
�� 
(
��  !
(
��! "
Institucion
��" -
)
��- .
cmb_Institución
��. =
.
��= >
SelectedItem
��> J
)
��J K
.
��K L
IdInstitucion
��L Y
}
�� 
;
�� 
return
�� 
datosActualizados
�� $
;
��$ %
}
�� 	
public
�� 
void
�� #
RegresarBordeOriginal
�� )
(
��) *
)
��* +
{
�� 	
SolidColorBrush
�� 
verde
�� !
=
��" #
new
��$ '
(
��' (
(
��( )
Color
��) .
)
��. /
ColorConverter
��/ =
.
��= >
ConvertFromString
��> O
(
��O P
$str
��P Y
)
��Y Z
)
��Z [
;
��[ \

brd_Nombre
�� 
.
�� 
BorderBrush
�� "
=
��# $
verde
��% *
;
��* + 
brd_PrimerApellido
�� 
.
�� 
BorderBrush
�� *
=
��+ ,
verde
��- 2
;
��2 3!
brd_SegundoApellido
�� 
.
��  
BorderBrush
��  +
=
��, -
verde
��. 3
;
��3 4

brd_Correo
�� 
.
�� 
BorderBrush
�� "
=
��# $
verde
��% *
;
��* +
brd_Usuario
�� 
.
�� 
BorderBrush
�� #
=
��$ %
verde
��& +
;
��+ , 
brd_NivelEducativo
�� 
.
�� 
BorderBrush
�� *
=
��+ ,
verde
��- 2
;
��2 3
brd_Institucion
�� 
.
�� 
BorderBrush
�� '
=
��( )
verde
��* /
;
��/ 0
}
�� 	
public
�� 
bool
�� 
VerificarCampos
�� #
(
��# $
)
��$ %
{
�� 	
bool
�� 
nombre
�� 
=
�� 
	Validador
�� #
.
��# $
ValidarNombre
��$ 1
(
��1 2
txtb_Nombre
��2 =
.
��= >
Text
��> B
)
��B C
;
��C D
bool
�� 
primerApellido
�� 
=
��  !
	Validador
��" +
.
��+ ,
ValidarNombre
��, 9
(
��9 :!
txtb_PrimerApellido
��: M
.
��M N
Text
��N R
)
��R S
;
��S T
bool
�� 
segundoApellido
��  
=
��! "
	Validador
��# ,
.
��, -$
ValidarSegundoApellido
��- C
(
��C D"
txtb_SegundoApellido
��D X
.
��X Y
Text
��Y ]
)
��] ^
;
��^ _
bool
�� 
usuario
�� 
=
�� 
	Validador
�� $
.
��$ %
ValidarUsuario
��% 3
(
��3 4
txtb_Usuario
��4 @
.
��@ A
Text
��A E
)
��E F
;
��F G
bool
�� 
correo
�� 
=
�� 
	Validador
�� #
.
��# $
ValidarCorreo
��$ 1
(
��1 2
txtb_Correo
��2 =
.
��= >
Text
��> B
)
��B C
;
��C D
if
�� 
(
�� 
!
�� 
nombre
�� 
)
�� 

brd_Nombre
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
primerApellido
�� 
)
��   
brd_PrimerApellido
��! 3
.
��3 4
BorderBrush
��4 ?
=
��@ A
Brushes
��B I
.
��I J
Red
��J M
;
��M N
if
�� 
(
�� 
!
�� 
segundoApellido
��  
)
��  !!
brd_SegundoApellido
��" 5
.
��5 6
BorderBrush
��6 A
=
��B C
Brushes
��D K
.
��K L
Red
��L O
;
��O P
if
�� 
(
�� 
!
�� 
usuario
�� 
)
�� 
brd_Usuario
�� %
.
��% &
BorderBrush
��& 1
=
��2 3
Brushes
��4 ;
.
��; <
Red
��< ?
;
��? @
if
�� 
(
�� 
!
�� 
correo
�� 
)
�� 

brd_Correo
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
return
�� 
nombre
�� 
&&
�� 
primerApellido
�� +
&&
��, .
segundoApellido
��/ >
&&
��? A
correo
��B H
&&
��I K
usuario
��L S
;
��S T
}
�� 	
public
�� 
bool
�� !
ValidarCamposVacios
�� '
(
��' (
)
��( )
{
�� 	
bool
�� 
nombre
�� 
=
�� 
!
�� 
string
�� !
.
��! " 
IsNullOrWhiteSpace
��" 4
(
��4 5
txtb_Nombre
��5 @
.
��@ A
Text
��A E
)
��E F
;
��F G
bool
�� 
primerApellido
�� 
=
��  !
!
��" #
string
��# )
.
��) * 
IsNullOrWhiteSpace
��* <
(
��< =!
txtb_PrimerApellido
��= P
.
��P Q
Text
��Q U
)
��U V
;
��V W
bool
�� 
usuario
�� 
=
�� 
!
�� 
string
�� "
.
��" # 
IsNullOrWhiteSpace
��# 5
(
��5 6
txtb_Usuario
��6 B
.
��B C
Text
��C G
)
��G H
;
��H I
bool
�� 
correo
�� 
=
�� 
!
�� 
string
�� !
.
��! " 
IsNullOrWhiteSpace
��" 4
(
��4 5
txtb_Correo
��5 @
.
��@ A
Text
��A E
)
��E F
;
��F G
bool
�� 
cmbNivelEducativo
�� "
=
��# $ 
cmb_NivelEducativo
��% 7
.
��7 8
SelectedItem
��8 D
!=
��E G
null
��H L
;
��L M
bool
�� 
cmbInstitucion
�� 
=
��  !
cmb_Institución
��" 1
.
��1 2
SelectedItem
��2 >
!=
��? A
null
��B F
;
��F G
if
�� 
(
�� 
!
�� 
nombre
�� 
)
�� 

brd_Nombre
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
primerApellido
�� 
)
��   
brd_PrimerApellido
��! 3
.
��3 4
BorderBrush
��4 ?
=
��@ A
Brushes
��B I
.
��I J
Red
��J M
;
��M N
if
�� 
(
�� 
!
�� 
correo
�� 
)
�� 

brd_Correo
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
usuario
�� 
)
�� 
brd_Usuario
�� %
.
��% &
BorderBrush
��& 1
=
��2 3
Brushes
��4 ;
.
��; <
Red
��< ?
;
��? @
if
�� 
(
�� 
!
�� 
cmbNivelEducativo
�� "
)
��" # 
brd_NivelEducativo
��$ 6
.
��6 7
BorderBrush
��7 B
=
��C D
Brushes
��E L
.
��L M
Red
��M P
;
��P Q
if
�� 
(
�� 
!
�� 
cmbInstitucion
�� 
)
��  
brd_Institucion
��! 0
.
��0 1
BorderBrush
��1 <
=
��= >
Brushes
��? F
.
��F G
Red
��G J
;
��J K
return
�� 
nombre
�� 
&&
�� 
primerApellido
�� +
&&
��, .
correo
��/ 5
&&
��6 8
usuario
��9 @
&&
�� 
cmbNivelEducativo
��  
&&
��! #
cmbInstitucion
��$ 2
;
��2 3
}
�� 	
}
�� 
}�� �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\BuscarPerfil.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloUsuario% 2
{ 
public 

partial 
class 
BuscarPerfil %
:& '
Page( ,
{ 
private 
List 
< 
UsuarioPerfil "
>" #
_todosLosPerfiles$ 5
=6 7
new8 ;
List< @
<@ A
UsuarioPerfilA N
>N O
(O P
)P Q
;Q R
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
LoginQ V
)V W
)W X
;X Y
private 
Frame 
_frame 
; 
public 
BuscarPerfil 
( 
Frame !
frame" '
)' (
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
_frame"" 
="" 
frame"" 
;"" 
CargarUsuarios## 
(## 
)## 
;## 
}$$ 	
private'' 
void'' '
MostrarMensajePersonalizado'' 0
(''0 1
string''1 7
message''8 ?
,''? @

DialogType''A K
type''L P
)''P Q
{(( 	
var)) 
dialog)) 
=)) 
new)) )
VentanaEmergentePersonalizada)) :
()): ;
message)); B
,))B C
type))D H
)))H I
{** 
Owner++ 
=++ 
Window++ 
.++ 
	GetWindow++ (
(++( )
this++) -
)++- .
},, 
;,, 
dialog-- 
.-- 

ShowDialog-- 
(-- 
)-- 
;--  
}.. 	
private00 
void00 
BuscarAmigo00  
(00  !
object00! '
sender00( .
,00. / 
MouseButtonEventArgs000 D
e00E F
)00F G
{11 	
}33 	
private55 
async55 
void55 
CargarUsuarios55 )
(55) *
)55* +
{66 	
ListaComentarios77 
.77 
ItemsSource77 (
=77) *
null77+ /
;77/ 0
try99 
{:: 
string;; 
token;; 
=;; 
PerfilSingleton;; .
.;;. /
Instance;;/ 7
.;;7 8
TokenJwt;;8 @
;;;@ A
var== 
	respuesta== 
=== 
await==  %
PerfilServicio==& 4
.==4 5
BuscarPerfiles==5 C
(==C D
token==D I
)==I J
;==J K
switch?? 
(?? 
	respuesta?? !
.??! "
	Resultado??" +
)??+ ,
{@@ 
caseAA 
$numAA 
:AA 
varBB 
listaPerfilesBB )
=BB* +
newBB, /
ListBB0 4
<BB4 5
UsuarioPerfilBB5 B
>BBB C
(BBC D
)BBD E
;BBE F
foreachDD 
(DD  !
varDD! $
perfilDD% +
inDD, .
	respuestaDD/ 8
.DD8 9
DatosDD9 >
)DD> ?
{EE 
ifGG 
(GG  
perfilGG  &
.GG& '
IdUsuarioRegistradoGG' :
==GG; =
PerfilSingletonGG> M
.GGM N
InstanceGGN V
.GGV W
IdUsuarioRegistradoGGW j
)GGj k
continueHH  (
;HH( )
byteJJ  
[JJ  !
]JJ! "
imagenBinariaJJ# 0
=JJ1 2
ArrayJJ3 8
.JJ8 9
EmptyJJ9 >
<JJ> ?
byteJJ? C
>JJC D
(JJD E
)JJE F
;JJF G
tryKK 
{LL 
varMM  #
grpcMM$ (
=MM) *
newMM+ .$
FileServiceClientHandlerMM/ G
(MMG H
)MMH I
;MMI J
varNN  #
(NN$ %
imagenNN% +
,NN+ ,
_NN- .
)NN. /
=NN0 1
awaitNN2 7
grpcNN8 <
.NN< =
DownloadImageAsyncNN= O
(NNO P
perfilNNP V
.NNV W

FotoPerfilNNW a
)NNa b
;NNb c
imagenBinariaOO  -
=OO. /
imagenOO0 6
??OO7 9
ArrayOO: ?
.OO? @
EmptyOO@ E
<OOE F
byteOOF J
>OOJ K
(OOK L
)OOL M
;OOM N
}PP 
catchQQ !
(QQ" #
	ExceptionQQ# ,
exQQ- /
)QQ/ 0
{RR 
_loggerSS  '
.SS' (
LogErrorSS( 0
(SS0 1
exSS1 3
)SS3 4
;SS4 5'
MostrarMensajePersonalizadoTT  ;
(TT; <
$str	TT< �
,
TT� �

DialogType
TT� �
.
TT� �
Error
TT� �
)
TT� �
;
TT� �
}UU 
listaPerfilesWW )
.WW) *
AddWW* -
(WW- .
newWW. 1
UsuarioPerfilWW2 ?
{XX 
IdUsuarioRegistradoYY  3
=YY4 5
perfilYY6 <
.YY< =
IdUsuarioRegistradoYY= P
,YYP Q
NombreZZ  &
=ZZ' (
perfilZZ) /
.ZZ/ 0
NombreZZ0 6
,ZZ6 7
PrimerApellido[[  .
=[[/ 0
perfil[[1 7
.[[7 8
PrimerApellido[[8 F
,[[F G
SegundoApellido\\  /
=\\0 1
perfil\\2 8
.\\8 9
SegundoApellido\\9 H
,\\H I
NombreUsuario]]  -
=]]. /
perfil]]0 6
.]]6 7
NombreUsuario]]7 D
,]]D E
NivelEducativo^^  .
=^^/ 0
perfil^^1 7
.^^7 8
NivelEducativo^^8 F
,^^F G
	Seguidore__  )
=__* +
perfil__, 2
.__2 3
NumeroSeguidores__3 C
,__C D
Publicaciones``  -
=``. /
perfil``0 6
.``6 7
NumeroPublicaciones``7 J
,``J K
FotoPerfilRutaaa  .
=aa/ 0
perfilaa1 7
.aa7 8

FotoPerfilaa8 B
,aaB C
Imagenbb  &
=bb' (
ConvertirABitmapbb) 9
(bb9 :
imagenBinariabb: G
)bbG H
}cc 
)cc 
;cc 
}dd 
_todosLosPerfilesff )
=ff* +
listaPerfilesff, 9
;ff9 :
ListaComentariosgg (
.gg( )
ItemsSourcegg) 4
=gg5 6
listaPerfilesgg7 D
;ggD E
breakhh 
;hh 
casejj 
$numjj 
:jj '
MostrarMensajePersonalizadokk 3
(kk3 4
$strkk4 p
,kkp q

DialogTypekkr |
.kk| }
Error	kk} �
)
kk� �
;
kk� �
breakll 
;ll 
casenn 
(nn 
intnn 
)nn 
HttpStatusCodenn ,
.nn, -
Unauthorizednn- 9
:nn9 :'
MostrarMensajePersonalizadooo 3
(oo3 4
$stroo4 q
,ooq r

DialogTypeoos }
.oo} ~
Error	oo~ �
)
oo� �
;
oo� �
NavigationServicepp )
.pp) *
Navigatepp* 2
(pp2 3
newpp3 6
Loginpp7 <
(pp< =
)pp= >
)pp> ?
;pp? @
PerfilSingletonqq '
.qq' (
Instanceqq( 0
.qq0 1
Resetqq1 6
(qq6 7
)qq7 8
;qq8 9
breakrr 
;rr 
defaulttt 
:tt '
MostrarMensajePersonalizadouu 3
(uu3 4
$"uu4 6
$struu6 =
{uu= >
	respuestauu> G
.uuG H
MensajeuuH O
}uuO P
"uuP Q
,uuQ R

DialogTypeuuS ]
.uu] ^
Warninguu^ e
)uue f
;uuf g
breakvv 
;vv 
}ww 
}xx 
catchyy 
(yy 
	Exceptionyy 
exyy 
)yy  
{zz 
_logger{{ 
.{{ 
LogFatal{{  
({{  !
ex{{! #
){{# $
;{{$ %'
MostrarMensajePersonalizado|| +
(||+ ,
$str||, J
,||J K

DialogType||L V
.||V W
Error||W \
)||\ ]
;||] ^
}}} 
}~~ 	
private
�� 
void
�� 
TextBox_GotFocus
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
if
�� 
(
��  
txtb_BuscarTextBox
�� "
.
��" #
Text
��# '
==
��( *
$str
��+ :
)
��: ;
{
��  
txtb_BuscarTextBox
�� "
.
��" #
Text
��# '
=
��( )
$str
��* ,
;
��, - 
txtb_BuscarTextBox
�� "
.
��" #

Foreground
��# -
=
��. /
Brushes
��0 7
.
��7 8
Black
��8 =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� 
TextBox_LostFocus
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) * 
txtb_BuscarTextBox
��* <
.
��< =
Text
��= A
)
��A B
)
��B C
{
��  
txtb_BuscarTextBox
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 9
;
��9 : 
txtb_BuscarTextBox
�� "
.
��" #

Foreground
��# -
=
��. /
Brushes
��0 7
.
��7 8
Gray
��8 <
;
��< =
}
�� 
}
�� 	
private
�� 
void
�� 
IrADetallesPerfil
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Button
��  
button
��! '
&&
��( *
button
��+ 1
.
��1 2
Tag
��2 5
is
��6 8
UsuarioPerfil
��9 F
usuario
��G N
)
��N O
{
�� 
_frame
�� 
.
�� 
Navigate
�� 
(
��  
new
��  ##
VisualizarPerfilAmigo
��$ 9
(
��9 :
_frame
��: @
,
��@ A
usuario
��B I
)
��I J
)
��J K
;
��K L
}
�� 
}
�� 	
private
�� 
void
�� &
BuscarPerfil_TextChanged
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
TextChangedEventArgs
��= Q
e
��R S
)
��S T
{
�� 	
if
�� 
(
�� 
_todosLosPerfiles
�� !
==
��" $
null
��% )
||
��* ,
_todosLosPerfiles
��- >
.
��> ?
Count
��? D
==
��E G
$num
��H I
)
��I J
return
�� 
;
�� 
var
�� 
texto
�� 
=
��  
txtb_BuscarTextBox
�� *
.
��* +
Text
��+ /
?
��/ 0
.
��0 1
Trim
��1 5
(
��5 6
)
��6 7
.
��7 8
ToLower
��8 ?
(
��? @
)
��@ A
??
��B D
$str
��E G
;
��G H
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
texto
��* /
)
��/ 0
||
��1 3
texto
��4 9
==
��: <
$str
��= L
)
��L M
{
�� 
ListaComentarios
��  
.
��  !
ItemsSource
��! ,
=
��- .
_todosLosPerfiles
��/ @
;
��@ A
return
�� 
;
�� 
}
�� 
var
�� !
resultadosFiltrados
�� #
=
��$ %
_todosLosPerfiles
��& 7
.
��7 8
Where
��8 =
(
��= >
p
��> ?
=>
��@ B
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
Nombre
��. 4
)
��4 5
&&
��6 8
p
��9 :
.
��: ;
Nombre
��; A
.
��A B
ToLower
��B I
(
��I J
)
��J K
.
��K L
Contains
��L T
(
��T U
texto
��U Z
)
��Z [
)
��[ \
||
��] _
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
PrimerApellido
��. <
)
��< =
&&
��> @
p
��A B
.
��B C
PrimerApellido
��C Q
.
��Q R
ToLower
��R Y
(
��Y Z
)
��Z [
.
��[ \
Contains
��\ d
(
��d e
texto
��e j
)
��j k
)
��k l
||
��m o
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
SegundoApellido
��. =
)
��= >
&&
��? A
p
��B C
.
��C D
SegundoApellido
��D S
.
��S T
ToLower
��T [
(
��[ \
)
��\ ]
.
��] ^
Contains
��^ f
(
��f g
texto
��g l
)
��l m
)
��m n
||
��o q
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
NombreUsuario
��. ;
)
��; <
&&
��= ?
p
��@ A
.
��A B
NombreUsuario
��B O
.
��O P
ToLower
��P W
(
��W X
)
��X Y
.
��Y Z
Contains
��Z b
(
��b c
texto
��c h
)
��h i
)
��i j
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
ListaComentarios
�� 
.
�� 
ItemsSource
�� (
=
��) *!
resultadosFiltrados
��+ >
;
��> ?
}
�� 	
public
�� 
BitmapImage
�� 
?
�� 
ConvertirABitmap
�� ,
(
��, -
byte
��- 1
[
��1 2
]
��2 3
datos
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
datos
�� 
==
�� 
null
�� 
||
��  
datos
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
return
��4 :
null
��; ?
;
��? @
using
�� 
var
�� 
stream
�� 
=
�� 
new
�� "
MemoryStream
��# /
(
��/ 0
datos
��0 5
)
��5 6
;
��6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\Amigos.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloUsuario% 2
{ 
public 

partial 
class 
Amigos 
:  !
Page" &
{ 
private 
List 
< 
UsuarioPerfil "
>" #
_todosLosPerfiles$ 5
=6 7
new8 ;
List< @
<@ A
UsuarioPerfilA N
>N O
(O P
)P Q
;Q R
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
LoginQ V
)V W
)W X
;X Y
public 
Amigos 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
CargarUsuarios   
(   
)   
;   
}!! 	
private## 
void## '
MostrarMensajePersonalizado## 0
(##0 1
string##1 7
message##8 ?
,##? @

DialogType##A K
type##L P
)##P Q
{$$ 	
var%% 
dialog%% 
=%% 
new%% )
VentanaEmergentePersonalizada%% :
(%%: ;
message%%; B
,%%B C
type%%D H
)%%H I
{&& 
Owner'' 
='' 
Window'' 
.'' 
	GetWindow'' (
(''( )
this'') -
)''- .
}(( 
;(( 
dialog)) 
.)) 

ShowDialog)) 
()) 
))) 
;))  
}** 	
private,, 
void,, 
BuscarAmigo,,  
(,,  !
object,,! '
sender,,( .
,,,. / 
MouseButtonEventArgs,,0 D
e,,E F
),,F G
{-- 	
}.. 	
private00 
async00 
void00 
CargarUsuarios00 )
(00) *
)00* +
{11 	
ListaComentarios22 
.22 
ItemsSource22 (
=22) *
null22+ /
;22/ 0
try44 
{55 
string66 
token66 
=66 
PerfilSingleton66 .
.66. /
Instance66/ 7
.667 8
TokenJwt668 @
;66@ A
var88 
	respuesta88 
=88 
await88  %
PerfilServicio88& 4
.884 5
ObtenerSeguidos885 D
(88D E
token88E J
)88J K
;88K L
switch:: 
(:: 
	respuesta:: !
.::! "
Estado::" (
)::( )
{;; 
case<< 
$num<< 
:<< 
var== 
listaPerfiles== )
===* +
new==, /
List==0 4
<==4 5
UsuarioPerfil==5 B
>==B C
(==C D
)==D E
;==E F
foreach?? 
(??  !
var??! $
perfil??% +
in??, .
	respuesta??/ 8
.??8 9
Datos??9 >
)??> ?
{@@ 
ifBB 
(BB  
perfilBB  &
.BB& '
IdUsuarioRegistradoBB' :
==BB; =
PerfilSingletonBB> M
.BBM N
InstanceBBN V
.BBV W
IdUsuarioRegistradoBBW j
)BBj k
continueCC  (
;CC( )
byteEE  
[EE  !
]EE! "
imagenBinariaEE# 0
=EE1 2
ArrayEE3 8
.EE8 9
EmptyEE9 >
<EE> ?
byteEE? C
>EEC D
(EED E
)EEE F
;EEF G
tryFF 
{GG 
varHH  #
grpcHH$ (
=HH) *
newHH+ .$
FileServiceClientHandlerHH/ G
(HHG H
)HHH I
;HHI J
varII  #
(II$ %
imagenII% +
,II+ ,
_II- .
)II. /
=II0 1
awaitII2 7
grpcII8 <
.II< =
DownloadImageAsyncII= O
(IIO P
perfilIIP V
.IIV W

FotoPerfilIIW a
)IIa b
;IIb c
imagenBinariaJJ  -
=JJ. /
imagenJJ0 6
??JJ7 9
ArrayJJ: ?
.JJ? @
EmptyJJ@ E
<JJE F
byteJJF J
>JJJ K
(JJK L
)JJL M
;JJM N
}KK 
catchLL !
(LL" #
	ExceptionLL# ,
exLL- /
)LL/ 0
{MM 
_loggerNN  '
.NN' (
LogErrorNN( 0
(NN0 1
exNN1 3
)NN3 4
;NN4 5'
MostrarMensajePersonalizadoOO  ;
(OO; <
$str	OO< �
,
OO� �

DialogType
OO� �
.
OO� �
Error
OO� �
)
OO� �
;
OO� �
}PP 
listaPerfilesRR )
.RR) *
AddRR* -
(RR- .
newRR. 1
UsuarioPerfilRR2 ?
{SS 
IdUsuarioRegistradoTT  3
=TT4 5
perfilTT6 <
.TT< =
IdUsuarioRegistradoTT= P
,TTP Q
NombreUU  &
=UU' (
perfilUU) /
.UU/ 0
NombreUU0 6
,UU6 7
PrimerApellidoVV  .
=VV/ 0
perfilVV1 7
.VV7 8
PrimerApellidoVV8 F
,VVF G
SegundoApellidoWW  /
=WW0 1
perfilWW2 8
.WW8 9
SegundoApellidoWW9 H
,WWH I
NombreUsuarioXX  -
=XX. /
perfilXX0 6
.XX6 7
NombreUsuarioXX7 D
,XXD E
NivelEducativoYY  .
=YY/ 0
perfilYY1 7
.YY7 8
NivelEducativoYY8 F
,YYF G
NombreInstitucionZZ  1
=ZZ2 3
perfilZZ4 :
.ZZ: ;
NombreInstitucionZZ; L
,ZZL M
FotoPerfilRuta[[  .
=[[/ 0
perfil[[1 7
.[[7 8

FotoPerfil[[8 B
,[[B C
Imagen\\  &
=\\' (
ConvertirABitmap\\) 9
(\\9 :
imagenBinaria\\: G
)\\G H
}]] 
)]] 
;]] 
}^^ 
_todosLosPerfiles`` )
=``* +
listaPerfiles``, 9
;``9 :
ListaComentariosaa (
.aa( )
ItemsSourceaa) 4
=aa5 6
listaPerfilesaa7 D
;aaD E
breakbb 
;bb 
casedd 
(dd 
intdd 
)dd 
HttpStatusCodedd ,
.dd, -
Unauthorizeddd- 9
:dd9 :'
MostrarMensajePersonalizadoee 3
(ee3 4
$stree4 q
,eeq r

DialogTypeees }
.ee} ~
Error	ee~ �
)
ee� �
;
ee� �
NavigationServiceff )
.ff) *
Navigateff* 2
(ff2 3
newff3 6
Loginff7 <
(ff< =
)ff= >
)ff> ?
;ff? @
PerfilSingletongg '
.gg' (
Instancegg( 0
.gg0 1
Resetgg1 6
(gg6 7
)gg7 8
;gg8 9
breakhh 
;hh 
casejj 
$numjj 
:jj '
MostrarMensajePersonalizadokk 3
(kk3 4
$strkk4 p
,kkp q

DialogTypekkr |
.kk| }
Error	kk} �
)
kk� �
;
kk� �
breakll 
;ll 
defaultnn 
:nn '
MostrarMensajePersonalizadooo 3
(oo3 4
$"oo4 6
$stroo6 =
{oo= >
	respuestaoo> G
.ooG H
MensajeooH O
}ooO P
"ooP Q
,ooQ R

DialogTypeooS ]
.oo] ^
Warningoo^ e
)ooe f
;oof g
breakpp 
;pp 
}qq 
}rr 
catchss 
(ss 
	Exceptionss 
exss 
)ss  
{tt 
_loggeruu 
.uu 
LogFataluu  
(uu  !
exuu! #
)uu# $
;uu$ %'
MostrarMensajePersonalizadovv +
(vv+ ,
$strvv, J
,vvJ K

DialogTypevvL V
.vvV W
ErrorvvW \
)vv\ ]
;vv] ^
}ww 
}yy 	
public{{ 
BitmapImage{{ 
?{{ 
ConvertirABitmap{{ ,
({{, -
byte{{- 1
[{{1 2
]{{2 3
datos{{4 9
){{9 :
{|| 	
if}} 
(}} 
datos}} 
==}} 
null}} 
||}}  
datos}}! &
.}}& '
Length}}' -
==}}. 0
$num}}1 2
)}}2 3
return}}4 :
null}}; ?
;}}? @
using 
var 
stream 
= 
new "
MemoryStream# /
(/ 0
datos0 5
)5 6
;6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
TextBox_GotFocus
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
if
�� 
(
��  
txtb_BuscarTextBox
�� "
.
��" #
Text
��# '
==
��( *
$str
��+ :
)
��: ;
{
��  
txtb_BuscarTextBox
�� "
.
��" #
Text
��# '
=
��( )
$str
��* ,
;
��, - 
txtb_BuscarTextBox
�� "
.
��" #

Foreground
��# -
=
��. /
Brushes
��0 7
.
��7 8
Black
��8 =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� 
TextBox_LostFocus
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) * 
txtb_BuscarTextBox
��* <
.
��< =
Text
��= A
)
��A B
)
��B C
{
��  
txtb_BuscarTextBox
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 9
;
��9 : 
txtb_BuscarTextBox
�� "
.
��" #

Foreground
��# -
=
��. /
Brushes
��0 7
.
��7 8
Gray
��8 <
;
��< =
}
�� 
}
�� 	
private
�� 
void
�� &
BuscarPerfil_TextChanged
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
TextChangedEventArgs
��= Q
e
��R S
)
��S T
{
�� 	
if
�� 
(
�� 
_todosLosPerfiles
�� !
==
��" $
null
��% )
||
��* ,
_todosLosPerfiles
��- >
.
��> ?
Count
��? D
==
��E G
$num
��H I
)
��I J
return
�� 
;
�� 
var
�� 
texto
�� 
=
��  
txtb_BuscarTextBox
�� *
.
��* +
Text
��+ /
?
��/ 0
.
��0 1
Trim
��1 5
(
��5 6
)
��6 7
.
��7 8
ToLower
��8 ?
(
��? @
)
��@ A
??
��B D
$str
��E G
;
��G H
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
texto
��* /
)
��/ 0
||
��1 3
texto
��4 9
==
��: <
$str
��= L
)
��L M
{
�� 
ListaComentarios
��  
.
��  !
ItemsSource
��! ,
=
��- .
_todosLosPerfiles
��/ @
;
��@ A
return
�� 
;
�� 
}
�� 
var
�� !
resultadosFiltrados
�� #
=
��$ %
_todosLosPerfiles
��& 7
.
��7 8
Where
��8 =
(
��= >
p
��> ?
=>
��@ B
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
Nombre
��. 4
)
��4 5
&&
��6 8
p
��9 :
.
��: ;
Nombre
��; A
.
��A B
ToLower
��B I
(
��I J
)
��J K
.
��K L
Contains
��L T
(
��T U
texto
��U Z
)
��Z [
)
��[ \
||
��] _
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
PrimerApellido
��. <
)
��< =
&&
��> @
p
��A B
.
��B C
PrimerApellido
��C Q
.
��Q R
ToLower
��R Y
(
��Y Z
)
��Z [
.
��[ \
Contains
��\ d
(
��d e
texto
��e j
)
��j k
)
��k l
||
��m o
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
SegundoApellido
��. =
)
��= >
&&
��? A
p
��B C
.
��C D
SegundoApellido
��D S
.
��S T
ToLower
��T [
(
��[ \
)
��\ ]
.
��] ^
Contains
��^ f
(
��f g
texto
��g l
)
��l m
)
��m n
||
��o q
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� +
(
��+ ,
p
��, -
.
��- .
NombreUsuario
��. ;
)
��; <
&&
��= ?
p
��@ A
.
��A B
NombreUsuario
��B O
.
��O P
ToLower
��P W
(
��W X
)
��X Y
.
��Y Z
Contains
��Z b
(
��b c
texto
��c h
)
��h i
)
��i j
)
�� 
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
ListaComentarios
�� 
.
�� 
ItemsSource
�� (
=
��) *!
resultadosFiltrados
��+ >
;
��> ?
}
�� 	
private
�� 
async
�� 
void
�� 
DejarDeSeguir
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Button
��  
boton
��! &
&&
��' )
boton
��* /
.
��/ 0
Tag
��0 3
is
��4 6
UsuarioPerfil
��7 D
perfil
��E K
)
��K L
{
�� 
try
�� 
{
�� 
string
�� 
token
��  
=
��! "
PerfilSingleton
��# 2
.
��2 3
Instance
��3 ;
.
��; <
TokenJwt
��< D
;
��D E
var
�� 
	respuesta
�� !
=
��" #
await
��$ )
PerfilServicio
��* 8
.
��8 9"
DejarDeSeguirUsuario
��9 M
(
��M N
perfil
��N T
.
��T U!
IdUsuarioRegistrado
��U h
,
��h i
token
��j o
)
��o p
;
��p q
if
�� 
(
�� 
	respuesta
�� !
.
��! "
Estado
��" (
==
��) +
$num
��, /
)
��/ 0
{
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 Z
,
��Z [

DialogType
��\ f
.
��f g
Success
��g n
)
��n o
;
��o p
_todosLosPerfiles
�� )
.
��) *
Remove
��* 0
(
��0 1
perfil
��1 7
)
��7 8
;
��8 9
ListaComentarios
�� (
.
��( )
ItemsSource
��) 4
=
��5 6
null
��7 ;
;
��; <
ListaComentarios
�� (
.
��( )
ItemsSource
��) 4
=
��5 6
_todosLosPerfiles
��7 H
;
��H I
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$"
��4 6
$str
��6 =
{
��= >
	respuesta
��> G
.
��G H
Mensaje
��H O
}
��O P
"
��P Q
,
��Q R

DialogType
��S ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
)
��' (
;
��( ))
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 a
,
��a b

DialogType
��c m
.
��m n
Error
��n s
)
��s t
;
��t u
}
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloLogin\RestablecerContraseña.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloLogin% 0
{ 
public 

partial 
class "
RestablecerContraseña .
:/ 0
Page1 5
{ 
private 
bool 
_isPasswordVisible1 (
=) *
false+ 0
;0 1
private 
bool 
_isPasswordVisible2 (
=) *
false+ 0
;0 1
private 
readonly 
string 
_correo  '
;' (
public "
RestablecerContraseña $
($ %
string% +
correo, 2
)2 3
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
_correo"" 
="" 
correo"" 
;"" 
}## 	
private&& 
void&& '
MostrarMensajePersonalizado&& 0
(&&0 1
string&&1 7
message&&8 ?
,&&? @

DialogType&&A K
type&&L P
)&&P Q
{'' 	
var(( 
dialog(( 
=(( 
new(( )
VentanaEmergentePersonalizada(( :
(((: ;
message((; B
,((B C
type((D H
)((H I
{)) 
Owner** 
=** 
Window** 
.** 
	GetWindow** (
(**( )
this**) -
)**- .
}++ 
;++ 
dialog,, 
.,, 

ShowDialog,, 
(,, 
),, 
;,,  
}-- 	
private// 
bool// 
ValidarEntrada// #
(//# $
)//$ %
{00 	
string11 
contraseña11 
=11 
pwb_Contraseña11  .
.11. /
Password11/ 7
;117 8
string22  
confirmarContraseña22 &
=22' ($
pwb_ConfirmarContraseña22) @
.22@ A
Password22A I
;22I J
string33 
codigo33 
=33 
txtb_Codigo33 '
.33' (
Text33( ,
.33, -
Trim33- 1
(331 2
)332 3
;333 4
bool44 
esValido44 
=44 
true44  
;44  !
if66 
(66 
string66 
.66 
IsNullOrWhiteSpace66 )
(66) *
contraseña66* 4
)664 5
||666 8
string669 ?
.66? @
IsNullOrWhiteSpace66@ R
(66R S 
confirmarContraseña66S f
)66f g
)66h i
{77 '
MostrarMensajePersonalizado88 +
(88+ ,
$str88, p
,88p q

DialogType88r |
.88| }
Warning	88} �
)
88� �
;
88� �
esValido99 
=99 
false99  
;99  !
}:: 
else;; 
if;; 
(;; 
contraseña;; 
!=;;  " 
confirmarContraseña;;# 6
);;6 7
{<< '
MostrarMensajePersonalizado== +
(==+ ,
$str==, d
,==d e

DialogType==f p
.==p q
Warning==q x
)==x y
;==y z
esValido>> 
=>> 
false>>  
;>>  !
}?? 
else@@ 
if@@ 
(@@ 
!@@ 
	Validador@@ 
.@@  
ValidarContraseña@@  1
(@@1 2
contraseña@@2 <
)@@< =
)@@= >
{AA '
MostrarMensajePersonalizadoBB +
(BB+ ,
$strBB, l
,BBl m

DialogTypeBBn x
.BBx y
Warning	BBy �
)
BB� �
;
BB� �
esValidoDD 
=DD 
falseDD  
;DD  !
}EE 
elseEE 
ifEE 
(EE 
stringEE 
.EE 
IsNullOrEmptyEE *
(EE* +
codigoEE+ 1
)EE1 2
||EE3 5
codigoEE6 <
==EE= ?
$strEE@ X
)EEX Y
{FF '
MostrarMensajePersonalizadoGG +
(GG+ ,
$strGG, }
,GG} ~

DialogType	GG �
.
GG� �
Warning
GG� �
)
GG� �
;
GG� �
esValidoHH 
=HH 
falseHH  
;HH  !
}II 
returnJJ 
esValidoJJ 
;JJ 
}KK 	
privateNN 
asyncNN 
voidNN 
CambiarContraseñaNN ,
(NN, -
objectNN- 3
senderNN4 :
,NN: ;
RoutedEventArgsNN< K
eNNL M
)NNM N
{OO 	
ifPP 
(PP 
ValidarEntradaPP 
(PP 
)PP  
)PP  !
{QQ 
stringRR 
contraseniaRR "
=RR# $
_isPasswordVisible1RR% 8
?RR9 :"
txt_ContraseñaVisibleRR; P
.RRP Q
TextRRQ U
:RRV W
pwb_ContraseñaRRX f
.RRf g
PasswordRRg o
;RRo p
stringSS 
contraseniaHashedSS (
=SS) *
HasherSS+ 1
.SS1 2

HashToSHA2SS2 <
(SS< =
contraseniaSS= H
)SSH I
;SSI J
stringTT 
codigoTT 
=TT 
txtb_CodigoTT  +
.TT+ ,
TextTT, 0
.TT0 1
TrimTT1 5
(TT5 6
)TT6 7
;TT7 8
varVV 
	solicitudVV 
=VV 
newVV  #%
SolicitudCambioContrasenaVV$ =
{WW 
CorreoXX 
=XX 
_correoXX $
,XX$ %
CodigoYY 
=YY 
codigoYY #
,YY# $
NuevaContraseniaZZ $
=ZZ% &
contraseniaHashedZZ' 8
}[[ 
;[[ 
	Respuesta]] 
	respuesta]] #
=]]$ %
await]]& +
UsuarioServicio]], ;
.]]; <2
&VerificarCodigoYCambiarContrasenaAsync]]< b
(]]b c
	solicitud]]c l
)]]l m
;]]m n
switch^^ 
(^^ 
	respuesta^^ !
.^^! "
Codigo^^" (
)^^( )
{__ 
case`` 
(`` 
int`` 
)`` 
HttpStatusCode`` ,
.``, -
OK``- /
:``/ 0'
MostrarMensajePersonalizadoaa 3
(aa3 4
$straa4 
,	aa �

DialogType
aa� �
.
aa� �
Warning
aa� �
)
aa� �
;
aa� �
Loginbb 
loginbb #
=bb$ %
newbb& )
(bb) *
)bb* +
;bb+ ,
thiscc 
.cc 
NavigationServicecc .
.cc. /
Navigatecc/ 7
(cc7 8
logincc8 =
)cc= >
;cc> ?
breakdd 
;dd 
caseee 
(ee 
intee 
)ee 
HttpStatusCodeee ,
.ee, -
NotFoundee- 5
:ee5 6'
MostrarMensajePersonalizadoff 3
(ff3 4
$strff4 z
,ffz {

DialogType	ff| �
.
ff� �
Warning
ff� �
)
ff� �
;
ff� �
breakgg 
;gg 
casehh 
(hh 
inthh 
)hh 
HttpStatusCodehh ,
.hh, -

BadRequesthh- 7
:hh7 8'
MostrarMensajePersonalizadoii 3
(ii3 4
$strii4 ^
,ii^ _

DialogTypeii` j
.iij k
Warningiik r
)iir s
;iis t
breakjj 
;jj 
casekk 
(kk 
intkk 
)kk 
HttpStatusCodekk ,
.kk, -
Unauthorizedkk- 9
:kk9 :'
MostrarMensajePersonalizadoll 3
(ll3 4
$strll4 \
,ll\ ]

DialogTypell^ h
.llh i
Warninglli p
)llp q
;llq r
breakmm 
;mm 
casenn 
(nn 
intnn 
)nn 
HttpStatusCodenn ,
.nn, -
InternalServerErrornn- @
:nn@ A'
MostrarMensajePersonalizadooo 3
(oo3 4
$stroo4 }
,oo} ~

DialogType	oo �
.
oo� �
Error
oo� �
)
oo� �
;
oo� �
breakpp 
;pp 
}qq 
}ss 
}uu 	
privateww 
voidww "
UserIdTextBox_GotFocusww +
(ww+ ,
objectww, 2
senderww3 9
,ww9 :
RoutedEventArgsww; J
ewwK L
)wwL M
{xx 	
ifyy 
(yy 
txtb_Codigoyy 
.yy 
Textyy  
==yy! #
$stryy$ <
)yy< =
{zz 
txtb_Codigo{{ 
.{{ 
Text{{  
={{! "
$str{{# %
;{{% &
txtb_Codigo|| 
.|| 

Foreground|| &
=||' (
Brushes||) 0
.||0 1
Black||1 6
;||6 7
}}} 
}~~ 	
private
�� 
void
�� %
UserIdTextBox_LostFocus
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
txtb_Codigo
��* 5
.
��5 6
Text
��6 :
)
��: ;
)
��; <
{
�� 
txtb_Codigo
�� 
.
�� 
Text
��  
=
��! "
$str
��# ;
;
��; <
txtb_Codigo
�� 
.
�� 

Foreground
�� &
=
��' (
Brushes
��) 0
.
��0 1
Gray
��1 5
;
��5 6
}
�� 
}
�� 	
private
�� 
void
�� %
RegresarAlMenuPrincipal
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;"
MouseButtonEventArgs
��< P
e
��Q R
)
��R S
{
�� 	
MenuPrincipal
�� 
menuPrincipal
�� '
=
��( )
new
��* -
(
��. /
)
��/ 0
;
��0 1
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
menuPrincipal
��, 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
void
�� 
RegresarLogin
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1"
MouseButtonEventArgs
��2 F
e
��G H
)
��H I
{
�� 	
Login
�� 
login
�� 
=
�� 
new
�� 
(
�� 
)
��  
;
��  !
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
login
��, 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
void
�� "
PasswordBoxGotFocus1
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
txtb_Contraseña
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
}
�� 	
private
�� 
void
�� #
PasswordBoxLostFocus1
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
pwb_Contraseña
��* 8
.
��8 9
Password
��9 A
)
��A B
)
��B C
{
�� 
txtb_Contraseña
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
Visible
��8 ?
;
��? @
}
�� 
}
�� 	
private
�� 
void
�� "
PasswordBoxGotFocus2
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	'
txtb_ConfirmarContraseña
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
	Collapsed
��= F
;
��F G
}
�� 	
private
�� 
void
�� #
PasswordBoxLostFocus2
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *&
pwb_ConfirmarContraseña
��* A
.
��A B
Password
��B J
)
��J K
)
��K L
{
�� '
txtb_ConfirmarContraseña
�� (
.
��( )

Visibility
��) 3
=
��4 5

Visibility
��6 @
.
��@ A
Visible
��A H
;
��H I
}
�� 
}
�� 	
private
�� 
void
�� "
ContraseñaCambiada1
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	
txtb_Contraseña
�� 
.
�� 

Visibility
�� &
=
��' (
string
��) /
.
��/ 0
IsNullOrEmpty
��0 =
(
��= >
pwb_Contraseña
��> L
.
��L M
Password
��M U
)
��U V
?
��W X

Visibility
��Y c
.
��c d
Visible
��d k
:
��l m

Visibility
��n x
.
��x y
	Collapsed��y �
;��� �
}
�� 	
private
�� 
void
�� "
ContraseñaCambiada2
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	'
txtb_ConfirmarContraseña
�� $
.
��$ %

Visibility
��% /
=
��0 1
string
��2 8
.
��8 9
IsNullOrEmpty
��9 F
(
��F G&
pwb_ConfirmarContraseña
��G ^
.
��^ _
Password
��_ g
)
��g h
?
��i j

Visibility
��k u
.
��u v
Visible
��v }
:
��~ 

Visibility��� �
.��� �
	Collapsed��� �
;��� �
}
�� 	
private
�� 
void
�� +
ActivarDesactivarVisibilidad1
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A"
MouseButtonEventArgs
��B V
e
��W X
)
��X Y
{
�� 	!
_isPasswordVisible1
�� 
=
��  !
!
��" #!
_isPasswordVisible1
��# 6
;
��6 7
if
�� 
(
�� !
_isPasswordVisible1
�� #
)
��# $
{
�� $
txt_ContraseñaVisible
�� %
.
��% &
Text
��& *
=
��+ ,
pwb_Contraseña
��- ;
.
��; <
Password
��< D
;
��D E$
txt_ContraseñaVisible
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
Visible
��> E
;
��E F
pwb_Contraseña
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A
}
�� 
else
�� 
{
�� 
pwb_Contraseña
�� 
.
�� 
Password
�� '
=
��( )$
txt_ContraseñaVisible
��* ?
.
��? @
Text
��@ D
;
��D E
pwb_Contraseña
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
Visible
��7 >
;
��> ?$
txt_ContraseñaVisible
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
	Collapsed
��> G
;
��G H
}
�� 
}
�� 	
private
�� 
void
�� +
ActivarDesactivarVisibilidad2
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A"
MouseButtonEventArgs
��B V
e
��W X
)
��X Y
{
�� 	!
_isPasswordVisible2
�� 
=
��  !
!
��" #!
_isPasswordVisible2
��# 6
;
��6 7
if
�� 
(
�� !
_isPasswordVisible2
�� #
)
��# $
{
�� -
txt_ConfirmarContraseñaVisible
�� .
.
��. /
Text
��/ 3
=
��4 5&
pwb_ConfirmarContraseña
��6 M
.
��M N
Password
��N V
;
��V W-
txt_ConfirmarContraseñaVisible
�� .
.
��. /

Visibility
��/ 9
=
��: ;

Visibility
��< F
.
��F G
Visible
��G N
;
��N O&
pwb_ConfirmarContraseña
�� '
.
��' (

Visibility
��( 2
=
��3 4

Visibility
��5 ?
.
��? @
	Collapsed
��@ I
;
��I J
}
�� 
else
�� 
{
�� &
pwb_ConfirmarContraseña
�� '
.
��' (
Password
��( 0
=
��1 2-
txt_ConfirmarContraseñaVisible
��3 Q
.
��Q R
Text
��R V
;
��V W&
pwb_ConfirmarContraseña
�� '
.
��' (

Visibility
��( 2
=
��3 4

Visibility
��5 ?
.
��? @
Visible
��@ G
;
��G H-
txt_ConfirmarContraseñaVisible
�� .
.
��. /

Visibility
��/ 9
=
��: ;

Visibility
��< F
.
��F G
	Collapsed
��G P
;
��P Q
}
�� 
}
�� 	
private
�� 
void
�� )
VisiblePasswordTextChanged1
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?"
TextChangedEventArgs
��@ T
e
��U V
)
��V W
{
�� 	
if
�� 
(
�� !
_isPasswordVisible1
�� #
)
��# $
{
�� 
pwb_Contraseña
�� 
.
�� 
Password
�� '
=
��( )$
txt_ContraseñaVisible
��* ?
.
��? @
Text
��@ D
;
��D E
}
�� 
}
�� 	
private
�� 
void
�� )
VisiblePasswordTextChanged2
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?"
TextChangedEventArgs
��@ T
e
��U V
)
��V W
{
�� 	
if
�� 
(
�� !
_isPasswordVisible2
�� #
)
��# $
{
�� &
pwb_ConfirmarContraseña
�� '
.
��' (
Password
��( 0
=
��1 2-
txt_ConfirmarContraseñaVisible
��3 Q
.
��Q R
Text
��R V
;
��V W
}
�� 
}
�� 	
private
�� 
void
�� $
CodigoPreviewTextInput
�� +
(
��+ ,
object
��, 2
sender
��3 9
,
��9 :&
TextCompositionEventArgs
��; S
e
��T U
)
��U V
{
�� 	
e
�� 
.
�� 
Handled
�� 
=
�� 
!
�� 
Regex
�� 
.
�� 
IsMatch
�� &
(
��& '
e
��' (
.
��( )
Text
��) -
,
��- .
$str
��/ 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
void
�� "
CodigoPreviewKeyDown
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
KeyEventArgs
��9 E
e
��F G
)
��G H
{
�� 	
TextBox
�� 
textBox
�� 
=
�� 
sender
�� $
as
��% '
TextBox
��( /
;
��/ 0
if
�� 
(
�� 
e
�� 
.
�� 
Key
�� 
==
�� 
Key
�� 
.
�� 
Space
�� "
||
��# %
(
�� 
e
�� 
.
�� 
Key
�� 
==
�� 
Key
�� 
.
�� 
V
�� 
&&
��  "
Keyboard
��# +
.
��+ ,
	Modifiers
��, 5
==
��6 8
ModifierKeys
��9 E
.
��E F
Control
��F M
)
��M N
||
��O Q
(
�� 
e
�� 
.
�� 
Key
�� 
==
�� 
Key
�� 
.
�� 
C
�� 
&&
��  "
Keyboard
��# +
.
��+ ,
	Modifiers
��, 5
==
��6 8
ModifierKeys
��9 E
.
��E F
Control
��F M
)
��M N
||
��O Q
(
�� 
e
�� 
.
�� 
Key
�� 
==
�� 
Key
�� 
.
�� 
X
�� 
&&
��  "
Keyboard
��# +
.
��+ ,
	Modifiers
��, 5
==
��6 8
ModifierKeys
��9 E
.
��E F
Control
��F M
)
��M N
)
��N O
{
�� 
e
�� 
.
�� 
Handled
�� 
=
�� 
true
��  
;
��  !
}
�� 
}
�� 	
}
�� 
}�� �<
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloLogin\RecuperarContraseña.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloLogin% 0
{ 
public 

partial 
class  
RecuperarContraseña ,
:- .
Page/ 3
{ 
public  
RecuperarContraseña "
(" #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void '
MostrarMensajePersonalizado 0
(0 1
string1 7
message8 ?
,? @

DialogTypeA K
typeL P
)P Q
{   	
var!! 
dialog!! 
=!! 
new!! )
VentanaEmergentePersonalizada!! :
(!!: ;
message!!; B
,!!B C
type!!D H
)!!H I
{"" 
Owner## 
=## 
Window## 
.## 
	GetWindow## (
(##( )
this##) -
)##- .
}$$ 
;$$ 
dialog%% 
.%% 

ShowDialog%% 
(%% 
)%% 
;%%  
}&& 	
private(( 
void(( #
RegresarAlMenuPrincipal(( ,
(((, -
object((- 3
sender((4 :
,((: ; 
MouseButtonEventArgs((< P
e((Q R
)((R S
{)) 	
MenuPrincipal** 
menuPrincipal** '
=**( )
new*** -
(**. /
)**/ 0
;**0 1
this++ 
.++ 
NavigationService++ "
.++" #
Navigate++# +
(+++ ,
menuPrincipal++, 9
)++9 :
;++: ;
},, 	
private.. 
void.. 
RegresarLogin.. "
(.." #
object..# )
sender..* 0
,..0 1 
MouseButtonEventArgs..2 F
e..G H
)..H I
{// 	
Login00 
login00 
=00 
new00 
(00 
)00  
;00  !
this11 
.11 
NavigationService11 "
.11" #
Navigate11# +
(11+ ,
login11, 1
)111 2
;112 3
}22 	
private44 
void44 
EnviarCorreo44 !
(44! "
object44" (
sender44) /
,44/ 0
RoutedEventArgs441 @
e44A B
)44B C
{55 	
string66 
correo66 
=66 
txtb_Correo66 '
.66' (
Text66( ,
.66, -
Trim66- 1
(661 2
)662 3
;663 4
if88 
(88 

EsUnCorreo88 
(88 
correo88 !
)88! "
)88" #
{99 
MandarCorreo:: 
(:: 
correo:: #
)::# $
;::$ %
};; 
}== 	
private?? 
bool?? 

EsUnCorreo?? 
(??  
string??  &
correo??' -
)??- .
{@@ 	
boolAA 
	resultadoAA 
;AA 
ifCC 
(CC 
stringCC 
.CC 
IsNullOrEmptyCC $
(CC$ %
correoCC% +
)CC+ ,
||CC- /
correoCC0 6
==CC7 9
$strCC: O
)CCO P
{DD '
MostrarMensajePersonalizadoEE +
(EE+ ,
$strEE, ]
,EE] ^

DialogTypeEE_ i
.EEi j
WarningEEj q
)EEq r
;EEr s
	resultadoFF 
=FF 
falseFF !
;FF! "
}GG 
elseHH 
ifHH 
(HH 
!HH 
(HH 
	ValidadorHH  
.HH  !
ValidarCorreoHH! .
(HH. /
correoHH/ 5
)HH5 6
)HH6 7
)HH7 8
{II '
MostrarMensajePersonalizadoJJ +
(JJ+ ,
$strJJ, f
,JJf g

DialogTypeJJh r
.JJr s
WarningJJs z
)JJz {
;JJ{ |
	resultadoKK 
=KK 
falseKK 
;KK  
}LL 
elseMM 
{NN 
	resultadoOO 
=OO 
trueOO  
;OO  !
}PP 
returnQQ 
	resultadoQQ 
;QQ 
}RR 	
privateTT 
asyncTT 
voidTT 
MandarCorreoTT '
(TT' (
stringTT( .
correoTT/ 5
)TT5 6
{UU 	
	RespuestaVV 
	respuestaVV 
=VV  !
awaitVV" '
UsuarioServicioVV( 7
.VV7 8
EnviarCodigoACorreoVV8 K
(VVK L
correoVVL R
)VVR S
;VVS T
switchXX 
(XX 
	respuestaXX 
.XX 
CodigoXX $
)XX$ %
{YY 
caseZZ 
(ZZ 
intZZ 
)ZZ 
HttpStatusCodeZZ (
.ZZ( )
OKZZ) +
:ZZ+ ,'
MostrarMensajePersonalizado[[ /
([[/ 0
$str[[0 u
,[[u v

DialogType	[[w �
.
[[� �
Success
[[� �
)
[[� �
;
[[� �
NavigationService\\ %
.\\% &
Navigate\\& .
(\\. /
new\\/ 2"
RestablecerContraseña\\3 H
(\\H I
correo\\I O
)\\O P
)\\P Q
;\\Q R
break]] 
;]] 
case^^ 
(^^ 
int^^ 
)^^ 
HttpStatusCode^^ (
.^^( )
NotFound^^) 1
:^^1 2'
MostrarMensajePersonalizado__ 0
(__0 1
$str	__1 �
,
__� �

DialogType
__� �
.
__� �
Warning
__� �
)
__� �
;
__� �
break`` 
;`` 
caseaa 
(aa 
intaa 
)aa 
HttpStatusCodeaa (
.aa( )
InternalServerErroraa) <
:aa< ='
MostrarMensajePersonalizadobb /
(bb/ 0
$strbb0 y
,bby z

DialogType	bb{ �
.
bb� �
Error
bb� �
)
bb� �
;
bb� �
breakcc 
;cc 
}dd 
}ee 	
privatehh 
voidhh "
UserIdTextBox_GotFocushh +
(hh+ ,
objecthh, 2
senderhh3 9
,hh9 :
RoutedEventArgshh; J
ehhK L
)hhL M
{ii 	
ifjj 
(jj 
txtb_Correojj 
.jj 
Textjj  
==jj! #
$strjj$ 9
)jj9 :
{kk 
txtb_Correoll 
.ll 
Textll  
=ll! "
$strll# %
;ll% &
txtb_Correomm 
.mm 

Foregroundmm &
=mm' (
Brushesmm) 0
.mm0 1
Blackmm1 6
;mm6 7
}nn 
}oo 	
privateqq 
voidqq #
UserIdTextBox_LostFocusqq ,
(qq, -
objectqq- 3
senderqq4 :
,qq: ;
RoutedEventArgsqq< K
eqqL M
)qqM N
{rr 	
ifss 
(ss 
stringss 
.ss 
IsNullOrWhiteSpacess )
(ss) *
txtb_Correoss* 5
.ss5 6
Textss6 :
)ss: ;
)ss; <
{tt 
txtb_Correouu 
.uu 
Textuu  
=uu! "
$struu# 8
;uu8 9
txtb_Correovv 
.vv 

Foregroundvv &
=vv' (
Brushesvv) 0
.vv0 1
Grayvv1 5
;vv5 6
}ww 
}xx 	
}yy 
}zz ̨
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloLogin\Login.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloLogin% 0
{ 
public 

partial 
class 
Login 
:  
Page! %
{ 
private %
NotificacionSocketService )
socket* 0
=1 2
App3 6
.6 7 
SocketNotificaciones7 K
;K L
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
LoginQ V
)V W
)W X
;X Y
public 
Login 
( 
) 
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
}## 	
private%% 
void%% '
MostrarMensajePersonalizado%% 0
(%%0 1
string%%1 7
message%%8 ?
,%%? @

DialogType%%A K
type%%L P
)%%P Q
{&& 	
var'' 
dialog'' 
='' 
new'' )
VentanaEmergentePersonalizada'' :
('': ;
message''; B
,''B C
type''D H
)''H I
{(( 
Owner)) 
=)) 
Window)) 
.)) 
	GetWindow)) (
())( )
this))) -
)))- .
}** 
;** 
dialog++ 
.++ 

ShowDialog++ 
(++ 
)++ 
;++  
},, 	
private.. 
void.. #
RegresarAlMenuPrincipal.. ,
(.., -
object..- 3
sender..4 :
,..: ; 
MouseButtonEventArgs..< P
e..Q R
)..R S
{// 	
MenuPrincipal00 
menuPrincipal00 '
=00( )
new00* -
(00- .
)00. /
;00/ 0
this11 
.11 
NavigationService11 "
.11" #
Navigate11# +
(11+ ,
menuPrincipal11, 9
)119 :
;11: ;
}22 	
private44 
void44 
IrARegistrarse44 #
(44# $
object44$ *
sender44+ 1
,441 2
RoutedEventArgs443 B
e44C D
)44D E
{55 	
RegistrarUsuario66 
registrarUsuario66 -
=66. /
new660 3
(664 5
)665 6
;666 7
this77 
.77 
NavigationService77 "
.77" #
Navigate77# +
(77+ ,
registrarUsuario77, <
)77< =
;77= >
}88 	
private:: 
void:: #
IrARecuperarContraseña:: +
(::+ ,
object::, 2
sender::3 9
,::9 :
RoutedEventArgs::; J
e::K L
)::L M
{;; 	 
RecuperarContraseña<<  
recuperarContraseña<<  3
=<<4 5
new<<6 9
(<<: ;
)<<; <
;<<< =
this== 
.== 
NavigationService== "
.==" #
Navigate==# +
(==+ , 
recuperarContraseña==, ?
)==? @
;==@ A
}>> 	
private@@ 
void@@ "
UserIdTextBox_GotFocus@@ +
(@@+ ,
object@@, 2
sender@@3 9
,@@9 :
RoutedEventArgs@@; J
e@@K L
)@@L M
{AA 	
ifBB 
(BB 
txtb_UsuarioBB 
.BB 
TextBB !
==BB" $
$strBB% B
)BBB C
{CC 
txtb_UsuarioDD 
.DD 
TextDD !
=DD" #
$strDD$ &
;DD& '
txtb_UsuarioEE 
.EE 

ForegroundEE '
=EE( )
BrushesEE* 1
.EE1 2
BlackEE2 7
;EE7 8
}FF 
}GG 	
privateII 
voidII #
UserIdTextBox_LostFocusII ,
(II, -
objectII- 3
senderII4 :
,II: ;
RoutedEventArgsII< K
eIIL M
)IIM N
{JJ 	
ifKK 
(KK 
stringKK 
.KK 
IsNullOrWhiteSpaceKK )
(KK) *
txtb_UsuarioKK* 6
.KK6 7
TextKK7 ;
)KK; <
)KK< =
{LL 
txtb_UsuarioMM 
.MM 
TextMM !
=MM" #
$strMM$ A
;MMA B
txtb_UsuarioNN 
.NN 

ForegroundNN '
=NN( )
BrushesNN* 1
.NN1 2
GrayNN2 6
;NN6 7
}OO 
}PP 	
privateRR 
voidRR  
PasswordBox_GotFocusRR )
(RR) *
objectRR* 0
senderRR1 7
,RR7 8
RoutedEventArgsRR9 H
eRRI J
)RRJ K
{SS 	
txtb_ContraseñaTT 
.TT 

VisibilityTT &
=TT' (

VisibilityTT) 3
.TT3 4
	CollapsedTT4 =
;TT= >
}UU 	
privateWW 
voidWW !
PasswordBox_LostFocusWW *
(WW* +
objectWW+ 1
senderWW2 8
,WW8 9
RoutedEventArgsWW: I
eWWJ K
)WWK L
{XX 	
ifYY 
(YY 
stringYY 
.YY 
IsNullOrWhiteSpaceYY )
(YY) *
pwb_PasswordBoxYY* 9
.YY9 :
PasswordYY: B
)YYB C
)YYC D
{ZZ 
txtb_Contraseña[[ 
.[[  

Visibility[[  *
=[[+ ,

Visibility[[- 7
.[[7 8
Visible[[8 ?
;[[? @
}\\ 
}]] 	
private__ 
void__ '
PasswordBox_PasswordChanged__ 0
(__0 1
object__1 7
sender__8 >
,__> ?
RoutedEventArgs__@ O
e__P Q
)__Q R
{`` 	
txtb_Contraseñaaa 
.aa 

Visibilityaa &
=aa' (
stringaa) /
.aa/ 0
IsNullOrEmptyaa0 =
(aa= >
pwb_PasswordBoxaa> M
.aaM N
PasswordaaN V
)aaV W
?aaX Y

VisibilityaaZ d
.aad e
Visibleaae l
:aam n

Visibilityaao y
.aay z
	Collapsed	aaz �
;
aa� �
}bb 	
privatecc 
boolcc 
isPasswordVisiblecc &
=cc' (
falsecc) .
;cc. /
privateee 
voidee (
ActivarDesactivarVisibilidadee 1
(ee1 2
objectee2 8
senderee9 ?
,ee? @ 
MouseButtonEventArgseeA U
eeeV W
)eeW X
{ff 	
isPasswordVisiblegg 
=gg 
!gg  !
isPasswordVisiblegg! 2
;gg2 3
ifii 
(ii 
isPasswordVisibleii !
)ii! "
{jj "
txt_ContraseñaVisiblekk %
.kk% &
Textkk& *
=kk+ ,
pwb_PasswordBoxkk- <
.kk< =
Passwordkk= E
;kkE F"
txt_ContraseñaVisiblell %
.ll% &

Visibilityll& 0
=ll1 2

Visibilityll3 =
.ll= >
Visiblell> E
;llE F
pwb_PasswordBoxmm 
.mm  

Visibilitymm  *
=mm+ ,

Visibilitymm- 7
.mm7 8
	Collapsedmm8 A
;mmA B
}nn 
elseoo 
{pp 
pwb_PasswordBoxqq 
.qq  
Passwordqq  (
=qq) *"
txt_ContraseñaVisibleqq+ @
.qq@ A
TextqqA E
;qqE F
pwb_PasswordBoxrr 
.rr  

Visibilityrr  *
=rr+ ,

Visibilityrr- 7
.rr7 8
Visiblerr8 ?
;rr? @"
txt_ContraseñaVisibless %
.ss% &

Visibilityss& 0
=ss1 2

Visibilityss3 =
.ss= >
	Collapsedss> G
;ssG H
}tt 
}uu 	
privateww 
voidww '
VisiblePassword_TextChangedww 0
(ww0 1
objectww1 7
senderww8 >
,ww> ? 
TextChangedEventArgsww@ T
ewwU V
)wwV W
{xx 	
ifyy 
(yy 
isPasswordVisibleyy !
)yy! "
{zz 
pwb_PasswordBox{{ 
.{{  
Password{{  (
={{) *"
txt_ContraseñaVisible{{+ @
.{{@ A
Text{{A E
;{{E F
}|| 
}}} 	
private 
bool 
VerificarCampos $
($ %
)% &
{
�� 	
bool
�� 
usuario
�� 
=
�� 
!
�� 
string
�� "
.
��" # 
IsNullOrWhiteSpace
��# 5
(
��5 6
txtb_Usuario
��6 B
.
��B C
Text
��C G
)
��G H
&&
��I K
txtb_Usuario
��L X
.
��X Y
Text
��Y ]
!=
��^ `
$str
��a ~
;
��~ 
string
�� 
contraseña
�� 
=
�� 
isPasswordVisible
��  1
?
��2 3$
txt_ContraseñaVisible
��4 I
.
��I J
Text
��J N
:
��O P
pwb_PasswordBox
��Q `
.
��` a
Password
��a i
;
��i j
bool
�� 
contrasenaValida
�� !
=
��" #
!
��$ %
string
��% +
.
��+ , 
IsNullOrWhiteSpace
��, >
(
��> ?
contraseña
��? I
)
��I J
&&
��K M
txtb_Contraseña
��N ]
.
��] ^
Text
��^ b
==
��c e
$str
��f }
;
��} ~
if
�� 
(
�� 
!
�� 
usuario
�� 
)
�� 
brd_Usuario
�� %
.
��% &
BorderBrush
��& 1
=
��2 3
Brushes
��4 ;
.
��; <
Red
��< ?
;
��? @
if
�� 
(
�� 
!
�� 
contrasenaValida
�� !
)
��! "
brd_Contraseña
��# 1
.
��1 2
BorderBrush
��2 =
=
��> ?
Brushes
��@ G
.
��G H
Red
��H K
;
��K L
return
�� 
usuario
�� 
&&
�� 
contrasenaValida
�� .
;
��. /
}
�� 	
private
�� 
void
�� !
RegresarBordeNormal
�� (
(
��( )
)
��) *
{
�� 	
SolidColorBrush
�� 
verde
�� !
=
��" #
new
��$ '
(
��' (
(
��( )
Color
��) .
)
��. /
ColorConverter
��/ =
.
��= >
ConvertFromString
��> O
(
��O P
$str
��P Y
)
��Y Z
)
��Z [
;
��[ \
brd_Usuario
�� 
.
�� 
BorderBrush
�� #
=
��$ %
verde
��& +
;
��+ ,
brd_Contraseña
�� 
.
�� 
BorderBrush
�� &
=
��& '
verde
��( -
;
��- .
}
�� 	
private
�� 
void
�� 
BtnLoginClick
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
RoutedEventArgs
��2 A
e
��B C
)
��C D
{
�� 	!
RegresarBordeNormal
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
�� 
VerificarCampos
�� 
(
��  
)
��  !
)
��! "
{
�� 
string
�� 
usuario
�� 
=
��  
txtb_Usuario
��! -
.
��- .
Text
��. 2
;
��2 3
string
�� 
contrasenia
�� "
=
��# $
isPasswordVisible
��% 6
?
��7 8$
txt_ContraseñaVisible
��9 N
.
��N O
Text
��O S
:
��T U
pwb_PasswordBox
��V e
.
��e f
Password
��f n
;
��n o
string
�� 
contraseniaHashed
�� (
=
��) *
Hasher
��+ 1
.
��1 2

HashToSHA2
��2 <
(
��< =
contrasenia
��= H
)
��H I
;
��I J
var
�� 
credenciales
��  
=
��! "
new
��# &
UsuarioLogin
��' 3
{
��4 5

Identifier
��6 @
=
��A B
usuario
��C J
,
��J K
Contrasenia
��L W
=
��X Y
contraseniaHashed
��Z k
}
��l m
;
��m n
RespuestaLogin
�� 
(
�� 
credenciales
�� +
)
��+ ,
;
��, -
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, d
,
��d e

DialogType
��f p
.
��p q
Warning
��q x
)
��x y
;
��y z
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
RespuestaLogin
�� )
(
��) *
UsuarioLogin
��* 6
login
��7 <
)
��< =
{
�� 	
	btn_Login
�� 
.
�� 
	IsEnabled
�� 
=
��  !
false
��" '
;
��' (
img_Loading
�� 
.
�� 

Visibility
�� "
=
��# $

Visibility
��% /
.
��/ 0
Visible
��0 7
;
��7 8
try
�� 
{
�� 
var
�� 
	respuesta
�� 
=
�� 
await
��  %
UsuarioServicio
��& 5
.
��5 6 
IniciarSesionAsync
��6 H
(
��H I
login
��I N
)
��N O
;
��O P
switch
�� 
(
�� 
	respuesta
�� !
.
��! "
Estado
��" (
)
��( )
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
OK
��- /
:
��/ 0
await
�� '
CrearPerfilSingletonAsync
�� 7
(
��7 8
	respuesta
��8 A
.
��A B
Datos
��B G
,
��G H
	respuesta
��I R
.
��R S
Token
��S X
)
��X Y
;
��Y Z
DesplegarMenu
�� %
(
��% &
	respuesta
��& /
.
��/ 0
Datos
��0 5
.
��5 6

TipoAcceso
��6 @
)
��@ A
;
��A B
await
�� 
App
�� !
.
��! ""
SocketNotificaciones
��" 6
.
��6 7
ConectarAsync
��7 D
(
��D E
PerfilSingleton
��E T
.
��T U
Instance
��U ]
.
��] ^!
IdUsuarioRegistrado
��^ q
.
��q r
ToString
��r z
(
��z {
)
��{ |
)
��| }
;
��} ~
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
Unauthorized
��- 9
:
��9 :
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -

BadRequest
��- 7
:
��7 8)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 p
,
��p q

DialogType
��r |
.
��| }
Warning��} �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
	Forbidden
��- 6
:
��6 7)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str��4 �
,��� �

DialogType��� �
.��� �
Warning��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -!
InternalServerError
��- @
:
��@ A)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 f
,
��f g

DialogType
��h r
.
��r s
Error
��s x
)
��x y
;
��y z
break
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, K
+
��L M
ex
��N P
.
��P Q
Message
��Q X
,
��X Y

DialogType
��Z d
.
��d e
Error
��e j
)
��j k
;
��k l
}
�� 
finally
�� 
{
�� 
	btn_Login
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
true
��& *
;
��* +
img_Loading
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� '
CrearPerfilSingletonAsync
�� 4
(
��4 5
DatosUsuario
��5 A
datos
��B G
,
��G H
string
��I O
token
��P U
)
��U V
{
�� 	
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
var
�� 
perfil
�� 
=
�� 
PerfilSingleton
�� (
.
��( )
Instance
��) 1
;
��1 2
perfil
�� 
.
�� !
IdUsuarioRegistrado
�� &
=
��' (
datos
��) .
.
��. /
	IdUsuario
��/ 8
;
��8 9
perfil
�� 
.
�� 
Nombre
�� 
=
�� 
datos
�� !
.
��! "
Nombre
��" (
;
��( )
perfil
�� 
.
�� 
PrimerApellido
�� !
=
��" #
datos
��$ )
.
��) *
PrimerApellido
��* 8
;
��8 9
perfil
�� 
.
�� 
SegundoApellido
�� "
=
��# $
datos
��% *
.
��* +
SegundoApellido
��+ :
;
��: ;
perfil
�� 
.
�� 
NombreUsuario
��  
=
��! "
datos
��# (
.
��( )
NombreUsuario
��) 6
;
��6 7
perfil
�� 
.
�� 
Correo
�� 
=
�� 
datos
�� !
.
��! "
Correo
��" (
;
��( )
perfil
�� 
.
�� 
TokenJwt
�� 
=
�� 
token
�� #
;
��# $
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
datos
��& +
.
��+ ,

FotoPerfil
��, 6
)
��6 7
)
��7 8
{
�� 
try
�� 
{
�� 
var
�� 

grpcClient
�� "
=
��# $
new
��% (&
FileServiceClientHandler
��) A
(
��A B
)
��B C
;
��C D
var
�� 
(
�� 
fotoBinaria
�� $
,
��$ %
_
��& '
)
��' (
=
��) *
await
��+ 0

grpcClient
��1 ;
.
��; < 
DownloadImageAsync
��< N
(
��N O
datos
��O T
.
��T U

FotoPerfil
��U _
)
��_ `
;
��` a
perfil
�� 
.
�� 
FotoPerfilBinaria
�� ,
=
��- .
fotoBinaria
��/ :
??
��; =
Array
��> C
.
��C D
Empty
��D I
<
��I J
byte
��J N
>
��N O
(
��O P
)
��P Q
;
��Q R
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
perfil
�� 
.
�� 
FotoPerfilBinaria
�� ,
=
��- .
Array
��/ 4
.
��4 5
Empty
��5 :
<
��: ;
byte
��; ?
>
��? @
(
��@ A
)
��A B
;
��B C
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( ))
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 t
,
��t u

DialogType��v �
.��� �
Warning��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
DesplegarMenu
�� "
(
��" #
string
��# )
role
��* .
)
��. /
{
�� 	
switch
�� 
(
�� 
role
�� 
)
�� 
{
�� 
case
�� 
$str
�� !
:
��! "
NavigationService
�� %
.
��% &
Navigate
��& .
(
��. /
new
��/ 2
MenuPrincipal
��3 @
(
��@ A
)
��A B
)
��B C
;
��C D
break
�� 
;
�� 
case
�� 
$str
�� $
:
��$ %
NavigationService
�� %
.
��% &
Navigate
��& .
(
��. /
new
��/ 2
MenuAdministrador
��3 D
(
��D E
)
��E F
)
��F G
;
��G H
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\VisualizarDocumento.xaml.cs
	namespace   	
EduShare_Escritorio  
 
.   
Vistas   $
.  $ %
ModuloDocumentos  % 5
{!! 
public"" 

partial"" 
class"" 
VisualizarDocumento"" ,
:""- .
Page""/ 3
{## 
public$$ 
class$$ 
ComentarioVista$$ $
{%% 	
public&& 
required&& 
string&& "
Usuario&&# *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
public'' 
required'' 
string'' "
Texto''# (
{'') *
get''+ .
;''. /
set''0 3
;''3 4
}''5 6
public(( 
required(( 
BitmapImage(( '
Imagen((( .
{((/ 0
get((1 4
;((4 5
set((6 9
;((9 :
}((; <
public)) 
string)) 

Alineacion)) $
=>))% '
EsPropio))( 0
?))1 2
$str))3 :
:)); <
$str))= C
;))C D
public** 
bool** 
EsPropio**  
{**! "
get**# &
;**& '
set**( +
;**+ ,
}**- .
}++ 	
private// 
bool// 

_yaDioLike// 
=//  !
false//" '
;//' (
private00 
bool00 
_cargandoEstadoLike00 (
=00) *
false00+ 0
;000 1
private11 
static11 
readonly11 
LoggerManager11  -
_logger11. 5
=116 7
new118 ;
LoggerManager11< I
(11I J
typeof11J P
(11P Q
VisualizarDocumento11Q d
)11d e
)11e f
;11f g
private22 
PublicacionVista22  
_publicacionActual22! 3
;223 4
private33 
string33 
_rutaPdfTemporal33 '
;33' (
public44 
VisualizarDocumento44 "
(44" #
)44# $
{55 	
InitializeComponent66 
(66  
)66  !
;66! "
this77 
.77 
Loaded77 
+=77 #
VerificarSiInicioSesion77 2
;772 3
}99 	
public:: 
VisualizarDocumento:: "
(::" #
PublicacionVista::# 3
publicacion::4 ?
)::? @
:::A B
this::C G
(::G H
)::H I
{;; 	
_publicacionActual<< 
=<<  
publicacion<<! ,
;<<, -"
CargarDatosPublicacion>> "
(>>" #
)>># $
;>>$ %"
Perfil_PropertyChanged?? "
(??" #
)??# $
;??$ %
RegistrarVista@@ 
(@@ 
)@@ 
;@@ 
VerificarLikerAA 
(AA 
)AA 
;AA 
_BB 
=BB 
CargarPdfAsyncBB 
(BB 
)BB  
;BB  !
CargarComentariosCC 
(CC 
)CC 
;CC  
}DD 	
privateFF 
asyncFF 
voidFF 
CargarComentariosFF ,
(FF, -
)FF- .
{GG 	
ListaComentariosHH 
.HH 
ItemsSourceHH (
=HH) *
nullHH+ /
;HH/ 0
tryJJ 
{KK 
stringLL 
tokenLL 
=LL 
PerfilSingletonLL .
.LL. /
InstanceLL/ 7
.LL7 8
TokenJwtLL8 @
;LL@ A
varMM 
	respuestaMM 
=MM 
awaitMM  %
ComentarioServicioMM& 8
.MM8 91
%ObtenerComentariosPorPublicacionAsyncMM9 ^
(MM^ _
_publicacionActualMM_ q
.MMq r
IdPublicacionMMr 
)	MM �
;
MM� �
switchOO 
(OO 
	respuestaOO !
.OO! "
	ResultadoOO" +
)OO+ ,
{PP 
caseQQ 
$numQQ 
:QQ 
varRR  
listaComentarioVistaRR 0
=RR1 2
newRR3 6
ListRR7 ;
<RR; <
ComentarioVistaRR< K
>RRK L
(RRL M
)RRM N
;RRN O
foreachTT 
(TT  !
varTT! $

comentarioTT% /
inTT0 2
	respuestaTT3 <
.TT< =
DatosTT= B
)TTB C
{UU 
boolVV  
esPropioVV! )
=VV* +

comentarioVV, 6
.VV6 7
IdUsuarioRegistradoVV7 J
==VVK M
PerfilSingletonVVN ]
.VV] ^
InstanceVV^ f
.VVf g
IdUsuarioRegistradoVVg z
;VVz {
byteXX  
[XX  !
]XX! "
imagenBinariaXX# 0
=XX1 2
ArrayXX3 8
.XX8 9
EmptyXX9 >
<XX> ?
byteXX? C
>XXC D
(XXD E
)XXE F
;XXF G
tryZZ 
{[[ 
var\\  #
grpc\\$ (
=\\) *
new\\+ .$
FileServiceClientHandler\\/ G
(\\G H
)\\H I
;\\I J
var]]  #
(]]$ %
imagen]]% +
,]]+ ,
_]]- .
)]]. /
=]]0 1
await]]2 7
grpc]]8 <
.]]< =
DownloadImageAsync]]= O
(]]O P

comentario]]P Z
.]]Z [

FotoPerfil]][ e
)]]e f
;]]f g
imagenBinaria^^  -
=^^. /
imagen^^0 6
??^^7 9
Array^^: ?
.^^? @
Empty^^@ E
<^^E F
byte^^F J
>^^J K
(^^K L
)^^L M
;^^M N
}__ 
catch`` !
(``" #
	Exception``# ,
ex``- /
)``/ 0
{aa 
_loggerbb  '
.bb' (
LogErrorbb( 0
(bb0 1
exbb1 3
)bb3 4
;bb4 5
}cc  
listaComentarioVistaee 0
.ee0 1
Addee1 4
(ee4 5
newee5 8
ComentarioVistaee9 H
{ff 
Usuariogg  '
=gg( )

comentariogg* 4
.gg4 5
NombreUsuariogg5 B
,ggB C
Textohh  %
=hh& '

comentariohh( 2
.hh2 3
	Contenidohh3 <
,hh< =
Imagenii  &
=ii' (
ConvertirABitmapii) 9
(ii9 :
imagenBinariaii: G
)iiG H
,iiH I
EsPropiojj  (
=jj) *
esPropiojj+ 3
}ll 
)ll 
;ll 
}mm 
ifoo 
(oo  
listaComentarioVistaoo 0
.oo0 1
Countoo1 6
==oo7 9
$numoo: ;
)oo; <
{pp 
txtb_SinComentariosqq /
.qq/ 0

Visibilityqq0 :
=qq; <

Visibilityqq= G
.qqG H
VisibleqqH O
;qqO P
}rr 
ListaComentariostt (
.tt( )
ItemsSourcett) 4
=tt5 6 
listaComentarioVistatt7 K
;ttK L
breakuu 
;uu 
caseww 
(ww 
intww 
)ww 
HttpStatusCodeww ,
.ww, -
Unauthorizedww- 9
:ww9 :'
MostrarMensajePersonalizadoxx 3
(xx3 4
$strxx4 q
,xxq r

DialogTypexxs }
.xx} ~
Error	xx~ �
)
xx� �
;
xx� �
NavigationServiceyy )
.yy) *
Navigateyy* 2
(yy2 3
newyy3 6
Loginyy7 <
(yy< =
)yy= >
)yy> ?
;yy? @
PerfilSingletonzz '
.zz' (
Instancezz( 0
.zz0 1
Resetzz1 6
(zz6 7
)zz7 8
;zz8 9
break{{ 
;{{ 
case}} 
$num}} 
:}} '
MostrarMensajePersonalizado~~ 3
(~~3 4
$str~~4 f
,~~f g

DialogType~~h r
.~~r s
Error~~s x
)~~x y
;~~y z
break 
; 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$"
��4 6
$str
��6 =
{
��= >
	respuesta
��> G
.
��G H
Mensaje
��H O
}
��O P
"
��P Q
,
��Q R

DialogType
��S ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
break
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, b
,
��b c

DialogType
��d n
.
��n o
Error
��o t
)
��t u
;
��u v
}
�� 
}
�� 	
public
�� 
BitmapImage
�� 
?
�� 
ConvertirABitmap
�� ,
(
��, -
byte
��- 1
[
��1 2
]
��2 3
datos
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
datos
�� 
==
�� 
null
�� 
||
��  
datos
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
return
��4 :
null
��; ?
;
��? @
using
�� 
var
�� 
stream
�� 
=
�� 
new
�� "
MemoryStream
��# /
(
��/ 0
datos
��0 5
)
��5 6
;
��6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
RegistrarVista
�� )
(
��) *
)
��* +
{
�� 	
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
int
�� 
id
�� 
=
��  
_publicacionActual
�� '
.
��' (
IdPublicacion
��( 5
;
��5 6
var
�� 
	respuesta
�� 
=
�� 
await
�� !!
PublicacionServicio
��" 5
.
��5 6)
RegistrarVisualizacionAsync
��6 Q
(
��Q R
id
��R T
)
��T U
;
��U V
switch
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� '
)
��' (
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
OK
��) +
:
��+ , 
_publicacionActual
�� &
.
��& '
Vistas
��' -
++
��- /
;
��/ 0
txtb_Vistas
�� 
.
��  
Text
��  $
=
��% & 
_publicacionActual
��' 9
.
��9 :
Vistas
��: @
.
��@ A
ToString
��A I
(
��I J
)
��J K
;
��K L
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
VerificarLiker
�� )
(
��) *
)
��* +
{
�� 	
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
int
�� 
id
�� 
=
��  
_publicacionActual
�� '
.
��' (
IdPublicacion
��( 5
;
��5 6
var
�� 
	respuesta
�� 
=
�� 
await
�� !!
PublicacionServicio
��" 5
.
��5 6 
VerificarLikeAsync
��6 H
(
��H I
token
��I N
,
��N O
id
��P R
)
��R S
;
��S T!
_cargandoEstadoLike
�� 
=
��  !
true
��" &
;
��& '
switch
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� '
)
��' (
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
OK
��) +
:
��+ ,
btn_Like
�� 
.
�� 
	IsChecked
�� &
=
��' (
true
��) -
;
��- .

_yaDioLike
�� 
=
��  
true
��! %
;
��% &
btn_Like
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
Visible
��5 <
;
��< =
break
�� 
;
�� 
default
�� 
:
�� 
btn_Like
�� 
.
�� 
	IsChecked
�� &
=
��' (
false
��) .
;
��. /

_yaDioLike
�� 
=
��  
false
��! &
;
��& '
btn_Like
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
Visible
��5 <
;
��< =
break
�� 
;
�� 
}
�� !
_cargandoEstadoLike
�� 
=
��  !
false
��" '
;
��' (
}
�� 	
private
�� 
async
�� 
void
�� 
btn_Like_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
if
�� 
(
�� !
_cargandoEstadoLike
�� #
||
��$ & 
_publicacionActual
��' 9
==
��: <
null
��= A
)
��A B
return
��C I
;
��I J
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
int
�� 
id
�� 
=
��  
_publicacionActual
�� '
.
��' (
IdPublicacion
��( 5
;
��5 6
if
�� 
(
�� 

_yaDioLike
�� 
)
�� 
{
�� 
var
�� 
	respuesta
�� 
=
�� 
await
��  %!
PublicacionServicio
��& 9
.
��9 :
QuitarLikeAsync
��: I
(
��I J
token
��J O
,
��O P
id
��Q S
)
��S T
;
��T U
if
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� '
==
��( *
(
��+ ,
int
��, /
)
��/ 0
HttpStatusCode
��0 >
.
��> ?
OK
��? A
)
��A B
{
�� 

_yaDioLike
�� 
=
��  
false
��! &
;
��& ' 
_publicacionActual
�� &
.
��& '
Likes
��' ,
--
��, .
;
��. /

txtb_Likes
�� 
.
�� 
Text
�� #
=
��$ % 
_publicacionActual
��& 8
.
��8 9
Likes
��9 >
.
��> ?
ToString
��? G
(
��G H
)
��H I
;
��I J
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
	respuesta
�� 
=
�� 
await
��  %!
PublicacionServicio
��& 9
.
��9 :
DarLikeAsync
��: F
(
��F G
token
��G L
,
��L M
id
��N P
)
��P Q
;
��Q R
if
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� '
==
��( *
(
��+ ,
int
��, /
)
��/ 0
HttpStatusCode
��0 >
.
��> ?
OK
��? A
)
��A B
{
�� 

_yaDioLike
�� 
=
��  
true
��! %
;
��% & 
_publicacionActual
�� &
.
��& '
Likes
��' ,
++
��, .
;
��. /

txtb_Likes
�� 
.
�� 
Text
�� #
=
��$ % 
_publicacionActual
��& 8
.
��8 9
Likes
��9 >
.
��> ?
ToString
��? G
(
��G H
)
��H I
;
��I J
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� )
MostrarMensajePersonalizado
�� 0
(
��0 1
string
��1 7
message
��8 ?
,
��? @

DialogType
��A K
type
��L P
)
��P Q
{
�� 	
var
�� 
dialog
�� 
=
�� 
new
�� +
VentanaEmergentePersonalizada
�� :
(
��: ;
message
��; B
,
��B C
type
��D H
)
��H I
{
�� 
Owner
�� 
=
�� 
Window
�� 
.
�� 
	GetWindow
�� (
(
��( )
this
��) -
)
��- .
}
�� 
;
�� 
dialog
�� 
.
�� 

ShowDialog
�� 
(
�� 
)
�� 
;
��  
}
�� 	
private
�� 
void
�� $
CargarDatosPublicacion
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
��  
_publicacionActual
�� "
==
��# %
null
��& *
)
��* +
return
��, 2
;
��2 3

txtb_Likes
�� 
.
�� 
Text
�� 
=
��  
_publicacionActual
�� 0
.
��0 1
Likes
��1 6
.
��6 7
ToString
��7 ?
(
��? @
)
��@ A
;
��A B
txtb_Vistas
�� 
.
�� 
Text
�� 
=
��  
_publicacionActual
�� 1
.
��1 2
Vistas
��2 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
;
��C D
txtb_Descargas
�� 
.
�� 
Text
�� 
=
��  ! 
_publicacionActual
��" 4
.
��4 5
	Descargas
��5 >
.
��> ?
ToString
��? G
(
��G H
)
��H I
;
��I J
txtb_Titulo
�� 
.
�� 
Text
�� 
=
��  
_publicacionActual
�� 1
.
��1 2
Titulo
��2 8
;
��8 9
txtb_Resumen
�� 
.
�� 
Text
�� 
=
��  
_publicacionActual
��  2
.
��2 3
Descripcion
��3 >
;
��> ?

txtb_Autor
�� 
.
�� 
Text
�� 
=
��  
_publicacionActual
�� 0
.
��0 1
Autor
��1 6
;
��6 7

txtb_Fecha
�� 
.
�� 
Text
�� 
=
��  
_publicacionActual
�� 0
.
��0 1
Fecha
��1 6
;
��6 7
}
�� 	
private
�� 
void
�� %
VerificarSiInicioSesion
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
�� 	
var
�� 
perfil
�� 
=
�� 
PerfilSingleton
�� (
.
��( )
Instance
��) 1
;
��1 2
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
perfil
��& ,
.
��, -
Correo
��- 3
)
��3 4
)
��4 5
{
�� 

txtb_Frase
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =
img_Visualizar
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
	Collapsed
��7 @
;
��@ A

PdfWebView
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
Visible
��3 :
;
��: ;
stckp_Accesorios
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
Visible
��9 @
;
��@ A

elp_Perfil
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
Visible
��3 :
;
��: ;
brd_Comentarios
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
Visible
��8 ?
;
��? @
SolidColorBrush
�� 
verde
��  %
=
��& '
new
��( +
(
��+ ,
(
��, -
Color
��- 2
)
��2 3
ColorConverter
��3 A
.
��A B
ConvertFromString
��B S
(
��S T
$str
��T ]
)
��] ^
)
��^ _
;
��_ `
brd_Descargar
�� 
.
�� 

Background
�� (
=
��) *
verde
��+ 0
;
��0 1
btn_Descargar
�� 
.
�� 
	IsEnabled
�� '
=
��( )
true
��* .
;
��. /
brd_Descargar
�� 
.
�� 
Cursor
�� $
=
��% &
Cursors
��' .
.
��. /
Hand
��/ 3
;
��3 4
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
CargarPdfAsync
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
��  
_publicacionActual
�� "
==
��# %
null
��& *
||
��+ -
string
��. 4
.
��4 5
IsNullOrEmpty
��5 B
(
��B C 
_publicacionActual
��C U
.
��U V
Ruta
��V Z
)
��Z [
)
��[ \
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, S
,
��S T

DialogType
��U _
.
��_ `
Warning
��` g
)
��g h
;
��h i
return
�� 
;
�� 
}
�� 
try
�� 
{
�� 

PdfWebView
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =
var
�� 
grpc
�� 
=
�� 
new
�� &
FileServiceClientHandler
�� 7
(
��7 8
)
��8 9
;
��9 :
var
�� 
(
�� 

pdfBinario
�� 
,
��  
nombreArchivo
��! .
)
��. /
=
��0 1
await
��2 7
grpc
��8 <
.
��< =
DownloadPdfAsync
��= M
(
��M N 
_publicacionActual
��N `
.
��` a
Ruta
��a e
)
��e f
;
��f g
if
�� 
(
�� 

pdfBinario
�� 
!=
�� !
null
��" &
&&
��' )

pdfBinario
��* 4
.
��4 5
Length
��5 ;
>
��< =
$num
��> ?
)
��? @
{
�� 
string
�� 
tempPath
�� #
=
��$ %
System
��& ,
.
��, -
IO
��- /
.
��/ 0
Path
��0 4
.
��4 5
GetTempPath
��5 @
(
��@ A
)
��A B
;
��B C
_rutaPdfTemporal
�� $
=
��% &
System
��' -
.
��- .
IO
��. 0
.
��0 1
Path
��1 5
.
��5 6
Combine
��6 =
(
��= >
tempPath
��> F
,
��F G
$"
��H J
{
��J K 
_publicacionActual
��K ]
.
��] ^
IdPublicacion
��^ k
}
��k l
$str
��l m
{
��m n
nombreArchivo
��n {
}
��{ |
"
��| }
)
��} ~
;
��~ 
await
�� 
File
�� 
.
��  
WriteAllBytesAsync
�� 1
(
��1 2
_rutaPdfTemporal
��2 B
,
��B C

pdfBinario
��D N
)
��N O
;
��O P
await
�� &
InicializarWebView2Async
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 T
,
��T U

DialogType
��V `
.
��` a
Error
��a f
)
��f g
;
��g h
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, K
,
��K L

DialogType
��M W
.
��W X
Error
��X ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
InicializarWebView2Async
�� 3
(
��3 4
)
��4 5
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 

PdfWebView
�� 
.
�� 
CoreWebView2
�� +
==
��, .
null
��/ 3
)
��3 4
await
�� 

PdfWebView
�� $
.
��$ %%
EnsureCoreWebView2Async
��% <
(
��< =
)
��= >
;
��> ?
var
�� 
settings
�� 
=
�� 

PdfWebView
�� )
.
��) *
CoreWebView2
��* 6
.
��6 7
Settings
��7 ?
;
��? @
settings
�� 
.
�� 
IsScriptEnabled
�� (
=
��) *
false
��+ 0
;
��0 1
settings
�� 
.
��  
AreDevToolsEnabled
�� +
=
��, -
false
��. 3
;
��3 4
settings
�� 
.
�� "
IsZoomControlEnabled
�� -
=
��. /
true
��0 4
;
��4 5
settings
�� 
.
�� +
AreDefaultContextMenusEnabled
�� 6
=
��7 8
false
��9 >
;
��> ?
settings
�� 
.
�� '
IsBuiltInErrorPageEnabled
�� 2
=
��3 4
false
��5 :
;
��: ;

PdfWebView
�� 
.
��  
NavigationStarting
�� -
+=
��. 0
(
��1 2
s
��2 3
,
��3 4
e
��5 6
)
��6 7
=>
��8 :
{
�� 
if
�� 
(
�� 
!
�� 
e
�� 
.
�� 
Uri
�� 
.
�� 
Contains
�� '
(
��' (
$str
��( .
)
��. /
&&
��0 2
!
��3 4
e
��4 5
.
��5 6
Uri
��6 9
.
��9 :

StartsWith
��: D
(
��D E
$str
��E N
)
��N O
)
��O P
{
�� 
e
�� 
.
�� 
Cancel
��  
=
��! "
true
��# '
;
��' (
}
�� 
}
�� 
;
�� 

PdfWebView
�� 
.
�� !
NavigationCompleted
�� .
+=
��/ 1
(
��2 3
s
��3 4
,
��4 5
e
��6 7
)
��7 8
=>
��9 ;
{
�� 
if
�� 
(
�� 
e
�� 
.
�� 
	IsSuccess
�� #
)
��# $
{
�� 

PdfWebView
�� "
.
��" #

Visibility
��# -
=
��. /

Visibility
��0 :
.
��: ;
Visible
��; B
;
��B C
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 W
,
��W X

DialogType
��Y c
.
��c d
Error
��d i
)
��i j
;
��j k
}
�� 
}
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
_rutaPdfTemporal
��* :
)
��: ;
&&
��< >
File
��? C
.
��C D
Exists
��D J
(
��J K
_rutaPdfTemporal
��K [
)
��[ \
)
��\ ]
{
�� 

PdfWebView
�� 
.
�� 
Source
�� %
=
��& '
new
��( +
Uri
��, /
(
��/ 0
_rutaPdfTemporal
��0 @
)
��@ A
;
��A B
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, S
,
��S T

DialogType
��U _
.
��_ `
Error
��` e
)
��e f
;
��f g
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� &
DescargarDocumento_Click
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
RoutedEventArgs
��C R
e
��S T
)
��T U
{
�� 	
if
�� 
(
��  
_publicacionActual
�� "
==
��# %
null
��& *
)
��* +
return
��, 2
;
��2 3
try
�� 
{
�� 
var
�� 
saveFileDialog
�� "
=
��# $
new
��% (
	Microsoft
��) 2
.
��2 3
Win32
��3 8
.
��8 9
SaveFileDialog
��9 G
{
�� 
FileName
�� 
=
�� 
$"
�� !
{
��! " 
_publicacionActual
��" 4
.
��4 5
Titulo
��5 ;
}
��; <
$str
��< @
"
��@ A
,
��A B

DefaultExt
�� 
=
��  
$str
��! '
,
��' (
Filter
�� 
=
�� 
$str
�� 6
}
�� 
;
�� 
if
�� 
(
�� 
saveFileDialog
�� "
.
��" #

ShowDialog
��# -
(
��- .
)
��. /
==
��0 2
true
��3 7
)
��7 8
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrEmpty
��  -
(
��- .
_rutaPdfTemporal
��. >
)
��> ?
&&
��@ B
File
��C G
.
��G H
Exists
��H N
(
��N O
_rutaPdfTemporal
��O _
)
��_ `
)
��` a
{
�� 
File
�� 
.
�� 
Copy
�� !
(
��! "
_rutaPdfTemporal
��" 2
,
��2 3
saveFileDialog
��4 B
.
��B C
FileName
��C K
,
��K L
true
��M Q
)
��Q R
;
��R S)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 X
,
��X Y

DialogType
��Z d
.
��d e
Success
��e l
)
��l m
;
��m n
await
�� $
RegistrarDescargaAsync
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 f
,
��f g

DialogType
��h r
.
��r s
Error
��s x
)
��x y
;
��y z
}
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, N
,
��N O

DialogType
��P Z
.
��Z [
Error
��[ `
)
��` a
;
��a b
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� $
RegistrarDescargaAsync
�� 1
(
��1 2
)
��2 3
{
�� 	
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
int
�� 
id
�� 
=
��  
_publicacionActual
�� '
.
��' (
IdPublicacion
��( 5
;
��5 6
var
�� 
	respuesta
�� 
=
�� 
await
�� !!
PublicacionServicio
��" 5
.
��5 6$
RegistrarDescargaAsync
��6 L
(
��L M
token
��M R
,
��R S
id
��S U
)
��U V
;
��V W
switch
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� '
)
��' (
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
OK
��) +
:
��+ , 
_publicacionActual
�� &
.
��& '
	Descargas
��' 0
++
��0 2
;
��2 3
txtb_Descargas
�� "
.
��" #
Text
��# '
=
��( ) 
_publicacionActual
��* <
.
��< =
	Descargas
��= F
.
��F G
ToString
��G O
(
��O P
)
��P Q
;
��Q R
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� %
AgregarComentario_Click
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A
RoutedEventArgs
��B Q
e
��R S
)
��S T
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� *
(
��* +"
txtb_NuevoComentario
��+ ?
.
��? @
Text
��@ D
)
��D E
)
��E F
{
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
TokenJwt
��8 @
;
��@ A$
CrearComentarioRequest
�� &

comentario
��' 1
=
��2 3
new
��4 7
(
��7 8
)
��8 9
;
��9 :

comentario
�� 
.
�� 
IdPublicacion
�� (
=
��) * 
_publicacionActual
��+ =
.
��= >
IdPublicacion
��> K
;
��K L

comentario
�� 
.
�� 
	Contenido
�� $
=
��% &"
txtb_NuevoComentario
��' ;
.
��; <
Text
��< @
;
��@ A
var
�� 
	respuesta
�� 
=
�� 
await
��  % 
ComentarioServicio
��& 8
.
��8 9"
CrearComentarioAsync
��9 M
(
��M N
token
��N S
,
��S T

comentario
��U _
)
��_ `
;
��` a
switch
�� 
(
�� 
	respuesta
�� !
.
��! "
	Resultado
��" +
)
��+ ,
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
OK
��- /
:
��/ 0"
txtb_NuevoComentario
�� ,
.
��, -
Text
��- 1
=
��2 3
string
��4 :
.
��: ;
Empty
��; @
;
��@ A
CargarComentarios
�� )
(
��) *
)
��* +
;
��+ ,
break
�� 
;
�� 
default
�� 
:
�� "
txtb_NuevoComentario
�� ,
.
��, -
Text
��- 1
=
��2 3
string
��4 :
.
��: ;
Empty
��; @
;
��@ A
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
EnviarComentario
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4"
MouseButtonEventArgs
��5 I
e
��J K
)
��K L
{
�� 	%
AgregarComentario_Click
�� #
(
��# $
sender
��$ *
,
��* +
e
��, -
)
��- .
;
��. /
}
�� 	
private
�� 
void
�� !
TxtbNuevoComentario
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
TextChangedEventArgs
��8 L
e
��M N
)
��N O
{
�� 	
if
�� 
(
�� 
!
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� *
(
��* +"
txtb_NuevoComentario
��+ ?
.
��? @
Text
��@ D
)
��D E
)
��E F
{
�� "
img_EnviarComentario
�� $
.
��$ %
Source
��% +
=
��, -
new
��. 1
BitmapImage
��2 =
(
��= >
new
��> A
Uri
��B E
(
��E F
$str
��F r
,
��r s
UriKind
��t {
.
��{ |
Relative��| �
)��� �
)��� �
;��� �"
img_EnviarComentario
�� $
.
��$ %
Cursor
��% +
=
��, -
Cursors
��. 5
.
��5 6
Hand
��6 :
;
��: ;
}
�� 
else
�� 
{
�� "
img_EnviarComentario
�� $
.
��$ %
Source
��% +
=
��, -
new
��. 1
BitmapImage
��2 =
(
��= >
new
��> A
Uri
��B E
(
��E F
$str
��F u
,
��u v
UriKind
��w ~
.
��~ 
Relative�� �
)��� �
)��� �
;��� �"
img_EnviarComentario
�� $
.
��$ %
Cursor
��% +
=
��, -
Cursors
��. 5
.
��5 6
No
��6 8
;
��8 9
}
�� 
}
�� 	
private
�� 
async
�� 
void
��  
EliminarComentario
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Button
��  
btn
��! $
&&
��% '
btn
��( +
.
��+ ,
Tag
��, /
is
��0 2
ComentarioVista
��3 B
comentarioUI
��C O
)
��O P
{
�� 
var
��  
comentarioOriginal
�� &
=
��' (
await
��) . 
ComentarioServicio
��/ A
.
��A B3
%ObtenerComentariosPorPublicacionAsync
��B g
(
��g h 
_publicacionActual
��h z
.
��z {
IdPublicacion��{ �
)��� �
;��� �
var
�� !
comentarioAEliminar
�� '
=
��( ) 
comentarioOriginal
��* <
.
��< =
Datos
��= B
.
��B C
FirstOrDefault
��C Q
(
��Q R
c
��R S
=>
��T V
c
�� 
.
�� 
NombreUsuario
�� #
==
��$ &
comentarioUI
��' 3
.
��3 4
Usuario
��4 ;
&&
��< >
c
��? @
.
��@ A
	Contenido
��A J
==
��K M
comentarioUI
��N Z
.
��Z [
Texto
��[ `
)
��` a
;
��a b
if
�� 
(
�� !
comentarioAEliminar
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
var
�� 
token
�� 
=
�� 
PerfilSingleton
��  /
.
��/ 0
Instance
��0 8
.
��8 9
TokenJwt
��9 A
;
��A B
var
�� 
	resultado
�� %
=
��& '
await
��( - 
ComentarioServicio
��. @
.
��@ A%
EliminarComentarioAsync
��A X
(
��X Y
token
��Y ^
,
��^ _!
comentarioAEliminar
��` s
.
��s t
IdComentario��t �
)��� �
;��� �
if
�� 
(
�� 
	resultado
�� %
.
��% &
	Resultado
��& /
==
��0 2
$num
��3 6
)
��6 7
{
�� 
CargarComentarios
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� 7
(
��7 8
$str
��8 U
,
��U V

DialogType
��W a
.
��a b
Error
��b g
)
��g h
;
��h i
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� $
Perfil_PropertyChanged
�� +
(
��+ ,
)
��, -
{
�� 	
var
�� 
foto
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
FotoPerfilBinaria
��8 I
;
��I J
var
�� 
bitmap
�� 
=
��  "
ConvertirFotoABitmap
��! 5
(
��5 6
foto
��6 :
)
��: ;
;
��; <
img_FotoPerfil
�� &
.
��& '
ImageSource
��' 2
=
��3 4
bitmap
��5 ;
;
��; <
}
�� 	
public
�� 
ImageSource
�� "
ConvertirFotoABitmap
�� /
(
��/ 0
byte
��0 4
[
��4 5
]
��5 6
binario
��7 >
)
��> ?
{
�� 	
if
�� 
(
�� 
binario
�� 
==
�� 
null
�� 
||
��  "
binario
��# *
.
��* +
Length
��+ 1
==
��2 4
$num
��5 6
)
��6 7
return
��8 >
null
��? C
;
��C D
using
�� 
var
�� 
ms
�� 
=
�� 
new
�� 
MemoryStream
�� +
(
��+ ,
binario
��, 3
)
��3 4
;
��4 5
var
�� 
bitmap
�� 
=
�� 
new
�� 
BitmapImage
�� (
(
��( )
)
��) *
;
��* +
bitmap
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
bitmap
�� 
.
�� 
CacheOption
�� 
=
��  
BitmapCacheOption
��! 2
.
��2 3
OnLoad
��3 9
;
��9 :
bitmap
�� 
.
�� 
StreamSource
�� 
=
��  !
ms
��" $
;
��$ %
bitmap
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
bitmap
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\SubirDocumento.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloDocumentos% 5
{ 
public 

partial 
class 
SubirDocumento '
:( )
Page* .
{   
private!! 
static!! 
readonly!! 
LoggerManager!!  -
_logger!!. 5
=!!6 7
new!!8 ;
LoggerManager!!< I
(!!I J
typeof!!J P
(!!P Q
Login!!Q V
)!!V W
)!!W X
;!!X Y
private"" 
List"" 
<"" 
	Categoria"" 
>"" 
_todasLasCategorias""  3
=""4 5
new""6 9
(""9 :
)"": ;
;""; <
private## 
List## 
<## 
Rama## 
>## 
_todasLasRamas## )
=##* +
new##, /
(##/ 0
)##0 1
;##1 2
private%% 
string%% 
_rutaPDF%% 
;%%  
private&& 
string&& 
_rutaDocumento&& %
;&&% &
private'' 
bool'' 
_pdfCargado''  
=''! "
false''# (
;''( )
private(( 
Frame(( 
_frame(( 
;(( 
public)) 
SubirDocumento)) 
()) 
Frame)) #
frame))$ )
)))) *
{** 	
InitializeComponent++ 
(++  
)++  !
;++! "
_frame,, 
=,, 
frame,, 
;,, 
this-- 
.-- 
Loaded-- 
+=-- 
CargarComboBox-- )
;--) *
}.. 	
private00 
async00 
void00 
CargarComboBox00 )
(00) *
object00* 0
sender001 7
,007 8
RoutedEventArgs009 H
e00I J
)00J K
{11 	
await22 "
InicializarCombosAsync22 (
(22( )
)22) *
;22* +
}33 	
private55 
async55 
Task55 "
InicializarCombosAsync55 1
(551 2
)552 3
{66 	
var88 

categorias88 
=88 
await88 "
CatalogosServicio88# 4
.884 5"
ObtenerCategoriasAsync885 K
(88K L
)88L M
;88M N
var99 
ramas99 
=99 
await99 
CatalogosServicio99 /
.99/ 0
ObtenerRamasAsync990 A
(99A B
)99B C
;99C D
if;; 
(;; 

categorias;; 
.;; 
	Resultado;; $
!=;;% '
(;;( )
int;;) ,
);;, -
HttpStatusCode;;- ;
.;;; <
OK;;< >
||;;? A

categorias;;B L
.;;L M
Datos;;M R
==;;S U
null;;V Z
||;;[ ]
ramas;;^ c
.;;c d
Datos;;d i
==;;j l
null;;m q
);;q r
{<< '
MostrarMensajePersonalizado== +
(==+ ,
$str==, u
,==u v

DialogType	==w �
.
==� �
Error
==� �
)
==� �
;
==� �
return>> 
;>> 
}?? 
_todasLasCategoriasAA 
=AA  !

categoriasAA" ,
.AA, -
DatosAA- 2
;AA2 3
cmb_CategoriaCC 
.CC 
ItemsSourceCC %
=CC& '
_todasLasCategoriasCC( ;
;CC; <
cmb_CategoriaDD 
.DD 
DisplayMemberPathDD +
=DD, -
$strDD. ?
;DD? @
cmb_CategoriaEE 
.EE 
SelectedValuePathEE +
=EE, -
$strEE. ;
;EE; <
_todasLasRamasGG 
=GG 
ramasGG "
.GG" #
DatosGG# (
;GG( )
cmb_RamaHH 
.HH 
ItemsSourceHH  
=HH! "
_todasLasRamasHH# 1
;HH1 2
cmb_RamaII 
.II 
DisplayMemberPathII &
=II' (
$strII) 5
;II5 6
cmb_RamaJJ 
.JJ 
SelectedValuePathJJ &
=JJ' (
$strJJ) 1
;JJ1 2
cmb_RamaKK 
.KK 
ItemsKK 
.KK 
RefreshKK "
(KK" #
)KK# $
;KK$ %
}MM 	
privatePP 
asyncPP 
voidPP 
Cmb_RamaSeleccionPP ,
(PP, -
objectPP- 3
senderPP4 :
,PP: ;%
SelectionChangedEventArgsPP< U
ePPV W
)PPW X
{QQ 	
ifRR 
(RR 
cmb_RamaRR 
.RR 
SelectedValueRR &
==RR' )
nullRR* .
)RR. /
returnSS 
;SS 
intUU 
idRamaSeleccionadoUU "
=UU# $
(UU% &
intUU& )
)UU) *
cmb_RamaUU* 2
.UU2 3
SelectedValueUU3 @
;UU@ A
varWW 
	respuestaWW 
=WW 
awaitWW !
CatalogosServicioWW" 3
.WW3 4&
ObtenerMateriaPorRamaAsyncWW4 N
(WWN O
idRamaSeleccionadoWWO a
)WWa b
;WWb c
ifYY 
(YY 
	respuestaYY 
.YY 
	ResultadoYY #
==YY$ &
$numYY' *
&&YY+ -
	respuestaYY. 7
.YY7 8
DatosYY8 =
!=YY> @
nullYYA E
)YYE F
{ZZ 
grd_Materia[[ 
.[[ 

Visibility[[ &
=[[' (

Visibility[[) 3
.[[3 4
Visible[[4 ;
;[[; <
cmb_Materia\\ 
.\\ 
ItemsSource\\ '
=\\( )
	respuesta\\* 3
.\\3 4
Datos\\4 9
;\\9 :
cmb_Materia]] 
.]] 
DisplayMemberPath]] -
=]]. /
$str]]0 ?
;]]? @
cmb_Materia^^ 
.^^ 
SelectedValuePath^^ -
=^^. /
$str^^0 @
;^^@ A
}__ 
else`` 
{aa '
MostrarMensajePersonalizadobb +
(bb+ ,
$strbb, k
,bbk l

DialogTypebbm w
.bbw x
Warningbbx 
)	bb �
;
bb� �
cmb_Materiacc 
.cc 
ItemsSourcecc '
=cc( )
nullcc* .
;cc. /
}dd 
}ee 	
privategg 
voidgg '
MostrarMensajePersonalizadogg 0
(gg0 1
stringgg1 7
messagegg8 ?
,gg? @

DialogTypeggA K
typeggL P
)ggP Q
{hh 	
varii 
dialogii 
=ii 
newii )
VentanaEmergentePersonalizadaii :
(ii: ;
messageii; B
,iiB C
typeiiD H
)iiH I
{jj 
Ownerkk 
=kk 
Windowkk 
.kk 
	GetWindowkk (
(kk( )
thiskk) -
)kk- .
}ll 
;ll 
dialogmm 
.mm 

ShowDialogmm 
(mm 
)mm 
;mm  
}nn 	
privatepp 
asyncpp 
voidpp 
SubirPublicacionpp +
(pp+ ,
objectpp, 2
senderpp3 9
,pp9 :
RoutedEventArgspp; J
eppK L
)ppL M
{qq 	!
RegresarBordeOriginalrr !
(rr! "
)rr" #
;rr# $
iftt 
(tt 
!tt 
ValidarCamposVaciostt $
(tt$ %
)tt% &
)tt& '
{uu '
MostrarMensajePersonalizadovv +
(vv+ ,
$strvv, `
,vv` a

DialogTypevvb l
.vvl m
Warningvvm t
)vvt u
;vvu v
returnww 
;ww 
}xx 
varzz 
rutaArchivozz 
=zz 
_rutaDocumentozz ,
;zz, -
if{{ 
({{ 
string{{ 
.{{ 
IsNullOrEmpty{{ $
({{$ %
rutaArchivo{{% 0
){{0 1
){{1 2
return{{3 9
;{{9 :
var}} 
idDocumento}} 
=}} 
await}} #
CrearDocumentoAsync}}$ 7
(}}7 8
rutaArchivo}}8 C
)}}C D
;}}D E
if~~ 
(~~ 
idDocumento~~ 
==~~ 
null~~ #
)~~# $
return~~% +
;~~+ ,
await
�� #
CrearPublicacionAsync
�� '
(
��' (
idDocumento
��( 3
.
��3 4
Value
��4 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
int
�� 
?
�� 
>
��  !
CrearDocumentoAsync
��! 4
(
��4 5
string
��5 ;
filePath
��< D
)
��D E
{
�� 	
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
var
�� 
	respuesta
�� 
=
�� 
await
�� !!
PublicacionServicio
��" 5
.
��5 6!
CrearDocumentoAsync
��6 I
(
��I J
token
��J O
,
��O P
txtb_Titulo
��Q \
.
��\ ]
Text
��] a
.
��a b
Trim
��b f
(
��f g
)
��g h
,
��h i
_rutaDocumento
��j x
)
��x y
;
��y z
if
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
==
��$ &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;
Unauthorized
��; G
)
��G H
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 m
,
��m n

DialogType
��o y
.
��y z
Error
��z 
)�� �
;��� �
NavigationService
�� %
.
��% &
Navigate
��& .
(
��. /
new
��/ 2
Login
��3 8
(
��8 9
)
��9 :
)
��: ;
;
��; <
PerfilSingleton
�� #
.
��# $
Instance
��$ ,
.
��, -
Reset
��- 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
null
�� 
;
��  
}
�� 
if
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
!=
��$ &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;
Created
��; B
)
��B C
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, [
,
��[ \

DialogType
��] g
.
��g h
Error
��h m
)
��m n
;
��n o
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
	respuesta
�� 
.
�� 
IdDocumento
�� (
;
��( )
}
�� 	
private
�� 
async
�� 
Task
�� #
CrearPublicacionAsync
�� 0
(
��0 1
int
��1 4
idDocumento
��5 @
)
��@ A
{
�� 	
var
�� 
publicacion
�� 
=
�� 
new
�� !
Publicacion
��" -
{
�� 
ResuContenido
�� 
=
�� 
txtb_Contenido
��  .
.
��. /
Text
��/ 3
.
��3 4
Trim
��4 8
(
��8 9
)
��9 :
,
��: ;
IdDocumento
�� 
=
�� 
idDocumento
�� )
,
��) *
IdMateriaYRama
�� 
=
��  
(
��! "
int
��" %
)
��% &
cmb_Materia
��& 1
.
��1 2
SelectedValue
��2 ?
,
��? @
IdCategoria
�� 
=
�� 
(
�� 
int
�� "
)
��" #
cmb_Categoria
��# 0
.
��0 1
SelectedValue
��1 >
,
��> ?
NivelEducativo
�� 
=
��   
cmb_NivelEducativo
��! 3
.
��3 4
Text
��4 8
}
�� 
;
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� *
.
��* +
Instance
��+ 3
.
��3 4
TokenJwt
��4 <
;
��< =
var
�� 
	respuesta
�� 
=
�� 
await
�� !!
PublicacionServicio
��" 5
.
��5 6#
CrearPublicacionAsync
��6 K
(
��K L
token
��L Q
,
��Q R
publicacion
��S ^
)
��^ _
;
��_ `
switch
�� 
(
�� 
	respuesta
�� 
.
�� 
	Resultado
�� '
)
��' (
{
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
Created
��) 0
:
��0 1)
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 L
,
��L M

DialogType
��N X
.
��X Y
Success
��Y `
)
��` a
;
��a b
_frame
�� 
.
�� 
Navigate
�� #
(
��# $
new
��$ '
MisDocumentos
��( 5
(
��5 6
_frame
��6 <
)
��< =
)
��= >
;
��> ?
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� (
.
��( )
Unauthorized
��) 5
:
��5 6)
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 m
,
��m n

DialogType
��o y
.
��y z
Error
��z 
)�� �
;��� �
NavigationService
�� %
.
��% &
Navigate
��& .
(
��. /
new
��/ 2
Login
��3 8
(
��8 9
)
��9 :
)
��: ;
;
��; <
PerfilSingleton
�� #
.
��# $
Instance
��$ ,
.
��, -
Reset
��- 2
(
��2 3
)
��3 4
;
��4 5
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 Z
,
��Z [

DialogType
��\ f
.
��f g
Error
��g l
)
��l m
;
��m n
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 Q
,
��Q R

DialogType
��S ]
.
��] ^
Error
��^ c
)
��c d
;
��d e
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� "
SubirArchivoPDFAsync
�� /
(
��/ 0
string
��0 6
rutaPDF
��7 >
)
��> ?
{
�� 	
try
�� 
{
�� 
byte
�� 
[
�� 
]
�� 
pdfBytes
�� 
=
��  !
File
��" &
.
��& '
ReadAllBytes
��' 3
(
��3 4
rutaPDF
��4 ;
)
��; <
;
��< =
if
�� 
(
�� 
!
�� 
EsPDFValido
��  
(
��  !
pdfBytes
��! )
)
��) *
)
��* +
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 W
,
��W X

DialogType
��Y c
.
��c d
Error
��d i
)
��i j
;
��j k
return
�� 
;
�� 
}
�� 
string
�� 
usuario
�� 
=
��  
PerfilSingleton
��! 0
.
��0 1
Instance
��1 9
.
��9 :
NombreUsuario
��: G
;
��G H
string
�� 
nombreArchivo
�� $
=
��% &
System
��' -
.
��- .
IO
��. 0
.
��0 1
Path
��1 5
.
��5 6
GetFileName
��6 A
(
��A B
rutaPDF
��B I
)
��I J
;
��J K
var
�� 
grpc
�� 
=
�� 
new
�� &
FileServiceClientHandler
�� 7
(
��7 8
)
��8 9
;
��9 :
var
�� 
	resultado
�� 
=
�� 
await
��  %
grpc
��& *
.
��* +
UploadPdfAsync
��+ 9
(
��9 :
usuario
��: A
,
��A B
nombreArchivo
��C P
,
��P Q
pdfBytes
��R Z
)
��Z [
;
��[ \
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� -
(
��- .
	resultado
��. 7
.
��7 8
filePath
��8 @
)
��@ A
||
��B D
string
��E K
.
��K L 
IsNullOrWhiteSpace
��L ^
(
��^ _
	resultado
��_ h
.
��h i
	coverPath
��i r
)
��r s
)
��s t
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 L
,
��L M

DialogType
��N X
.
��X Y
Error
��Y ^
)
��^ _
;
��_ `
return
�� 
;
�� 
}
�� 
_rutaDocumento
�� 
=
��  
	resultado
��! *
.
��* +
filePath
��+ 3
;
��3 4%
MostrarPreviewDesdeRuta
�� '
(
��' (
	resultado
��( 1
.
��1 2
	coverPath
��2 ;
)
��; <
;
��< =
}
�� 
catch
�� 
(
�� 
Grpc
�� 
.
�� 
Core
�� 
.
�� 
RpcException
�� )
ex
��* ,
)
��, -
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, l
,
��l m

DialogType
��n x
.
��x y
Error
��y ~
)
��~ 
;�� �
LimpiarPreview
�� 
(
�� 
)
��  
;
��  !
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, S
,
��S T

DialogType
��U _
.
��_ `
Error
��` e
)
��e f
;
��f g
LimpiarPreview
�� 
(
�� 
)
��  
;
��  !
}
�� 
}
�� 	
private
�� 
bool
�� 
EsPDFValido
��  
(
��  !
byte
��! %
[
��% &
]
��& '
bytes
��( -
)
��- .
{
�� 	
if
�� 
(
�� 
bytes
�� 
==
�� 
null
�� 
||
��  
bytes
��! &
.
��& '
Length
��' -
<
��. /
$num
��0 1
)
��1 2
return
�� 
false
�� 
;
�� 
return
�� 
bytes
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
$num
�� #
&&
��$ &
bytes
��' ,
[
��, -
$num
��- .
]
��. /
==
��0 2
$num
��3 7
&&
��8 :
bytes
��; @
[
��@ A
$num
��A B
]
��B C
==
��D F
$num
��G K
&&
��L N
bytes
��O T
[
��T U
$num
��U V
]
��V W
==
��X Z
$num
��[ _
;
��_ `
}
�� 	
public
�� 
void
�� #
RegresarBordeOriginal
�� )
(
��) *
)
��* +
{
�� 	
SolidColorBrush
�� 
verde
�� !
=
��" #
new
��$ '
(
��' (
(
��( )
Color
��) .
)
��. /
ColorConverter
��/ =
.
��= >
ConvertFromString
��> O
(
��O P
$str
��P Y
)
��Y Z
)
��Z [
;
��[ \

brd_Titulo
�� 
.
�� 
BorderBrush
�� "
=
��# $
verde
��% *
;
��* +
brd_Contenido
�� 
.
�� 
BorderBrush
�� %
=
��& '
verde
��( -
;
��- .
brd_Categoria
�� 
.
�� 
BorderBrush
�� %
=
��& '
verde
��( -
;
��- . 
brd_NivelEducativo
�� 
.
�� 
BorderBrush
�� *
=
��+ ,
verde
��- 2
;
��2 3
brd_Rama
�� 
.
�� 
BorderBrush
��  
=
��! "
verde
��# (
;
��( )
brd_Materia
�� 
.
�� 
BorderBrush
�� #
=
��$ %
verde
��& +
;
��+ ,
brd_DropArea
�� 
.
�� 
BorderBrush
�� $
=
��% &
verde
��' ,
;
��, -
}
�� 	
public
�� 
bool
�� !
ValidarCamposVacios
�� '
(
��' (
)
��( )
{
�� 	
bool
�� 
titulo
�� 
=
�� 
!
�� 
string
�� !
.
��! " 
IsNullOrWhiteSpace
��" 4
(
��4 5
txtb_Titulo
��5 @
.
��@ A
Text
��A E
)
��E F
&&
��G I
txtb_Titulo
��J U
.
��U V
Text
��V Z
!=
��[ ]
$str
��^ q
;
��q r
bool
�� 
	contenido
�� 
=
�� 
!
�� 
string
�� $
.
��$ % 
IsNullOrWhiteSpace
��% 7
(
��7 8
txtb_Contenido
��8 F
.
��F G
Text
��G K
)
��K L
&&
��M O
txtb_Contenido
��P ^
.
��^ _
Text
��_ c
!=
��d f
$str��g �
;��� �
bool
�� 
cmbNivelEducativo
�� "
=
��# $ 
cmb_NivelEducativo
��% 7
.
��7 8
SelectedItem
��8 D
!=
��E G
null
��H L
;
��L M
bool
�� 
cmbCategoria
�� 
=
�� 
cmb_Categoria
��  -
.
��- .
SelectedItem
��. :
!=
��; =
null
��> B
;
��B C
bool
�� 

cmbMateria
�� 
=
�� 
cmb_Materia
�� )
.
��) *
SelectedItem
��* 6
!=
��7 9
null
��: >
;
��> ?
bool
�� 
cmbRama
�� 
=
�� 
cmb_Rama
�� #
.
��# $
SelectedItem
��$ 0
!=
��1 3
null
��4 8
;
��8 9
if
�� 
(
�� 
!
�� 
titulo
�� 
)
�� 

brd_Titulo
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
if
�� 
(
�� 
!
�� 
	contenido
�� 
)
�� 
brd_Contenido
�� )
.
��) *
BorderBrush
��* 5
=
��6 7
Brushes
��8 ?
.
��? @
Red
��@ C
;
��C D
if
�� 
(
�� 
!
�� 
cmbNivelEducativo
�� "
)
��" # 
brd_NivelEducativo
��$ 6
.
��6 7
BorderBrush
��7 B
=
��C D
Brushes
��E L
.
��L M
Red
��M P
;
��P Q
if
�� 
(
�� 
!
�� 
cmbCategoria
�� 
)
�� 
brd_Categoria
�� ,
.
��, -
BorderBrush
��- 8
=
��9 :
Brushes
��; B
.
��B C
Red
��C F
;
��F G
if
�� 
(
�� 
!
�� 

cmbMateria
�� 
)
�� 
brd_Materia
�� (
.
��( )
BorderBrush
��) 4
=
��5 6
Brushes
��7 >
.
��> ?
Red
��? B
;
��B C
if
�� 
(
�� 
!
�� 
cmbRama
�� 
)
�� 
brd_Rama
�� "
.
��" #
BorderBrush
��# .
=
��/ 0
Brushes
��1 8
.
��8 9
Red
��9 <
;
��< =
if
�� 
(
�� 
!
�� 
_pdfCargado
�� 
)
�� 
brd_DropArea
�� *
.
��* +
BorderBrush
��+ 6
=
��7 8
Brushes
��9 @
.
��@ A
Red
��A D
;
��D E
return
�� 
titulo
�� 
&&
�� 
	contenido
�� &
&&
��' )
cmbNivelEducativo
��* ;
&&
��< >
cmbCategoria
��? K
&&
�� 

cmbMateria
�� 
&&
�� 
cmbRama
�� $
&&
��% '
_pdfCargado
��( 3
;
��3 4
}
�� 	
private
�� 
void
�� 
ResumenGotFocus
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
RoutedEventArgs
��4 C
e
��D E
)
��E F
{
�� 	
if
�� 
(
�� 
txtb_Contenido
�� 
.
�� 
Text
�� #
==
��$ &
$str��' �
)��� �
{
�� 
txtb_Contenido
�� 
.
�� 
Text
�� #
=
��$ %
$str
��& (
;
��( )
txtb_Contenido
�� 
.
�� 

Foreground
�� )
=
��* +
Brushes
��, 3
.
��3 4
Black
��4 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
�� 
ResumenLostFocus
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
txtb_Contenido
��* 8
.
��8 9
Text
��9 =
)
��= >
)
��> ?
{
�� 
txtb_Contenido
�� 
.
�� 
Text
�� #
=
��$ %
$str��& �
;��� �
txtb_Contenido
�� 
.
�� 

Foreground
�� )
=
��* +
Brushes
��, 3
.
��3 4
Gray
��4 8
;
��8 9
}
�� 
}
�� 	
private
�� 
void
�� 
TituloGotFocus
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
�� 	
if
�� 
(
�� 
txtb_Titulo
�� 
.
�� 
Text
��  
==
��! #
$str
��$ 7
)
��7 8
{
�� 
txtb_Titulo
�� 
.
�� 
Text
��  
=
��! "
$str
��# %
;
��% &
txtb_Titulo
�� 
.
�� 

Foreground
�� &
=
��' (
Brushes
��) 0
.
��0 1
Black
��1 6
;
��6 7
}
�� 
}
�� 	
private
�� 
void
�� 
TituloLostFocus
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
RoutedEventArgs
��4 C
e
��D E
)
��E F
{
�� 	
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
txtb_Contenido
��* 8
.
��8 9
Text
��9 =
)
��= >
)
��> ?
{
�� 
txtb_Titulo
�� 
.
�� 
Text
��  
=
��! "
$str
��# 6
;
��6 7
txtb_Titulo
�� 
.
�� 

Foreground
�� &
=
��' (
Brushes
��) 0
.
��0 1
Gray
��1 5
;
��5 6
}
�� 
}
�� 	
private
�� 
void
�� 
AbrirExplorador
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
if
�� 
(
�� 
!
�� 
_pdfCargado
�� 
)
�� 
{
�� 
AbrirExplorador
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 	
private
�� 
void
�� 
DropAreaDragEnter
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
DragEventArgs
��6 C
e
��D E
)
��E F
{
�� 	
if
�� 
(
�� 
_pdfCargado
�� 
)
�� 
{
�� 
e
�� 
.
�� 
Effects
�� 
=
�� 
DragDropEffects
�� +
.
��+ ,
None
��, 0
;
��0 1
e
�� 
.
�� 
Handled
�� 
=
�� 
true
��  
;
��  !
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
e
�� 
.
�� 
Data
�� 
.
�� 
GetDataPresent
�� %
(
��% &
DataFormats
��& 1
.
��1 2
FileDrop
��2 :
)
��: ;
)
��; <
brd_DropArea
�� 
.
�� 

Background
�� '
=
��( )
new
��* -
SolidColorBrush
��. =
(
��= >
Color
��> C
.
��C D
FromRgb
��D K
(
��K L
$num
��L O
,
��O P
$num
��Q T
,
��T U
$num
��V Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 	
private
�� 
void
�� 
DropAreaDragLeave
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
DragEventArgs
��6 C
e
��D E
)
��E F
{
�� 	
brd_DropArea
�� 
.
�� 

Background
�� #
=
��$ %
new
��& )
SolidColorBrush
��* 9
(
��9 :
Color
��: ?
.
��? @
FromRgb
��@ G
(
��G H
$num
��H K
,
��K L
$num
��M P
,
��P Q
$num
��R U
)
��U V
)
��V W
;
��W X
}
�� 	
private
�� 
void
�� 
DropAreaDrop
�� !
(
��! "
object
��" (
sender
��) /
,
��/ 0
DragEventArgs
��1 >
e
��? @
)
��@ A
{
�� 	
if
�� 
(
�� 
_pdfCargado
�� 
)
�� 
return
�� 
;
�� 
brd_DropArea
�� 
.
�� 

Background
�� #
=
��$ %
new
��& )
SolidColorBrush
��* 9
(
��9 :
Color
��: ?
.
��? @
FromRgb
��@ G
(
��G H
$num
��H K
,
��K L
$num
��M P
,
��P Q
$num
��R U
)
��U V
)
��V W
;
��W X
if
�� 
(
�� 
e
�� 
.
�� 
Data
�� 
.
�� 
GetDataPresent
�� %
(
��% &
DataFormats
��& 1
.
��1 2
FileDrop
��2 :
)
��: ;
)
��; <
{
�� 
string
�� 
[
�� 
]
�� 
files
�� 
=
��  
(
��! "
string
��" (
[
��( )
]
��) *
)
��* +
e
��+ ,
.
��, -
Data
��- 1
.
��1 2
GetData
��2 9
(
��9 :
DataFormats
��: E
.
��E F
FileDrop
��F N
)
��N O
;
��O P
if
�� 
(
�� 
files
�� 
.
�� 
Length
��  
>
��! "
$num
��# $
&&
��% '
System
��( .
.
��. /
IO
��/ 1
.
��1 2
Path
��2 6
.
��6 7
GetExtension
��7 C
(
��C D
files
��D I
[
��I J
$num
��J K
]
��K L
)
��L M
.
��M N
ToLower
��N U
(
��U V
)
��V W
==
��X Z
$str
��[ a
)
��a b
{
�� 
ProcesarPDF
�� 
(
��  
files
��  %
[
��% &
$num
��& '
]
��' (
)
��( )
;
��) *
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
AbrirExplorador
�� $
(
��$ %
)
��% &
{
�� 	
OpenFileDialog
�� 
dlg
�� 
=
��  
new
��! $
OpenFileDialog
��% 3
{
�� 
Filter
�� 
=
�� 
$str
�� 5
}
�� 
;
�� 
if
�� 
(
�� 
dlg
�� 
.
�� 

ShowDialog
�� 
(
�� 
)
��  
==
��! #
true
��$ (
)
��( )
{
�� 
ProcesarPDF
�� 
(
�� 
dlg
�� 
.
��  
FileName
��  (
)
��( )
;
��) *
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
ProcesarPDF
�� &
(
��& '
string
��' -
ruta
��. 2
)
��2 3
{
�� 	
FileInfo
�� 
fileInfo
�� 
=
�� 
new
��  #
FileInfo
��$ ,
(
��, -
ruta
��- 1
)
��1 2
;
��2 3
long
�� 
sizeInBytes
�� 
=
�� 
fileInfo
�� '
.
��' (
Length
��( .
;
��. /
long
�� 
maxSizeInBytes
�� 
=
��  !
$num
��" $
*
��% &
$num
��' +
*
��, -
$num
��. 2
;
��2 3
if
�� 
(
�� 
sizeInBytes
�� 
>
�� 
maxSizeInBytes
�� ,
)
��, -
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, h
,
��h i

DialogType
��j t
.
��t u
Warning
��u |
)
��| }
;
��} ~
return
�� 
;
�� 
}
�� 
_rutaPDF
�� 
=
�� 
ruta
�� 
;
�� 
string
�� 
nombreArchivo
��  
=
��! "
System
��# )
.
��) *
IO
��* ,
.
��, -
Path
��- 1
.
��1 2)
GetFileNameWithoutExtension
��2 M
(
��M N
ruta
��N R
)
��R S
;
��S T
nombreArchivo
�� 
=
�� $
SanitizarNombreArchivo
�� 2
(
��2 3
nombreArchivo
��3 @
)
��@ A
;
��A B
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
txtb_Titulo
��* 5
.
��5 6
Text
��6 :
)
��: ;
||
��< >
txtb_Titulo
��? J
.
��J K
Text
��K O
==
��P R
$str
��S f
)
��f g
{
�� 
txtb_Titulo
�� 
.
�� 
Text
��  
=
��! "
nombreArchivo
��# 0
;
��0 1
txtb_Titulo
�� 
.
�� 

Foreground
�� &
=
��' (
Brushes
��) 0
.
��0 1
Black
��1 6
;
��6 7
}
�� 
await
�� "
SubirArchivoPDFAsync
�� &
(
��& '
ruta
��' +
)
��+ ,
;
��, -
}
�� 	
private
�� 
string
�� $
SanitizarNombreArchivo
�� -
(
��- .
string
��. 4
nombre
��5 ;
)
��; <
{
�� 	
string
�� 
limpio
�� 
=
�� 
nombre
�� "
.
��" #
Replace
��# *
(
��* +
$char
��+ .
,
��. /
$char
��0 3
)
��3 4
;
��4 5
limpio
�� 
=
�� 
new
�� 
string
�� 
(
��  
limpio
��  &
.
�� 
Where
�� 
(
�� 
c
�� 
=>
�� 
char
��  
.
��  !
IsLetterOrDigit
��! 0
(
��0 1
c
��1 2
)
��2 3
||
��4 6
c
��7 8
==
��9 ;
$char
��< ?
)
��? @
.
�� 
ToArray
�� 
(
�� 
)
�� 
)
�� 
;
�� 
if
�� 
(
�� 
limpio
�� 
.
�� 
Length
�� 
>
�� 
$num
��  #
)
��# $
limpio
�� 
=
�� 
limpio
�� 
.
��  
	Substring
��  )
(
��) *
$num
��* +
,
��+ ,
$num
��- 0
)
��0 1
;
��1 2
return
�� 
limpio
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
void
�� %
MostrarPreviewDesdeRuta
�� 2
(
��2 3
string
��3 9!
portadaRelativePath
��: M
)
��M N
{
�� 	
try
�� 
{
�� 
_pdfCargado
�� 
=
�� 
true
�� "
;
��" #
brd_DropArea
�� 
.
�� 
Cursor
�� #
=
��$ %
Cursors
��& -
.
��- .
Arrow
��. 3
;
��3 4
brd_DropArea
�� 
.
�� 

Background
�� '
=
��( )
Brushes
��* 1
.
��1 2
White
��2 7
;
��7 8
grd_DropContent
�� 
.
��  
Children
��  (
.
��( )
Clear
��) .
(
��. /
)
��/ 0
;
��0 1&
FileServiceClientHandler
�� (
grpcHandler
��) 4
=
��5 6
new
��7 :
(
��: ;
)
��; <
;
��< =
var
�� 
(
�� 
bytes
�� 
,
�� 
_
�� 
)
�� 
=
��  
await
��! &
grpcHandler
��' 2
.
��2 3 
DownloadCoverAsync
��3 E
(
��E F!
portadaRelativePath
��F Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
bytes
�� 
==
�� 
null
�� !
)
��! "
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 ]
,
��] ^

DialogType
��_ i
.
��i j
Warning
��j q
)
��q r
;
��r s
return
�� 
;
�� 
}
�� 
var
�� 
portadaImage
��  
=
��! "
new
��# &
BitmapImage
��' 2
(
��2 3
)
��3 4
;
��4 5
using
�� 
(
�� 
var
�� 
stream
�� !
=
��" #
new
��$ '
MemoryStream
��( 4
(
��4 5
bytes
��5 :
)
��: ;
)
��; <
{
�� 
portadaImage
��  
.
��  !
	BeginInit
��! *
(
��* +
)
��+ ,
;
��, -
portadaImage
��  
.
��  !
CacheOption
��! ,
=
��- .
BitmapCacheOption
��/ @
.
��@ A
OnLoad
��A G
;
��G H
portadaImage
��  
.
��  !
StreamSource
��! -
=
��. /
stream
��0 6
;
��6 7
portadaImage
��  
.
��  !
EndInit
��! (
(
��( )
)
��) *
;
��* +
}
�� 
var
�� 
preview
�� 
=
�� 
new
�� !
Image
��" '
{
�� 
Source
�� 
=
�� 
portadaImage
�� )
,
��) *
Width
�� 
=
�� 
$num
�� 
,
��  
Height
�� 
=
�� 
$num
��  
,
��  !
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ ,
)
��, -
,
��- .
Stretch
�� 
=
�� 
Stretch
�� %
.
��% &
Uniform
��& -
,
��- .!
HorizontalAlignment
�� '
=
��( )!
HorizontalAlignment
��* =
.
��= >
Center
��> D
,
��D E
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A
}
�� 
;
�� 
var
�� 

deleteIcon
�� 
=
��  
new
��! $
Button
��% +
{
�� 
Content
�� 
=
�� 
$str
�� "
,
��" #
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  

Background
�� 
=
��  
Brushes
��! (
.
��( )
Transparent
��) 4
,
��4 5

Foreground
�� 
=
��  
Brushes
��! (
.
��( )
Red
��) ,
,
��, -
BorderThickness
�� #
=
��$ %
new
��& )
	Thickness
��* 3
(
��3 4
$num
��4 5
)
��5 6
,
��6 7
FontSize
�� 
=
�� 
$num
�� !
,
��! "!
HorizontalAlignment
�� '
=
��( )!
HorizontalAlignment
��* =
.
��= >
Right
��> C
,
��C D
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Top
��: =
,
��= >
Cursor
�� 
=
�� 
Cursors
�� $
.
��$ %
Hand
��% )
,
��) *
ToolTip
�� 
=
�� 
$str
�� 0
}
�� 
;
�� 

deleteIcon
�� 
.
�� 
Click
��  
+=
��! #
(
��$ %
s
��% &
,
��& '
e
��( )
)
��) *
=>
��+ -
LimpiarPreview
��. <
(
��< =
)
��= >
;
��> ?
var
�� 
panel
�� 
=
�� 
new
�� 
Grid
��  $
(
��$ %
)
��% &
;
��& '
panel
�� 
.
�� 
Children
�� 
.
�� 
Add
�� "
(
��" #
preview
��# *
)
��* +
;
��+ ,
panel
�� 
.
�� 
Children
�� 
.
�� 
Add
�� "
(
��" #

deleteIcon
��# -
)
��- .
;
��. /
grd_DropContent
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -
panel
��- 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
{
�� )
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, R
,
��R S

DialogType
��T ^
.
��^ _
Error
��_ d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
LimpiarPreview
�� #
(
��# $
)
��$ %
{
�� 	
_rutaPDF
�� 
=
�� 
null
�� 
;
�� 
_pdfCargado
�� 
=
�� 
false
�� 
;
��  
_rutaDocumento
�� 
=
�� 
null
�� !
;
��! "
txtb_Titulo
�� 
.
�� 
Text
�� 
=
�� 
$str
�� 2
;
��2 3
txtb_Titulo
�� 
.
�� 

Foreground
�� "
=
��# $
Brushes
��% ,
.
��, -
Gray
��- 1
;
��1 2
SolidColorBrush
�� 
gris
��  
=
��! "
new
��# &
(
��& '
(
��' (
Color
��( -
)
��- .
ColorConverter
��. <
.
��< =
ConvertFromString
��= N
(
��N O
$str
��O X
)
��X Y
)
��Y Z
;
��Z [
brd_DropArea
�� 
.
�� 

Background
�� #
=
��$ %
gris
��& *
;
��* +
brd_DropArea
�� 
.
�� 
Cursor
�� 
=
��  !
Cursors
��" )
.
��) *
Hand
��* .
;
��. /
grd_DropContent
�� 
.
�� 
Children
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
var
�� 
sp
�� 
=
�� 
new
�� 

StackPanel
�� #
{
��$ %!
HorizontalAlignment
��& 9
=
��: ;!
HorizontalAlignment
��< O
.
��O P
Center
��P V
,
��V W
VerticalAlignment
��X i
=
��j k
VerticalAlignment
��l }
.
��} ~
Center��~ �
}��� �
;��� �
sp
�� 
.
�� 
Children
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
Image
��  %
{
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� (
(
��( )
new
��) ,
Uri
��- 0
(
��0 1
$str
��1 W
,
��W X
UriKind
��Y `
.
��` a
Relative
��a i
)
��i j
)
��j k
,
��k l
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
�� 
Opacity
�� 
=
�� 
$num
�� 
}
�� 
)
�� 
;
�� 
sp
�� 
.
�� 
Children
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
	TextBlock
��  )
{
�� 
Text
�� 
=
�� 
$str
�� C
,
��C D

FontFamily
�� 
=
�� 
new
��  

FontFamily
��! +
(
��+ ,
$str
��, 5
)
��5 6
,
��6 7
FontSize
�� 
=
�� 
$num
�� 
,
�� 

Foreground
�� 
=
�� 
Brushes
�� $
.
��$ %
Gray
��% )
,
��) *
TextAlignment
�� 
=
�� 
TextAlignment
��  -
.
��- .
Center
��. 4
,
��4 5
Margin
�� 
=
�� 
new
�� 
	Thickness
�� &
(
��& '
$num
��' )
)
��) *
,
��* +
TextWrapping
�� 
=
�� 
TextWrapping
�� +
.
��+ ,
Wrap
��, 0
}
�� 
)
�� 
;
�� 
grd_DropContent
�� 
.
�� 
Children
�� $
.
��$ %
Add
��% (
(
��( )
sp
��) +
)
��+ ,
;
��, -
}
�� 	
}
�� 
}�� �s
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\MisDocumentos.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloDocumentos% 5
{ 
public 

partial 
class 
MisDocumentos &
:' (
Page) -
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
LoginQ V
)V W
)W X
;X Y
private 
Frame 
_frame 
; 
public 
MisDocumentos 
( 
Frame "
frame# (
)( )
{ 	
InitializeComponent   
(    
)    !
;  ! "
_frame!! 
=!! 
frame!! 
;!! 
CargarDocumentos"" 
("" 
)"" 
;"" 
}## 	
private%% 
void%% '
MostrarMensajePersonalizado%% 0
(%%0 1
string%%1 7
message%%8 ?
,%%? @

DialogType%%A K
type%%L P
)%%P Q
{&& 	
var'' 
dialog'' 
='' 
new'' )
VentanaEmergentePersonalizada'' :
('': ;
message''; B
,''B C
type''D H
)''H I
{(( 
Owner)) 
=)) 
Window)) 
.)) 
	GetWindow)) (
())( )
this))) -
)))- .
}** 
;** 
dialog++ 
.++ 

ShowDialog++ 
(++ 
)++ 
;++  
},, 	
private.. 
async.. 
void.. 
CargarDocumentos.. +
(..+ ,
).., -
{// 	"
itmc_DocumentosControl00 "
.00" #
ItemsSource00# .
=00/ 0
null001 5
;005 6
try22 
{33 
string44 
token44 
=44 
PerfilSingleton44 .
.44. /
Instance44/ 7
.447 8
TokenJwt448 @
;44@ A
var55 
	respuesta55 
=55 
await55  %
PublicacionServicio55& 9
.559 :'
ObtenerPublicacionesPropias55: U
(55U V
token55V [
)55[ \
;55\ ]
switch77 
(77 
	respuesta77 !
.77! "
	Resultado77" +
)77+ ,
{88 
case99 
$num99 
:99 
var:: #
listaPublicacionesVista:: 3
=::4 5
new::6 9
List::: >
<::> ?
PublicacionVista::? O
>::O P
(::P Q
)::Q R
;::R S
foreach<< 
(<<  !
var<<! $
publicacion<<% 0
in<<1 3
	respuesta<<4 =
.<<= >
Datos<<> C
)<<C D
{== 
byte>>  
[>>  !
]>>! "
imagenBinaria>># 0
=>>1 2
Array>>3 8
.>>8 9
Empty>>9 >
<>>> ?
byte>>? C
>>>C D
(>>D E
)>>E F
;>>F G
try@@ 
{AA 
varBB  #
grpcBB$ (
=BB) *
newBB+ .$
FileServiceClientHandlerBB/ G
(BBG H
)BBH I
;BBI J
varCC  #
(CC$ %
imagenCC% +
,CC+ ,
_CC- .
)CC. /
=CC0 1
awaitCC2 7
grpcCC8 <
.CC< =
DownloadCoverAsyncCC= O
(CCO P
publicacionCCP [
.CC[ \
RutaCC\ `
)CC` a
;CCa b
imagenBinariaDD  -
=DD. /
imagenDD0 6
??DD7 9
ArrayDD: ?
.DD? @
EmptyDD@ E
<DDE F
byteDDF J
>DDJ K
(DDK L
)DDL M
;DDM N
}EE 
catchFF !
(FF" #
	ExceptionFF# ,
exFF- /
)FF/ 0
{GG 
_loggerHH  '
.HH' (
LogErrorHH( 0
(HH0 1
exHH1 3
)HH3 4
;HH4 5'
MostrarMensajePersonalizadoII  ;
(II; <
$str	II< �
,
II� �

DialogType
II� �
.
II� �
Error
II� �
)
II� �
;
II� �
}JJ #
listaPublicacionesVistaLL 3
.LL3 4
AddLL4 7
(LL7 8
newLL8 ;
PublicacionVistaLL< L
{MM 
TituloNN  &
=NN' (
publicacionNN) 4
.NN4 5
TituloNN5 ;
,NN; <
IdPublicacionOO  -
=OO. /
publicacionOO0 ;
.OO; <
IdPublicacionOO< I
,OOI J
DescripcionPP  +
=PP, -
publicacionPP. 9
.PP9 :
ResuContenidoPP: G
,PPG H
EstadoQQ  &
=QQ' (
publicacionQQ) 4
.QQ4 5
EstadoQQ5 ;
,QQ; <
AutorRR  %
=RR& '
publicacionRR( 3
.RR3 4
NombreCompletoRR4 B
,RRB C
FechaSS  %
=SS& '
publicacionSS( 3
.SS3 4
FechaSS4 9
.SS9 :
ToStringSS: B
(SSB C
$strSSC U
)SSU V
,SSV W
LikesTT  %
=TT& '
publicacionTT( 3
.TT3 4
NumeroLikerTT4 ?
,TT? @
	DescargasUU  )
=UU* +
publicacionUU, 7
.UU7 8
NumeroDescargasUU8 G
,UUG H
VistasVV  &
=VV' (
publicacionVV) 4
.VV4 5!
NumeroVisualizacionesVV5 J
,VVJ K
ImagenWW  &
=WW' (
ConvertirABitmapWW) 9
(WW9 :
imagenBinariaWW: G
)WWG H
}XX 
)XX 
;XX 
}YY 
if[[ 
([[ #
listaPublicacionesVista[[ 3
.[[3 4
Count[[4 9
==[[: <
$num[[= >
)[[> ?
{\\  
grd_SinPublicaciones]] 0
.]]0 1

Visibility]]1 ;
=]]< =

Visibility]]> H
.]]H I
Visible]]I P
;]]P Q
}^^ "
itmc_DocumentosControl`` .
.``. /
ItemsSource``/ :
=``; <#
listaPublicacionesVista``= T
;``T U
breakaa 
;aa 
casecc 
$numcc 
:cc  
grd_SinPublicacionesdd ,
.dd, -

Visibilitydd- 7
=dd8 9

Visibilitydd: D
.ddD E
VisibleddE L
;ddL M
breakee 
;ee 
casegg 
(gg 
intgg 
)gg 
HttpStatusCodegg ,
.gg, -
Unauthorizedgg- 9
:gg9 :'
MostrarMensajePersonalizadohh 3
(hh3 4
$strhh4 q
,hhq r

DialogTypehhs }
.hh} ~
Error	hh~ �
)
hh� �
;
hh� �
NavigationServiceii )
.ii) *
Navigateii* 2
(ii2 3
newii3 6
Loginii7 <
(ii< =
)ii= >
)ii> ?
;ii? @
PerfilSingletonjj '
.jj' (
Instancejj( 0
.jj0 1
Resetjj1 6
(jj6 7
)jj7 8
;jj8 9
breakkk 
;kk 
casemm 
$nummm 
:mm '
MostrarMensajePersonalizadonn 3
(nn3 4
$strnn4 f
,nnf g

DialogTypennh r
.nnr s
Errornns x
)nnx y
;nny z
breakoo 
;oo 
defaultqq 
:qq '
MostrarMensajePersonalizadorr 3
(rr3 4
$"rr4 6
$strrr6 =
{rr= >
	respuestarr> G
.rrG H
MensajerrH O
}rrO P
"rrP Q
,rrQ R

DialogTyperrS ]
.rr] ^
Warningrr^ e
)rre f
;rrf g
breakss 
;ss 
}tt 
}uu 
catchvv 
(vv 
	Exceptionvv 
exvv 
)vv  
{ww 
_loggerxx 
.xx 
LogFatalxx  
(xx  !
exxx! #
)xx# $
;xx$ %'
MostrarMensajePersonalizadoyy +
(yy+ ,
$stryy, b
,yyb c

DialogTypeyyd n
.yyn o
Erroryyo t
)yyt u
;yyu v
}zz 
}{{ 	
private}} 
async}} 
void}} #
EliminarDocumento_Click}} 2
(}}2 3
object}}3 9
sender}}: @
,}}@ A
RoutedEventArgs}}B Q
e}}R S
)}}S T
{~~ 	
if 
( 
sender 
is 
Button  
boton! &
&&' )
boton* /
./ 0
Tag0 3
is4 6
int7 :
idPublicacion; H
)H I
{
�� 
var
�� 
	confirmar
�� 
=
�� 
new
��  #+
VentanaEmergentePersonalizada
��$ A
(
��A B
$str
�� L
,
��L M

DialogType
�� 
.
�� 
Confirmation
�� +
)
��+ ,
{
�� 
Owner
�� 
=
�� 
Window
�� "
.
��" #
	GetWindow
��# ,
(
��, -
this
��- 1
)
��1 2
}
�� 
;
�� 
bool
�� 

confirmado
�� 
=
��  !
	confirmar
��" +
.
��+ ,

ShowDialog
��, 6
(
��6 7
)
��7 8
==
��9 ;
true
��< @
;
��@ A
if
�� 
(
�� 
!
�� 

confirmado
�� 
)
��  
return
�� 
;
�� 
try
�� 
{
�� 
string
�� 
token
��  
=
��! "
PerfilSingleton
��# 2
.
��2 3
Instance
��3 ;
.
��; <
TokenJwt
��< D
;
��D E
var
�� 
	respuesta
�� !
=
��" #
await
��$ )!
PublicacionServicio
��* =
.
��= >&
EliminarPublicacionAsync
��> V
(
��V W
token
��W \
,
��\ ]
idPublicacion
��^ k
)
��k l
;
��l m
switch
�� 
(
�� 
	respuesta
�� %
.
��% &
	Resultado
��& /
)
��/ 0
{
�� 
case
�� 
$num
��  
:
��  !)
MostrarMensajePersonalizado
�� 7
(
��7 8
$str
��8 i
,
��i j

DialogType
��k u
.
��u v
Success
��v }
)
��} ~
;
��~ 
CargarDocumentos
�� ,
(
��, -
)
��- .
;
��. /
break
�� !
;
��! "
case
�� 
$num
��  
:
��  !)
MostrarMensajePersonalizado
�� 7
(
��7 8
$str
��8 X
,
��X Y

DialogType
��Z d
.
��d e
Warning
��e l
)
��l m
;
��m n
break
�� !
;
��! "
case
�� 
(
�� 
int
�� !
)
��! "
HttpStatusCode
��" 0
.
��0 1
Unauthorized
��1 =
:
��= >)
MostrarMensajePersonalizado
�� 7
(
��7 8
$str
��8 u
,
��u v

DialogType��w �
.��� �
Error��� �
)��� �
;��� �
NavigationService
�� -
.
��- .
Navigate
��. 6
(
��6 7
new
��7 :
Login
��; @
(
��@ A
)
��A B
)
��B C
;
��C D
PerfilSingleton
�� +
.
��+ ,
Instance
��, 4
.
��4 5
Reset
��5 :
(
��: ;
)
��; <
;
��< =
break
�� !
;
��! "
case
�� 
$num
��  
:
��  !)
MostrarMensajePersonalizado
�� 7
(
��7 8
	respuesta
��8 A
.
��A B
Mensaje
��B I
,
��I J

DialogType
��K U
.
��U V
Error
��V [
)
��[ \
;
��\ ]
break
�� !
;
��! "
default
�� 
:
��  )
MostrarMensajePersonalizado
�� 7
(
��7 8
$"
��8 :
$str
��: A
{
��A B
	respuesta
��B K
.
��K L
Mensaje
��L S
}
��S T
"
��T U
,
��U V

DialogType
��W a
.
��a b
Warning
��b i
)
��i j
;
��j k
break
�� !
;
��! "
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( ))
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 i
,
��i j

DialogType
��k u
.
��u v
Error
��v {
)
��{ |
;
��| }
}
�� 
}
�� 
}
�� 	
public
�� 
BitmapImage
�� 
?
�� 
ConvertirABitmap
�� ,
(
��, -
byte
��- 1
[
��1 2
]
��2 3
datos
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
datos
�� 
==
�� 
null
�� 
||
��  
datos
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
return
��4 :
null
��; ?
;
��? @
using
�� 
var
�� 
stream
�� 
=
�� 
new
�� "
MemoryStream
��# /
(
��/ 0
datos
��0 5
)
��5 6
;
��6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\ExplorarDocumentos.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloDocumentos% 5
{ 
public 

partial 
class 
ExplorarDocumentos +
:, -
Page. 2
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
LoginQ V
)V W
)W X
;X Y
private 
readonly 
string 
	_busqueda  )
;) *
private 
readonly 
string 
_tipoBusqueda  -
;- .
private 
readonly 
int 
_id  
;  !
private 
List 
< 
PublicacionVista %
>% &
_publicacionesCache' :
;: ;
private   
List   
<   
PublicacionVista   %
>  % &$
_publicacionesOriginales  ' ?
;  ? @
public"" 
ExplorarDocumentos"" !
(""! "
string""" (
textoBusqueda"") 6
,""6 7
string""8 >
tipoBusqueda""? K
,""K L
int""M P
id""Q S
)""S T
{## 	
InitializeComponent$$ 
($$  
)$$  !
;$$! "
_tipoBusqueda%% 
=%% 
tipoBusqueda%% (
;%%( )
	_busqueda&& 
=&& 
textoBusqueda&& %
;&&% &
_id'' 
='' 
id'' 
;'' 
_publicacionesCache(( 
=((  !
new((" %
List((& *
<((* +
PublicacionVista((+ ;
>((; <
(((< =
)((= >
;((> ?$
_publicacionesOriginales)) $
=))% &
new))' *
List))+ /
<))/ 0
PublicacionVista))0 @
>))@ A
())A B
)))B C
;))C D
BusquedaSingleton++ 
.++ 
Instance++ &
.++& '
EstablecerBusqueda++' 9
(++9 :
tipoBusqueda++: F
,++F G
textoBusqueda++H U
,++U V
id++W Y
)++Y Z
;++Z [
if-- 
(-- 
BusquedaSingleton-- !
.--! "
Instance--" *
.--* +
YaTieneBusqueda--+ :
(--: ;
)--; <
&&--= ?
_publicacionesCache.. #
!=..$ &
null..' +
&&.., .
_publicacionesCache../ B
...B C
Any..C F
(..F G
)..G H
)..H I
{// 
AplicarFiltro00 
(00 
tipoBusqueda00 *
,00* +
textoBusqueda00, 9
,009 :
id00; =
)00= >
;00> ?
}11 
else22 
{33 
ElegirTipoBusqueda44 "
(44" #
tipoBusqueda44# /
,44/ 0
textoBusqueda441 >
,44> ?
id44@ B
)44B C
;44C D
}55 
}66 	
private88 
void88 
AplicarFiltro88 "
(88" #
string88# )
tipo88* .
,88. /
string880 6
texto887 <
,88< =
int88> A
id88B D
)88D E
{99 	
if:: 
(:: $
_publicacionesOriginales:: (
==::) +
null::, 0
||::1 3
!::4 5$
_publicacionesOriginales::5 M
.::M N
Any::N Q
(::Q R
)::R S
)::S T
{;; 
ElegirTipoBusqueda<< "
(<<" #
tipo<<# '
,<<' (
texto<<) .
,<<. /
id<<0 2
)<<2 3
;<<3 4
return== 
;== 
}>> 
var@@ "
publicacionesFiltradas@@ &
=@@' ($
_publicacionesOriginales@@) A
.@@A B
ToList@@B H
(@@H I
)@@I J
;@@J K
switchBB 
(BB 
tipoBB 
)BB 
{CC 
caseDD 
$strDD  
:DD  !
ifEE 
(EE 
!EE 
stringEE 
.EE  
IsNullOrWhiteSpaceEE  2
(EE2 3
textoEE3 8
)EE8 9
)EE9 :
{FF "
publicacionesFiltradasGG .
=GG/ 0"
publicacionesFiltradasGG1 G
.HH 
WhereHH "
(HH" #
pHH# $
=>HH% '
pHH( )
.HH) *
TituloHH* 0
.HH0 1
ContainsHH1 9
(HH9 :
textoHH: ?
,HH? @
StringComparisonHHA Q
.HHQ R
OrdinalIgnoreCaseHHR c
)HHc d
)HHd e
.II 
ToListII #
(II# $
)II$ %
;II% &
}JJ 
breakKK 
;KK 
caseMM 
$strMM "
:MM" #
switchNN 
(NN 
textoNN !
)NN! "
{OO 
casePP 
$strPP .
:PP. /"
publicacionesFiltradasQQ 2
=QQ3 4"
publicacionesFiltradasQQ5 K
.RR  !
OrderByDescendingRR! 2
(RR2 3
pRR3 4
=>RR5 7
pRR8 9
.RR9 :
	DescargasRR: C
)RRC D
.SS  !
ToListSS! '
(SS' (
)SS( )
;SS) *
breakTT !
;TT! "
caseVV 
$strVV 0
:VV0 1"
publicacionesFiltradasWW 2
=WW3 4"
publicacionesFiltradasWW5 K
.XX  !
OrderByDescendingXX! 2
(XX2 3
pXX3 4
=>XX5 7
pXX8 9
.XX9 :
LikesXX: ?
)XX? @
.YY  !
ToListYY! '
(YY' (
)YY( )
;YY) *
breakZZ !
;ZZ! "
case\\ 
$str\\ )
:\\) *"
publicacionesFiltradas]] 2
=]]3 4"
publicacionesFiltradas]]5 K
.^^  !
OrderByDescending^^! 2
(^^2 3
p^^3 4
=>^^5 7
p^^8 9
.^^9 :
Vistas^^: @
)^^@ A
.__  !
ToList__! '
(__' (
)__( )
;__) *
break`` !
;``! "
}aa 
breakbb 
;bb 
casedd 
$strdd  
:dd  !"
publicacionesFiltradasee *
=ee+ ,"
publicacionesFiltradasee- C
.ff 
Whereff 
(ff 
pff  
=>ff! #
pff$ %
.ff% &
IdCategoriaff& 1
==ff2 4
idff5 7
)ff7 8
.gg 
ToListgg 
(gg  
)gg  !
;gg! "
breakhh 
;hh 
casejj 
$strjj %
:jj% &"
publicacionesFiltradaskk *
=kk+ ,"
publicacionesFiltradaskk- C
.ll 
Wherell 
(ll 
pll  
=>ll! #
pll$ %
.ll% &
NivelEducativoll& 4
.ll4 5
Equalsll5 ;
(ll; <
textoll< A
,llA B
StringComparisonllC S
.llS T
OrdinalIgnoreCasellT e
)lle f
)llf g
.mm 
ToListmm 
(mm  
)mm  !
;mm! "
breaknn 
;nn 
casepp 
$strpp 
:pp "
publicacionesFiltradasqq *
=qq+ ,"
publicacionesFiltradasqq- C
.rr 
Whererr 
(rr 
prr  
=>rr! #
prr$ %
.rr% &
IdRamarr& ,
==rr- /
idrr0 2
)rr2 3
.ss 
ToListss 
(ss  
)ss  !
;ss! "
breaktt 
;tt 
}uu 
_publicacionesCacheww 
=ww  !"
publicacionesFiltradasww" 8
;ww8 9"
itmc_DocumentosControlyy "
.yy" #
ItemsSourceyy# .
=yy/ 0"
publicacionesFiltradasyy1 G
;yyG H 
grd_SinPublicacioneszz  
.zz  !

Visibilityzz! +
=zz, -"
publicacionesFiltradaszz. D
.zzD E
AnyzzE H
(zzH I
)zzI J
?zzK L

VisibilityzzM W
.zzW X
	CollapsedzzX a
:zzb c

Visibilityzzd n
.zzn o
Visiblezzo v
;zzv w
}{{ 	
private}} 
void}} '
MostrarMensajePersonalizado}} 0
(}}0 1
string}}1 7
message}}8 ?
,}}? @

DialogType}}A K
type}}L P
)}}P Q
{~~ 	
var 
dialog 
= 
new )
VentanaEmergentePersonalizada :
(: ;
message; B
,B C
typeD H
)H I
{
�� 
Owner
�� 
=
�� 
Window
�� 
.
�� 
	GetWindow
�� (
(
��( )
this
��) -
)
��- .
}
�� 
;
�� 
dialog
�� 
.
�� 

ShowDialog
�� 
(
�� 
)
�� 
;
��  
}
�� 	
private
�� 
void
��  
ElegirTipoBusqueda
�� '
(
��' (
string
��( .
tipo
��/ 3
,
��3 4
string
��5 ;
texto
��< A
,
��A B
int
��C F
id
��G I
)
��I J
{
�� 	
switch
�� 
(
�� 
tipo
�� 
)
�� 
{
�� 
case
�� 
$str
��  
:
��  !
case
�� 
$str
�� "
:
��" #"
ObtenerPublicaciones
�� (
(
��( )
)
��) *
;
��* +
break
�� 
;
�� 
case
�� 
$str
��  
:
��  !+
ObtenerPublicacionesCategoria
�� 1
(
��1 2
id
��2 4
)
��4 5
;
��5 6
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� '
ObtenerPublicacionesRamas
�� -
(
��- .
id
��. 0
)
��0 1
;
��1 2
break
�� 
;
�� 
case
�� 
$str
�� %
:
��% &0
"ObtenerPublicacionesNivelEducativo
�� 6
(
��6 7
texto
��7 <
)
��< =
;
��= >
break
�� 
;
�� 
default
�� 
:
�� "
ObtenerPublicaciones
�� (
(
��( )
)
��) *
;
��* +
break
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� "
ObtenerPublicaciones
�� /
(
��/ 0
)
��0 1
=>
��2 4
await
�� '
ObtenerPublicacionesAsync
�� +
(
��+ ,!
PublicacionServicio
��, ?
.
��? @"
ObtenerPublicaciones
��@ T
)
��T U
;
��U V
private
�� 
async
�� 
void
�� +
ObtenerPublicacionesCategoria
�� 8
(
��8 9
int
��9 <
id
��= ?
)
��? @
=>
��A C
await
�� '
ObtenerPublicacionesAsync
�� +
(
��+ ,
(
��, -
)
��- .
=>
��/ 1!
PublicacionServicio
��2 E
.
��E F!
ObtenerPorCategoria
��F Y
(
��Y Z
id
��Z \
)
��\ ]
)
��] ^
;
��^ _
private
�� 
async
�� 
void
�� 0
"ObtenerPublicacionesNivelEducativo
�� =
(
��= >
string
��> D
nivel
��E J
)
��J K
=>
��L N
await
�� '
ObtenerPublicacionesAsync
�� +
(
��+ ,
(
��, -
)
��- .
=>
��/ 1!
PublicacionServicio
��2 E
.
��E F&
ObtenerPorNivelEducativo
��F ^
(
��^ _
nivel
��_ d
)
��d e
)
��e f
;
��f g
private
�� 
async
�� 
void
�� '
ObtenerPublicacionesRamas
�� 4
(
��4 5
int
��5 8
rama
��9 =
)
��= >
=>
��? A
await
�� '
ObtenerPublicacionesAsync
�� +
(
��+ ,
(
��, -
)
��- .
=>
��/ 1!
PublicacionServicio
��2 E
.
��E F
ObtenerPorRama
��F T
(
��T U
rama
��U Y
)
��Y Z
)
��Z [
;
��[ \
private
�� 
async
�� 
Task
�� '
ObtenerPublicacionesAsync
�� 4
(
��4 5
Func
��5 9
<
��9 :
Task
��: >
<
��> ?"
RespuestaPublicacion
��? S
<
��S T
List
��T X
<
��X Y
Publicacion
��Y d
>
��d e
>
��e f
>
��f g
>
��g h!
fuentePublicaciones
��i |
)
��| }
{
�� 	$
itmc_DocumentosControl
�� "
.
��" #
ItemsSource
��# .
=
��/ 0
null
��1 5
;
��5 6"
grd_SinPublicaciones
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
	Collapsed
��9 B
;
��B C
try
�� 
{
�� 
var
�� 
	respuesta
�� 
=
�� 
await
��  %!
fuentePublicaciones
��& 9
(
��9 :
)
��: ;
;
��; <
switch
�� 
(
�� 
	respuesta
�� !
.
��! "
	Resultado
��" +
)
��+ ,
{
�� 
case
�� 
$num
�� 
:
�� 
var
��  
publicacionesVista
�� .
=
��/ 0
await
��1 6/
!ConvertirAPublicacionesVistaAsync
��7 X
(
��X Y
	respuesta
��Y b
.
��b c
Datos
��c h
)
��h i
;
��i j&
_publicacionesOriginales
�� 0
=
��1 2 
publicacionesVista
��3 E
.
��E F
ToList
��F L
(
��L M
)
��M N
;
��N O
var
�� $
publicacionesFiltradas
�� 2
=
��3 4%
AplicarFiltrosEnMemoria
��5 L
(
��L M 
publicacionesVista
��M _
,
��_ `
_tipoBusqueda
��a n
,
��n o
	_busqueda
��p y
,
��y z
_id
��{ ~
)
��~ 
;�� �!
_publicacionesCache
�� +
=
��, -$
publicacionesFiltradas
��. D
;
��D E
if
�� 
(
�� 
!
�� $
publicacionesFiltradas
�� 3
.
��3 4
Any
��4 7
(
��7 8
)
��8 9
)
��9 :
{
�� "
grd_SinPublicaciones
�� 0
.
��0 1

Visibility
��1 ;
=
��< =

Visibility
��> H
.
��H I
Visible
��I P
;
��P Q
}
�� 
else
�� 
{
�� $
itmc_DocumentosControl
�� 2
.
��2 3
ItemsSource
��3 >
=
��? @$
publicacionesFiltradas
��A W
;
��W X
}
�� 
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� "
grd_SinPublicaciones
�� ,
.
��, -

Visibility
��- 7
=
��8 9

Visibility
��: D
.
��D E
Visible
��E L
;
��L M
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
Unauthorized
��- 9
:
��9 :)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 q
,
��q r

DialogType
��s }
.
��} ~
Error��~ �
)��� �
;��� �
NavigationService
�� )
.
��) *
Navigate
��* 2
(
��2 3
new
��3 6
Login
��7 <
(
��< =
)
��= >
)
��> ?
;
��? @
PerfilSingleton
�� '
.
��' (
Instance
��( 0
.
��0 1
Reset
��1 6
(
��6 7
)
��7 8
;
��8 9
BusquedaSingleton
�� )
.
��) *
Instance
��* 2
.
��2 3
LimpiarBusqueda
��3 B
(
��B C
)
��C D
;
��D E
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 f
,
��f g

DialogType
��h r
.
��r s
Error
��s x
)
��x y
;
��y z
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$"
��4 6
$str
��6 =
{
��= >
	respuesta
��> G
.
��G H
Mensaje
��H O
}
��O P
"
��P Q
,
��Q R

DialogType
��S ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
break
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, b
,
��b c

DialogType
��d n
.
��n o
Error
��o t
)
��t u
;
��u v
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
PublicacionVista
�� %
>
��% &%
AplicarFiltrosEnMemoria
��' >
(
��> ?
List
��? C
<
��C D
PublicacionVista
��D T
>
��T U
publicaciones
��V c
,
��c d
string
��e k
tipoBusqueda
��l x
,
��x y
string��z �
busqueda��� �
,��� �
int��� �
id��� �
)��� �
{
�� 	
var
�� 
	resultado
�� 
=
�� 
publicaciones
�� )
.
��) *
ToList
��* 0
(
��0 1
)
��1 2
;
��2 3
switch
�� 
(
�� 
tipoBusqueda
��  
)
��  !
{
�� 
case
�� 
$str
��  
:
��  !
if
�� 
(
�� 
!
�� 
string
�� 
.
��   
IsNullOrWhiteSpace
��  2
(
��2 3
busqueda
��3 ;
)
��; <
)
��< =
{
�� 
	resultado
�� !
=
��" #
	resultado
��$ -
.
�� 
Where
�� "
(
��" #
p
��# $
=>
��% '
p
��( )
.
��) *
Titulo
��* 0
.
��0 1
Contains
��1 9
(
��9 :
busqueda
��: B
,
��B C
StringComparison
��D T
.
��T U
OrdinalIgnoreCase
��U f
)
��f g
)
��g h
.
�� 
ToList
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
break
�� 
;
�� 
case
�� 
$str
�� "
:
��" #
if
�� 
(
�� 
!
�� 
string
�� 
.
��   
IsNullOrWhiteSpace
��  2
(
��2 3
busqueda
��3 ;
)
��; <
)
��< =
{
�� 
	resultado
�� !
=
��" #
busqueda
��$ ,
switch
��- 3
{
�� 
$str
�� -
=>
��. 0
	resultado
��1 :
.
��: ;
OrderByDescending
��; L
(
��L M
p
��M N
=>
��O Q
p
��R S
.
��S T
	Descargas
��T ]
)
��] ^
.
��^ _
ToList
��_ e
(
��e f
)
��f g
,
��g h
$str
�� /
=>
��0 2
	resultado
��3 <
.
��< =
OrderByDescending
��= N
(
��N O
p
��O P
=>
��Q S
p
��T U
.
��U V
Likes
��V [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
,
��e f
$str
�� (
=>
��) +
	resultado
��, 5
.
��5 6
OrderByDescending
��6 G
(
��G H
p
��H I
=>
��J L
p
��M N
.
��N O
Vistas
��O U
)
��U V
.
��V W
ToList
��W ]
(
��] ^
)
��^ _
,
��_ `
_
�� 
=>
��  
	resultado
��! *
}
�� 
;
�� 
}
�� 
break
�� 
;
�� 
case
�� 
$str
��  
:
��  !
	resultado
�� 
=
�� 
	resultado
��  )
.
��) *
Where
��* /
(
��/ 0
p
��0 1
=>
��2 4
p
��5 6
.
��6 7
IdCategoria
��7 B
==
��C E
id
��F H
)
��H I
.
��I J
ToList
��J P
(
��P Q
)
��Q R
;
��R S
break
�� 
;
�� 
case
�� 
$str
�� %
:
��% &
	resultado
�� 
=
�� 
	resultado
��  )
.
��) *
Where
��* /
(
��/ 0
p
��0 1
=>
��2 4
p
��5 6
.
��6 7
NivelEducativo
��7 E
.
��E F
Equals
��F L
(
��L M
busqueda
��M U
,
��U V
StringComparison
��W g
.
��g h
OrdinalIgnoreCase
��h y
)
��y z
)
��z {
.
��{ |
ToList��| �
(��� �
)��� �
;��� �
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
	resultado
�� 
=
�� 
	resultado
��  )
.
��) *
Where
��* /
(
��/ 0
p
��0 1
=>
��2 4
p
��5 6
.
��6 7
IdRama
��7 =
==
��> @
id
��A C
)
��C D
.
��D E
ToList
��E K
(
��K L
)
��L M
;
��M N
break
�� 
;
�� 
}
�� 
return
�� 
	resultado
�� 
;
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
List
�� 
<
��  
PublicacionVista
��  0
>
��0 1
>
��1 2/
!ConvertirAPublicacionesVistaAsync
��3 T
(
��T U
List
��U Y
<
��Y Z
Publicacion
��Z e
>
��e f
publicaciones
��g t
)
��t u
{
�� 	
var
�� 
lista
�� 
=
�� 
new
�� 
List
��  
<
��  !
PublicacionVista
��! 1
>
��1 2
(
��2 3
)
��3 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
publicacion
�� $
in
��% '
publicaciones
��( 5
)
��5 6
{
�� 
byte
�� 
[
�� 
]
�� 
imagenBinaria
�� $
=
��% &
Array
��' ,
.
��, -
Empty
��- 2
<
��2 3
byte
��3 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
try
�� 
{
�� 
var
�� 
grpc
�� 
=
�� 
new
�� "&
FileServiceClientHandler
��# ;
(
��; <
)
��< =
;
��= >
var
�� 
(
�� 
imagen
�� 
,
��  
_
��! "
)
��" #
=
��$ %
await
��& +
grpc
��, 0
.
��0 1 
DownloadCoverAsync
��1 C
(
��C D
publicacion
��D O
.
��O P
Ruta
��P T
)
��T U
;
��U V
imagenBinaria
�� !
=
��" #
imagen
��$ *
??
��+ -
Array
��. 3
.
��3 4
Empty
��4 9
<
��9 :
byte
��: >
>
��> ?
(
��? @
)
��@ A
;
��A B
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
_logger
�� 
.
�� 
LogError
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
lista
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
PublicacionVista
�� .
{
�� 
Titulo
�� 
=
�� 
publicacion
�� (
.
��( )
Titulo
��) /
,
��/ 0
IdPublicacion
�� !
=
��" #
publicacion
��$ /
.
��/ 0
IdPublicacion
��0 =
,
��= >
IdCategoria
�� 
=
��  !
publicacion
��" -
.
��- .
IdCategoria
��. 9
,
��9 :
Descripcion
�� 
=
��  !
publicacion
��" -
.
��- .
ResuContenido
��. ;
,
��; <
NivelEducativo
�� "
=
��# $
publicacion
��% 0
.
��0 1
NivelEducativo
��1 ?
,
��? @
Estado
�� 
=
�� 
publicacion
�� (
.
��( )
Estado
��) /
,
��/ 0
Autor
�� 
=
�� 
publicacion
�� '
.
��' (
NombreCompleto
��( 6
,
��6 7
Fecha
�� 
=
�� 
publicacion
�� '
.
��' (
Fecha
��( -
.
��- .
ToString
��. 6
(
��6 7
$str
��7 I
)
��I J
,
��J K
Likes
�� 
=
�� 
publicacion
�� '
.
��' (
NumeroLiker
��( 3
,
��3 4
	Descargas
�� 
=
�� 
publicacion
��  +
.
��+ ,
NumeroDescargas
��, ;
,
��; <
Vistas
�� 
=
�� 
publicacion
�� (
.
��( )#
NumeroVisualizaciones
��) >
,
��> ?
IdRama
�� 
=
�� 
publicacion
�� (
.
��( )
IdMateriaYRama
��) 7
,
��7 8
Ruta
�� 
=
�� 
publicacion
�� &
.
��& '
Ruta
��' +
,
��+ ,
Imagen
�� 
=
�� 
ConvertirABitmap
�� -
(
��- .
imagenBinaria
��. ;
)
��; <
}
�� 
)
�� 
;
�� 
}
�� 
return
�� 
lista
�� 
;
�� 
}
�� 	
public
�� 
BitmapImage
�� 
?
�� 
ConvertirABitmap
�� ,
(
��, -
byte
��- 1
[
��1 2
]
��2 3
datos
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
datos
�� 
==
�� 
null
�� 
||
��  
datos
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
return
��4 :
null
��; ?
;
��? @
using
�� 
var
�� 
stream
�� 
=
�� 
new
�� "
MemoryStream
��# /
(
��/ 0
datos
��0 5
)
��5 6
;
��6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
private
�� 
void
�� "
VerDetallesDocumento
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8"
MouseButtonEventArgs
��9 M
e
��N O
)
��O P
{
�� 	
var
�� 
border
�� 
=
�� 
sender
�� 
as
��  "
Border
��# )
;
��) *
if
�� 
(
�� 
border
�� 
?
�� 
.
�� 
DataContext
�� #
is
��$ &
PublicacionVista
��' 7
publicacion
��8 C
)
��C D
{
�� 
var
�� 
paginaDetalle
�� !
=
��" #
new
��$ '!
VisualizarDocumento
��( ;
(
��; <
publicacion
��< G
)
��G H
;
��H I
NavigationService
�� !
?
��! "
.
��" #
Navigate
��# +
(
��+ ,
paginaDetalle
��, 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\SubMenu.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
Menus% *
{ 
public 

partial 
class 
SubMenu  
:! "
Page# '
{ 
public 
SubMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\EvaluarPublicacion.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloDocumentos% 5
{ 
public 

partial 
class 
EvaluarPublicacion +
:, -
Page. 2
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
VisualizarDocumentoQ d
)d e
)e f
;f g
private 
PublicacionVista  
_publicacionActual! 3
;3 4
private   
string   
_rutaPdfTemporal   '
;  ' (
private!! 
Frame!! 
_frame!! 
;!! 
public"" 
EvaluarPublicacion"" !
(""! "
)""" #
{## 	
InitializeComponent$$ 
($$  
)$$  !
;$$! "
}%% 	
public'' 
EvaluarPublicacion'' !
(''! "
PublicacionVista''" 2
publicacion''3 >
,''> ?
Frame''@ E
frame''F K
)''K L
:''M N
this''O S
(''S T
)''T U
{(( 	
_frame)) 
=)) 
frame)) 
;)) 
_publicacionActual** 
=**  
publicacion**! ,
;**, -"
CargarDatosPublicacion++ "
(++" #
)++# $
;++$ %
_,, 
=,, 
CargarPdfAsync,, 
(,, 
),,  
;,,  !
}.. 	
private00 
void00 "
CargarDatosPublicacion00 +
(00+ ,
)00, -
{11 	
if22 
(22 
_publicacionActual22 "
==22# %
null22& *
)22* +
return22, 2
;222 3
txtb_Titulo33 
.33 
Text33 
=33 
_publicacionActual33 1
.331 2
Titulo332 8
;338 9
txtb_Resumen44 
.44 
Text44 
=44 
_publicacionActual44  2
.442 3
Descripcion443 >
;44> ?

txtb_Autor55 
.55 
Text55 
=55 
_publicacionActual55 0
.550 1
Autor551 6
;556 7

txtb_Fecha66 
.66 
Text66 
=66 
_publicacionActual66 0
.660 1
Fecha661 6
;666 7
}88 	
private:: 
async:: 
void:: 
RechazarPublicacion:: .
(::. /
object::/ 5
sender::6 <
,::< = 
MouseButtonEventArgs::> R
e::S T
)::T U
{;; 	
var== 
	confirmar== 
=== 
new== )
VentanaEmergentePersonalizada==  =
(=== >
$str>> I
,>>I J

DialogType?? 
.?? 
Confirmation?? *
)??* +
{@@ 
OwnerAA 
=AA 
WindowAA 
.AA 
	GetWindowAA (
(AA( )
thisAA) -
)AA- .
}BB 
;BB 
boolDD 

confirmadoDD 
=DD 
	confirmarDD '
.DD' (

ShowDialogDD( 2
(DD2 3
)DD3 4
==DD5 7
trueDD8 <
;DD< =
ifFF 
(FF 
!FF 

confirmadoFF 
)FF 
returnGG 
;GG 
tryII 
{JJ 
stringKK 
tokenKK 
=KK 
PerfilSingletonKK .
.KK. /
InstanceKK/ 7
.KK7 8
TokenJwtKK8 @
;KK@ A
varLL 
	respuestaLL 
=LL 
awaitLL  %
PublicacionServicioLL& 9
.LL9 :$
RechazarPublicacionAsyncLL: R
(LLR S
tokenLLS X
,LLX Y
_publicacionActualLLZ l
.LLl m
IdPublicacionLLm z
)LLz {
;LL{ |
switchNN 
(NN 
	respuestaNN !
.NN! "
	ResultadoNN" +
)NN+ ,
{OO 
casePP 
$numPP 
:PP '
MostrarMensajePersonalizadoQQ 3
(QQ3 4
$strQQ4 W
,QQW X

DialogTypeQQY c
.QQc d
SuccessQQd k
)QQk l
;QQl m
_frameRR 
.RR 
NavigateRR '
(RR' (
newRR( + 
RevisarPublicacionesRR, @
(RR@ A
_frameRRA G
)RRG H
)RRH I
;RRI J
breakSS 
;SS 
caseUU 
$numUU 
:UU '
MostrarMensajePersonalizadoVV 3
(VV3 4
$strVV4 N
,VVN O

DialogTypeVVP Z
.VVZ [
WarningVV[ b
)VVb c
;VVc d
breakWW 
;WW 
caseYY 
(YY 
intYY 
)YY 
HttpStatusCodeYY ,
.YY, -
UnauthorizedYY- 9
:YY9 :'
MostrarMensajePersonalizadoZZ 3
(ZZ3 4
$strZZ4 q
,ZZq r

DialogTypeZZs }
.ZZ} ~
Error	ZZ~ �
)
ZZ� �
;
ZZ� �
NavigationService[[ )
.[[) *
Navigate[[* 2
([[2 3
new[[3 6
Login[[7 <
([[< =
)[[= >
)[[> ?
;[[? @
PerfilSingleton\\ '
.\\' (
Instance\\( 0
.\\0 1
Reset\\1 6
(\\6 7
)\\7 8
;\\8 9
break]] 
;]] 
case__ 
$num__ 
:__ '
MostrarMensajePersonalizado`` 3
(``3 4
$str``4 ]
,``] ^

DialogType``_ i
.``i j
Error``j o
)``o p
;``p q
breakaa 
;aa 
defaultcc 
:cc '
MostrarMensajePersonalizadodd 3
(dd3 4
$"dd4 6
$strdd6 =
{dd= >
	respuestadd> G
.ddG H
MensajeddH O
}ddO P
"ddP Q
,ddQ R

DialogTypeddS ]
.dd] ^
Warningdd^ e
)dde f
;ddf g
breakee 
;ee 
}ff 
}gg 
catchhh 
(hh 
	Exceptionhh 
exhh 
)hh  
{ii 
_loggerjj 
.jj 
LogFataljj  
(jj  !
exjj! #
)jj# $
;jj$ %'
MostrarMensajePersonalizadokk +
(kk+ ,
$strkk, _
,kk_ `

DialogTypekka k
.kkk l
Errorkkl q
)kkq r
;kkr s
}ll 
}mm 	
privateoo 
voidoo '
MostrarMensajePersonalizadooo 0
(oo0 1
stringoo1 7
messageoo8 ?
,oo? @

DialogTypeooA K
typeooL P
)ooP Q
{pp 	
varqq 
dialogqq 
=qq 
newqq )
VentanaEmergentePersonalizadaqq :
(qq: ;
messageqq; B
,qqB C
typeqqD H
)qqH I
{rr 
Ownerss 
=ss 
Windowss 
.ss 
	GetWindowss (
(ss( )
thisss) -
)ss- .
}tt 
;tt 
dialoguu 
.uu 

ShowDialoguu 
(uu 
)uu 
;uu  
}vv 	
privateyy 
asyncyy 
Taskyy 
CargarPdfAsyncyy )
(yy) *
)yy* +
{zz 	
if{{ 
({{ 
_publicacionActual{{ "
=={{# %
null{{& *
||{{+ -
string{{. 4
.{{4 5
IsNullOrEmpty{{5 B
({{B C
_publicacionActual{{C U
.{{U V
Ruta{{V Z
){{Z [
){{[ \
{|| '
MostrarMensajePersonalizado}} +
(}}+ ,
$str}}, S
,}}S T

DialogType}}U _
.}}_ `
Warning}}` g
)}}g h
;}}h i
return~~ 
;~~ 
} 
try
�� 
{
�� 

PdfWebView
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =
var
�� 
grpc
�� 
=
�� 
new
�� &
FileServiceClientHandler
�� 7
(
��7 8
)
��8 9
;
��9 :
var
�� 
(
�� 

pdfBinario
�� 
,
��  
nombreArchivo
��! .
)
��. /
=
��0 1
await
��2 7
grpc
��8 <
.
��< =
DownloadPdfAsync
��= M
(
��M N 
_publicacionActual
��N `
.
��` a
Ruta
��a e
)
��e f
;
��f g
if
�� 
(
�� 

pdfBinario
�� 
!=
�� !
null
��" &
&&
��' )

pdfBinario
��* 4
.
��4 5
Length
��5 ;
>
��< =
$num
��> ?
)
��? @
{
�� 
string
�� 
tempPath
�� #
=
��$ %
System
��& ,
.
��, -
IO
��- /
.
��/ 0
Path
��0 4
.
��4 5
GetTempPath
��5 @
(
��@ A
)
��A B
;
��B C
_rutaPdfTemporal
�� $
=
��% &
System
��' -
.
��- .
IO
��. 0
.
��0 1
Path
��1 5
.
��5 6
Combine
��6 =
(
��= >
tempPath
��> F
,
��F G
$"
��H J
{
��J K 
_publicacionActual
��K ]
.
��] ^
IdPublicacion
��^ k
}
��k l
$str
��l m
{
��m n
nombreArchivo
��n {
}
��{ |
"
��| }
)
��} ~
;
��~ 
await
�� 
File
�� 
.
��  
WriteAllBytesAsync
�� 1
(
��1 2
_rutaPdfTemporal
��2 B
,
��B C

pdfBinario
��D N
)
��N O
;
��O P
await
�� &
InicializarWebView2Async
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� /
(
��/ 0
$str
��0 T
,
��T U

DialogType
��V `
.
��` a
Error
��a f
)
��f g
;
��g h
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, K
,
��K L

DialogType
��M W
.
��W X
Error
��X ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� &
InicializarWebView2Async
�� 3
(
��3 4
)
��4 5
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 

PdfWebView
�� 
.
�� 
CoreWebView2
�� +
==
��, .
null
��/ 3
)
��3 4
await
�� 

PdfWebView
�� $
.
��$ %%
EnsureCoreWebView2Async
��% <
(
��< =
)
��= >
;
��> ?
var
�� 
settings
�� 
=
�� 

PdfWebView
�� )
.
��) *
CoreWebView2
��* 6
.
��6 7
Settings
��7 ?
;
��? @
settings
�� 
.
�� 
IsScriptEnabled
�� (
=
��) *
false
��+ 0
;
��0 1
settings
�� 
.
��  
AreDevToolsEnabled
�� +
=
��, -
false
��. 3
;
��3 4
settings
�� 
.
�� "
IsZoomControlEnabled
�� -
=
��. /
true
��0 4
;
��4 5
settings
�� 
.
�� +
AreDefaultContextMenusEnabled
�� 6
=
��7 8
false
��9 >
;
��> ?
settings
�� 
.
�� '
IsBuiltInErrorPageEnabled
�� 2
=
��3 4
false
��5 :
;
��: ;

PdfWebView
�� 
.
��  
NavigationStarting
�� -
+=
��. 0
(
��1 2
s
��2 3
,
��3 4
e
��5 6
)
��6 7
=>
��8 :
{
�� 
if
�� 
(
�� 
!
�� 
e
�� 
.
�� 
Uri
�� 
.
�� 
Contains
�� '
(
��' (
$str
��( .
)
��. /
&&
��0 2
!
��3 4
e
��4 5
.
��5 6
Uri
��6 9
.
��9 :

StartsWith
��: D
(
��D E
$str
��E N
)
��N O
)
��O P
{
�� 
e
�� 
.
�� 
Cancel
��  
=
��! "
true
��# '
;
��' (
}
�� 
}
�� 
;
�� 

PdfWebView
�� 
.
�� !
NavigationCompleted
�� .
+=
��/ 1
(
��2 3
s
��3 4
,
��4 5
e
��6 7
)
��7 8
=>
��9 ;
{
�� 
if
�� 
(
�� 
e
�� 
.
�� 
	IsSuccess
�� #
)
��# $
{
�� 

PdfWebView
�� "
.
��" #

Visibility
��# -
=
��. /

Visibility
��0 :
.
��: ;
Visible
��; B
;
��B C
}
�� 
else
�� 
{
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 W
,
��W X

DialogType
��Y c
.
��c d
Error
��d i
)
��i j
;
��j k
}
�� 
}
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
_rutaPdfTemporal
��* :
)
��: ;
&&
��< >
File
��? C
.
��C D
Exists
��D J
(
��J K
_rutaPdfTemporal
��K [
)
��[ \
)
��\ ]
{
�� 

PdfWebView
�� 
.
�� 
Source
�� %
=
��& '
new
��( +
Uri
��, /
(
��/ 0
_rutaPdfTemporal
��0 @
)
��@ A
;
��A B
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogError
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, S
,
��S T

DialogType
��U _
.
��_ `
Error
��` e
)
��e f
;
��f g
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
btn_Guardar_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
�� 	
var
�� 
	confirmar
�� 
=
�� 
new
�� +
VentanaEmergentePersonalizada
��  =
(
��= >
$str
�� e
,
��e f

DialogType
�� 
.
�� 
Confirmation
�� +
)
��+ ,
{
�� 
Owner
�� 
=
�� 
Window
�� 
.
�� 
	GetWindow
�� (
(
��( )
this
��) -
)
��- .
}
�� 
;
�� 
bool
�� 

confirmado
�� 
=
�� 
	confirmar
�� '
.
��' (

ShowDialog
��( 2
(
��2 3
)
��3 4
==
��5 7
true
��8 <
;
��< =
if
�� 
(
�� 
!
�� 

confirmado
�� 
)
�� 
return
�� 
;
�� 
try
�� 
{
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
TokenJwt
��8 @
;
��@ A
var
�� 
	respuesta
�� 
=
�� 
await
��  %!
PublicacionServicio
��& 9
.
��9 :%
AprobarPublicacionAsync
��: Q
(
��Q R
token
��R W
,
��W X 
_publicacionActual
��Y k
.
��k l
IdPublicacion
��l y
)
��y z
;
��z {
switch
�� 
(
�� 
	respuesta
�� !
.
��! "
	Resultado
��" +
)
��+ ,
{
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 `
,
��` a

DialogType
��b l
.
��l m
Success
��m t
)
��t u
;
��u v
_frame
�� 
.
�� 
Navigate
�� '
(
��' (
new
��( +"
RevisarPublicaciones
��, @
(
��@ A
_frame
��A G
)
��G H
)
��H I
;
��I J
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 N
,
��N O

DialogType
��P Z
.
��Z [
Warning
��[ b
)
��b c
;
��c d
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
Unauthorized
��- 9
:
��9 :)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 q
,
��q r

DialogType
��s }
.
��} ~
Error��~ �
)��� �
;��� �
NavigationService
�� )
.
��) *
Navigate
��* 2
(
��2 3
new
��3 6
Login
��7 <
(
��< =
)
��= >
)
��> ?
;
��? @
PerfilSingleton
�� '
.
��' (
Instance
��( 0
.
��0 1
Reset
��1 6
(
��6 7
)
��7 8
;
��8 9
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 ]
,
��] ^

DialogType
��_ i
.
��i j
Error
��j o
)
��o p
;
��p q
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$"
��4 6
$str
��6 =
{
��= >
	respuesta
��> G
.
��G H
Mensaje
��H O
}
��O P
"
��P Q
,
��Q R

DialogType
��S ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
break
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, _
,
��_ `

DialogType
��a k
.
��k l
Error
��l q
)
��q r
;
��r s
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� "
ToggleButton_Checked
�� /
(
��/ 0
object
��0 6
sender
��7 =
,
��= >
RoutedEventArgs
��? N
e
��O P
)
��P Q
{
�� 	
var
�� 
	confirmar
�� 
=
�� 
new
�� +
VentanaEmergentePersonalizada
��  =
(
��= >
$str
�� [
,
��[ \

DialogType
�� 
.
�� 
Confirmation
�� *
)
��* +
{
�� 
Owner
�� 
=
�� 
Window
�� 
.
�� 
	GetWindow
�� (
(
��( )
this
��) -
)
��- .
}
�� 
;
�� 
bool
�� 

confirmado
�� 
=
�� 
	confirmar
�� '
.
��' (

ShowDialog
��( 2
(
��2 3
)
��3 4
==
��5 7
true
��8 <
;
��< =
if
�� 
(
�� 
!
�� 

confirmado
�� 
)
�� 
return
�� 
;
�� 
try
�� 
{
�� 
string
�� 
token
�� 
=
�� 
PerfilSingleton
�� .
.
��. /
Instance
��/ 7
.
��7 8
TokenJwt
��8 @
;
��@ A
var
�� 
	respuesta
�� 
=
�� 
await
��  %
UsuarioServicio
��& 5
.
��5 6 
BanearUsuarioAsync
��6 H
(
��H I
token
��I N
,
��N O 
_publicacionActual
��P b
.
��b c
	IdUsuario
��c l
)
��l m
;
��m n
switch
�� 
(
�� 
	respuesta
�� !
.
��! "
	Resultado
��" +
)
��+ ,
{
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 i
,
��i j

DialogType
��k u
.
��u v
Success
��v }
)
��} ~
;
��~ 
await
�� !
PublicacionServicio
�� 1
.
��1 2&
RechazarPublicacionAsync
��2 J
(
��J K
token
��K P
,
��P Q 
_publicacionActual
��R d
.
��d e
IdPublicacion
��e r
)
��r s
;
��s t
_frame
�� 
.
�� 
Navigate
�� '
(
��' (
new
��( +"
RevisarPublicaciones
��, @
(
��@ A
_frame
��A G
)
��G H
)
��H I
;
��I J
break
�� 
;
�� 
case
�� 
(
�� 
int
�� 
)
�� 
HttpStatusCode
�� ,
.
��, -
Unauthorized
��- 9
:
��9 :)
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 q
,
��q r

DialogType
��s }
.
��} ~
Error��~ �
)��� �
;��� �
NavigationService
�� )
.
��) *
Navigate
��* 2
(
��2 3
new
��3 6
Login
��7 <
(
��< =
)
��= >
)
��> ?
;
��? @
PerfilSingleton
�� '
.
��' (
Instance
��( 0
.
��0 1
Reset
��1 6
(
��6 7
)
��7 8
;
��8 9
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$str
��4 b
,
��b c

DialogType
��d n
.
��n o
Error
��o t
)
��t u
;
��u v
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
	respuesta
��4 =
.
��= >
Mensaje
��> E
,
��E F

DialogType
��G Q
.
��Q R
Error
��R W
)
��W X
;
��X Y
break
�� 
;
�� 
default
�� 
:
�� )
MostrarMensajePersonalizado
�� 3
(
��3 4
$"
��4 6
$str
��6 =
{
��= >
	respuesta
��> G
.
��G H
Mensaje
��H O
}
��O P
"
��P Q
,
��Q R

DialogType
��S ]
.
��] ^
Warning
��^ e
)
��e f
;
��f g
break
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %)
MostrarMensajePersonalizado
�� +
(
��+ ,
$str
��, _
,
��_ `

DialogType
��a k
.
��k l
Error
��l q
)
��q r
;
��r s
}
�� 
}
�� 	
}
�� 
}�� �Y
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\RevisarPublicaciones.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
ModuloMenus% 0
{ 
public 

partial 
class  
RevisarPublicaciones -
:. /
Page0 4
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
LoginQ V
)V W
)W X
;X Y
private 
Frame 
_frame 
; 
public    
RevisarPublicaciones   #
(  # $
Frame  $ )
frame  * /
)  / 0
{!! 	
InitializeComponent"" 
(""  
)""  !
;""! "
_frame## 
=## 
frame## 
;## 
CargarDocumentos$$ 
($$ 
)$$ 
;$$ 
}%% 	
private'' 
void'' '
MostrarMensajePersonalizado'' 0
(''0 1
string''1 7
message''8 ?
,''? @

DialogType''A K
type''L P
)''P Q
{(( 	
var)) 
dialog)) 
=)) 
new)) )
VentanaEmergentePersonalizada)) :
()): ;
message)); B
,))B C
type))D H
)))H I
{** 
Owner++ 
=++ 
Window++ 
.++ 
	GetWindow++ (
(++( )
this++) -
)++- .
},, 
;,, 
dialog-- 
.-- 

ShowDialog-- 
(-- 
)-- 
;--  
}.. 	
private// 
async// 
void// 
CargarDocumentos// +
(//+ ,
)//, -
{00 	"
itmc_DocumentosControl22 "
.22" #
ItemsSource22# .
=22/ 0
null221 5
;225 6
try44 
{55 
string66 
token66 
=66 
PerfilSingleton66 .
.66. /
Instance66/ 7
.667 8
TokenJwt668 @
;66@ A
var88 
	respuesta88 
=88 
await88  %
PublicacionServicio88& 9
.889 :*
ObtenerPublicacionesPendientes88: X
(88X Y
token88Y ^
)88^ _
;88_ `
switch:: 
(:: 
	respuesta:: !
.::! "
	Resultado::" +
)::+ ,
{;; 
case<< 
$num<< 
:<< 
var== #
listaPublicacionesVista== 3
===4 5
new==6 9
List==: >
<==> ?
PublicacionVista==? O
>==O P
(==P Q
)==Q R
;==R S
foreach?? 
(??  !
var??! $
publicacion??% 0
in??1 3
	respuesta??4 =
.??= >
Datos??> C
)??C D
{AA 
byteBB  
[BB  !
]BB! "
imagenBinariaBB# 0
=BB1 2
ArrayBB3 8
.BB8 9
EmptyBB9 >
<BB> ?
byteBB? C
>BBC D
(BBD E
)BBE F
;BBF G
tryDD 
{EE 
varFF  #
grpcFF$ (
=FF) *
newFF+ .$
FileServiceClientHandlerFF/ G
(FFG H
)FFH I
;FFI J
varGG  #
(GG$ %
imagenGG% +
,GG+ ,
_GG- .
)GG. /
=GG0 1
awaitGG2 7
grpcGG8 <
.GG< =
DownloadCoverAsyncGG= O
(GGO P
publicacionGGP [
.GG[ \
RutaGG\ `
)GG` a
;GGa b
imagenBinariaHH  -
=HH. /
imagenHH0 6
??HH7 9
ArrayHH: ?
.HH? @
EmptyHH@ E
<HHE F
byteHHF J
>HHJ K
(HHK L
)HHL M
;HHM N
}II 
catchJJ !
(JJ" #
	ExceptionJJ# ,
exJJ- /
)JJ/ 0
{KK 
_loggerLL  '
.LL' (
LogErrorLL( 0
(LL0 1
exLL1 3
)LL3 4
;LL4 5'
MostrarMensajePersonalizadoMM  ;
(MM; <
$str	MM< �
,
MM� �

DialogType
MM� �
.
MM� �
Error
MM� �
)
MM� �
;
MM� �
}NN #
listaPublicacionesVistaPP 3
.PP3 4
AddPP4 7
(PP7 8
newPP8 ;
PublicacionVistaPP< L
{QQ 
TituloRR  &
=RR' (
publicacionRR) 4
.RR4 5
TituloRR5 ;
,RR; <
IdPublicacionSS  -
=SS. /
publicacionSS0 ;
.SS; <
IdPublicacionSS< I
,SSI J
DescripcionTT  +
=TT, -
publicacionTT. 9
.TT9 :
ResuContenidoTT: G
,TTG H
EstadoUU  &
=UU' (
publicacionUU) 4
.UU4 5
EstadoUU5 ;
,UU; <
AutorVV  %
=VV& '
publicacionVV( 3
.VV3 4
NombreCompletoVV4 B
,VVB C
FechaWW  %
=WW& '
publicacionWW( 3
.WW3 4
FechaWW4 9
.WW9 :
ToStringWW: B
(WWB C
$strWWC U
)WWU V
,WWV W
LikesXX  %
=XX& '
publicacionXX( 3
.XX3 4
NumeroLikerXX4 ?
,XX? @
	DescargasYY  )
=YY* +
publicacionYY, 7
.YY7 8
NumeroDescargasYY8 G
,YYG H
VistasZZ  &
=ZZ' (
publicacionZZ) 4
.ZZ4 5!
NumeroVisualizacionesZZ5 J
,ZZJ K
Ruta[[  $
=[[% &
publicacion[[' 2
.[[2 3
Ruta[[3 7
,[[7 8
	IdUsuario\\  )
=\\* +
publicacion\\, 7
.\\7 8
IdUsuarioRegistrado\\8 K
,\\K L
Imagen]]  &
=]]' (
ConvertirABitmap]]) 9
(]]9 :
imagenBinaria]]: G
)]]G H
}^^ 
)^^ 
;^^ 
}__ 
ifaa 
(aa #
listaPublicacionesVistaaa 3
.aa3 4
Countaa4 9
==aa: <
$numaa= >
)aa> ?
{bb  
grd_SinPublicacionescc 0
.cc0 1

Visibilitycc1 ;
=cc< =

Visibilitycc> H
.ccH I
VisibleccI P
;ccP Q
}dd "
itmc_DocumentosControlff .
.ff. /
ItemsSourceff/ :
=ff; <#
listaPublicacionesVistaff= T
;ffT U
breakgg 
;gg 
caseii 
$numii 
:ii  
grd_SinPublicacionesjj ,
.jj, -

Visibilityjj- 7
=jj8 9

Visibilityjj: D
.jjD E
VisiblejjE L
;jjL M
breakkk 
;kk 
casemm 
(mm 
intmm 
)mm 
HttpStatusCodemm ,
.mm, -
Unauthorizedmm- 9
:mm9 :'
MostrarMensajePersonalizadonn 3
(nn3 4
$strnn4 q
,nnq r

DialogTypenns }
.nn} ~
Error	nn~ �
)
nn� �
;
nn� �
NavigationServiceoo )
.oo) *
Navigateoo* 2
(oo2 3
newoo3 6
Loginoo7 <
(oo< =
)oo= >
)oo> ?
;oo? @
PerfilSingletonpp '
.pp' (
Instancepp( 0
.pp0 1
Resetpp1 6
(pp6 7
)pp7 8
;pp8 9
breakqq 
;qq 
casess 
$numss 
:ss '
MostrarMensajePersonalizadott 3
(tt3 4
$strtt4 f
,ttf g

DialogTypetth r
.ttr s
Errortts x
)ttx y
;tty z
breakuu 
;uu 
defaultww 
:ww '
MostrarMensajePersonalizadoxx 3
(xx3 4
$"xx4 6
$strxx6 =
{xx= >
	respuestaxx> G
.xxG H
MensajexxH O
}xxO P
$strxxP R
{xxR S
	respuestaxxS \
.xx\ ]
	Resultadoxx] f
}xxf g
"xxg h
,xxh i

DialogTypexxj t
.xxt u
Warningxxu |
)xx| }
;xx} ~
breakyy 
;yy 
}zz 
}{{ 
catch|| 
(|| 
	Exception|| 
ex|| 
)||  
{}} 
_logger~~ 
.~~ 
LogFatal~~  
(~~  !
ex~~! #
)~~# $
;~~$ %'
MostrarMensajePersonalizado +
(+ ,
$str, b
,b c

DialogTyped n
.n o
Erroro t
)t u
;u v
}
�� 
}
�� 	
public
�� 
BitmapImage
�� 
?
�� 
ConvertirABitmap
�� ,
(
��, -
byte
��- 1
[
��1 2
]
��2 3
datos
��4 9
)
��9 :
{
�� 	
if
�� 
(
�� 
datos
�� 
==
�� 
null
�� 
||
��  
datos
��! &
.
��& '
Length
��' -
==
��. 0
$num
��1 2
)
��2 3
return
��4 :
null
��; ?
;
��? @
using
�� 
var
�� 
stream
�� 
=
�� 
new
�� "
MemoryStream
��# /
(
��/ 0
datos
��0 5
)
��5 6
;
��6 7
var
�� 
image
�� 
=
�� 
new
�� 
BitmapImage
�� '
(
��' (
)
��( )
;
��) *
image
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
image
�� 
.
�� 
CacheOption
�� 
=
�� 
BitmapCacheOption
��  1
.
��1 2
OnLoad
��2 8
;
��8 9
image
�� 
.
�� 
StreamSource
�� 
=
��  
stream
��! '
;
��' (
image
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
image
�� 
;
�� 
}
�� 	
private
�� 
void
�� "
VerDetallesDocumento
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8"
MouseButtonEventArgs
��9 M
e
��N O
)
��O P
{
�� 	
var
�� 
border
�� 
=
�� 
sender
�� 
as
��  "
Border
��# )
;
��) *
if
�� 
(
�� 
border
�� 
?
�� 
.
�� 
DataContext
�� #
is
��$ &
PublicacionVista
��' 7
publicacion
��8 C
)
��C D
{
�� 
var
�� 
paginaDetalle
�� !
=
��" #
new
��$ ' 
EvaluarPublicacion
��( :
(
��: ;
publicacion
��; F
,
��F G
_frame
��H N
)
��N O
;
��O P
NavigationService
�� !
?
��! "
.
��" #
Navigate
��# +
(
��+ ,
paginaDetalle
��, 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\MenuPrincipal.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
Menus% *
{ 
public 

partial 
class 
MenuPrincipal &
:' (
Page) -
{ 
public 
MenuPrincipal 
( 
) 
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
PerfilSingleton"" 
."" 
Instance"" $
.""$ %
PropertyChanged""% 4
+=""5 7"
Perfil_PropertyChanged""8 N
;""N O
this$$ 
.$$ 
Loaded$$ 
+=$$ #
VerificarSiInicioSesion$$ 2
;$$2 3
}%% 	
private'' 
void'' "
Perfil_PropertyChanged'' +
(''+ ,
object'', 2
?''2 3
sender''4 :
,'': ;$
PropertyChangedEventArgs''< T
e''U V
)''V W
{(( 	

Dispatcher)) 
.)) 
Invoke)) 
()) 
()) 
)))  
=>))! #
{** 
tgbtn_MenuPerfil++  
.++  !
ApplyTemplate++! .
(++. /
)++/ 0
;++0 1
if-- 
(-- 
e-- 
.-- 
PropertyName-- "
==--# %
nameof--& ,
(--, -
PerfilSingleton--- <
.--< =
FotoPerfilBinaria--= N
)--N O
)--O P
{.. 
var// 
foto// 
=// 
PerfilSingleton// .
.//. /
Instance/// 7
.//7 8
FotoPerfilBinaria//8 I
;//I J
var00 
bitmap00 
=00   
ConvertirFotoABitmap00! 5
(005 6
foto006 :
)00: ;
;00; <
if22 
(22 
tgbtn_MenuPerfil22 (
.22( )
Template22) 1
.221 2
FindName222 :
(22: ;
$str22; G
,22G H
tgbtn_MenuPerfil22I Y
)22Y Z
is22[ ]

ImageBrush22^ h
brush22i n
)22n o
{33 
brush44 
.44 
ImageSource44 )
=44* +
bitmap44, 2
;442 3
}55 
}66 
if88 
(88 
e88 
.88 
PropertyName88 "
==88# %
nameof88& ,
(88, -
PerfilSingleton88- <
.88< =
NombreUsuario88= J
)88J K
)88K L
{99 
if:: 
(:: 
tgbtn_MenuPerfil:: (
.::( )
Template::) 1
.::1 2
FindName::2 :
(::: ;
$str::; H
,::H I
tgbtn_MenuPerfil::J Z
)::Z [
is::\ ^
	TextBlock::_ h
	textBlock::i r
)::r s
{;; 
	textBlock<< !
.<<! "
Text<<" &
=<<' (
PerfilSingleton<<) 8
.<<8 9
Instance<<9 A
.<<A B
NombreUsuario<<B O
;<<O P
}== 
}>> 
}?? 
)?? 
;?? 
}@@ 	
privateBB 
voidBB '
MostrarMensajePersonalizadoBB 0
(BB0 1
stringBB1 7
messageBB8 ?
,BB? @

DialogTypeBBA K
typeBBL P
)BBP Q
{CC 	
varDD 
dialogDD 
=DD 
newDD )
VentanaEmergentePersonalizadaDD :
(DD: ;
messageDD; B
,DDB C
typeDDD H
)DDH I
{EE 
OwnerFF 
=FF 
WindowFF 
.FF 
	GetWindowFF (
(FF( )
thisFF) -
)FF- .
}GG 
;GG 
dialogHH 
.HH 

ShowDialogHH 
(HH 
)HH 
;HH  
}II 	
~KK 	
MenuPrincipalKK	 
(KK 
)KK 
{LL 	
PerfilSingletonMM 
.MM 
InstanceMM $
.MM$ %
PropertyChangedMM% 4
-=MM5 7"
Perfil_PropertyChangedMM8 N
;MMN O
}NN 	
privatePP 
voidPP #
VerificarSiInicioSesionPP ,
(PP, -
objectPP- 3
senderPP4 :
,PP: ;
RoutedEventArgsPP< K
ePPL M
)PPM N
{QQ 	
varRR 
perfilRR 
=RR 
PerfilSingletonRR (
.RR( )
InstanceRR) 1
;RR1 2
ifTT 
(TT 
!TT 
stringTT 
.TT 
IsNullOrEmptyTT %
(TT% &
perfilTT& ,
.TT, -
CorreoTT- 3
)TT3 4
)TT4 5
{UU 
tgbtn_RegistrarseVV !
.VV! "

VisibilityVV" ,
=VV- .

VisibilityVV/ 9
.VV9 :
	CollapsedVV: C
;VVC D
tgbtn_MenuLoginWW 
.WW  

VisibilityWW  *
=WW+ ,

VisibilityWW- 7
.WW7 8
	CollapsedWW8 A
;WWA B
tgbtn_SubirArchivoXX "
.XX" #

VisibilityXX# -
=XX. /

VisibilityXX0 :
.XX: ;
VisibleXX; B
;XXB C
tgbtn_MenuPerfilYY  
.YY  !

VisibilityYY! +
=YY, -

VisibilityYY. 8
.YY8 9
VisibleYY9 @
;YY@ A
tgbtn_MenuPerfil[[  
.[[  !
ApplyTemplate[[! .
([[. /
)[[/ 0
;[[0 1
var\\ 
	textBlock\\ 
=\\ 
(\\  !
	TextBlock\\! *
)\\* +
tgbtn_MenuPerfil\\+ ;
.\\; <
Template\\< D
.\\D E
FindName\\E M
(\\M N
$str\\N [
,\\[ \
tgbtn_MenuPerfil\\] m
)\\m n
;\\n o
if]] 
(]] 
	textBlock]] 
!=]]  
null]]! %
)]]% &
{^^ 
	textBlock__ 
.__ 
Text__ "
=__# $
perfil__% +
.__+ ,
NombreUsuario__, 9
;__9 :
}`` 
ifbb 
(bb 
tgbtn_MenuPerfilbb $
.bb$ %
Templatebb% -
.bb- .
FindNamebb. 6
(bb6 7
$strbb7 C
,bbC D
tgbtn_MenuPerfilbbE U
)bbU V
isbbW Y

ImageBrushbbZ d
brushbbe j
)bbj k
{cc 
brushdd 
.dd 
ImageSourcedd %
=dd& ' 
ConvertirFotoABitmapdd( <
(dd< =
perfildd= C
.ddC D
FotoPerfilBinariaddD U
)ddU V
;ddV W
}ee 
}ff 
}gg 	
privateii 
voidii 
TextBox_GotFocusii %
(ii% &
objectii& ,
senderii- 3
,ii3 4
RoutedEventArgsii5 D
eiiE F
)iiF G
{jj 	
ifkk 
(kk 
txtb_BuscarTextBoxkk "
.kk" #
Textkk# '
==kk( *
$strkk+ 3
)kk3 4
{ll 
txtb_BuscarTextBoxmm "
.mm" #
Textmm# '
=mm( )
$strmm* ,
;mm, -
txtb_BuscarTextBoxnn "
.nn" #

Foregroundnn# -
=nn. /
Brushesnn0 7
.nn7 8
Blacknn8 =
;nn= >
}oo 
}pp 	
privaterr 
voidrr 
TextBox_LostFocusrr &
(rr& '
objectrr' -
senderrr. 4
,rr4 5
RoutedEventArgsrr6 E
errF G
)rrG H
{ss 	
iftt 
(tt 
stringtt 
.tt 
IsNullOrWhiteSpacett )
(tt) *
txtb_BuscarTextBoxtt* <
.tt< =
Texttt= A
)ttA B
)ttB C
{uu 
txtb_BuscarTextBoxvv "
.vv" #
Textvv# '
=vv( )
$strvv* 2
;vv2 3
txtb_BuscarTextBoxww "
.ww" #

Foregroundww# -
=ww. /
Brushesww0 7
.ww7 8
Grayww8 <
;ww< =
}xx 
}yy 	
privatezz 
voidzz 
	IrAlLoginzz 
(zz 
objectzz %
senderzz& ,
,zz, - 
MouseButtonEventArgszz. B
ezzC D
)zzD E
{{{ 	
Login|| 
login|| 
=|| 
new|| 
Login|| #
(||# $
)||$ %
;||% &
this}} 
.}} 
NavigationService}} "
.}}" #
Navigate}}# +
(}}+ ,
login}}, 1
)}}1 2
;}}2 3
}~~ 	
private
�� 
void
�� 
IrARegistrarse
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
�� 	
RegistrarUsuario
�� 
registrarUsuario
�� -
=
��. /
new
��0 3
RegistrarUsuario
��4 D
(
��D E
)
��E F
;
��F G
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
registrarUsuario
��, <
)
��< =
;
��= >
}
�� 	
private
�� 
void
�� 
IrASubirArchivo
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3
RoutedEventArgs
��4 C
e
��D E
)
��E F
{
�� 	
fra_Menu
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� !
SubirDocumento
��" 0
(
��0 1
fra_Menu
��1 9
)
��9 :
)
��: ;
;
��; <
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
void
�� 
IrAMisDocumentos
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
fra_Menu
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� !
MisDocumentos
��" /
(
��/ 0
fra_Menu
��0 8
)
��8 9
)
��9 :
;
��: ;
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
void
�� 
IrALaCuenta
��  
(
��  !
object
��! '
sender
��( .
,
��. /"
MouseButtonEventArgs
��0 D
e
��E F
)
��F G
{
�� 	
fra_Menu
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� !
Perfil
��" (
(
��( )
fra_Menu
��) 1
)
��1 2
)
��2 3
;
��3 4
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
void
�� 
IrALaComunidad
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2"
MouseButtonEventArgs
��3 G
e
��H I
)
��I J
{
�� 	
fra_Menu
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� !
BuscarPerfil
��" .
(
��. /
fra_Menu
��/ 7
)
��7 8
)
��8 9
;
��9 :
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
void
�� 
IrATusAmigos
�� !
(
��! "
object
��" (
sender
��) /
,
��/ 0"
MouseButtonEventArgs
��1 E
e
��F G
)
��G H
{
�� 	
fra_Menu
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� !
Amigos
��" (
(
��( )
)
��) *
)
��* +
;
��+ ,
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
void
�� &
MostrarPantallaPrincipal
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
MouseButtonEventArgs
��= Q
e
��R S
)
��S T
{
�� 	
fra_Menu
�� 
.
�� 
Source
�� 
=
�� 
new
�� !
System
��" (
.
��( )
Uri
��) ,
(
��, -
$str
��- ;
,
��; <
System
��= C
.
��C D
UriKind
��D K
.
��K L
Relative
��L T
)
��T U
;
��U V
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& '
LimpiarBusqueda
��' 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
private
�� 
void
�� 
BuscarRecurso
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1"
MouseButtonEventArgs
��2 F
e
��G H
)
��H I
{
�� 	
string
�� 
texto
�� 
=
��  
txtb_BuscarTextBox
�� -
.
��- .
Text
��. 2
.
��2 3
Trim
��3 7
(
��7 8
)
��8 9
;
��9 :
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� )
(
��) *
texto
��* /
)
��/ 0
||
��1 3
texto
��4 9
==
��: <
$str
��= E
)
��E F
{
�� 
return
�� 
;
�� 
}
�� 
string
�� 
tipoBusqueda
�� 
=
��  !
$str
��" -
;
��- .
int
�� 
id
�� 
=
�� 
$num
�� 
;
�� 
BusquedaSingleton
�� 
.
�� 
Instance
�� &
.
��& ' 
EstablecerBusqueda
��' 9
(
��9 :
tipoBusqueda
��: F
,
��F G
texto
��H M
,
��M N
id
��O Q
)
��Q R
;
��R S
fra_Menu
�� 
.
�� 
Navigate
�� 
(
�� 
new
�� ! 
ExplorarDocumentos
��" 4
(
��4 5
texto
��5 :
,
��: ;
tipoBusqueda
��< H
,
��H I
id
��J L
)
��L M
)
��M N
;
��N O
}
�� 	
private
�� 
void
�� !
Categoria_MouseDown
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
MouseButtonEventArgs
��8 L
e
��M N
)
��N O
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
	TextBlock
�� #
tb
��$ &
&&
��' )
int
��* -
.
��- .
TryParse
��. 6
(
��6 7
tb
��7 9
.
��9 :
Tag
��: =
?
��= >
.
��> ?
ToString
��? G
(
��G H
)
��H I
,
��I J
out
��K N
int
��O R
categoriaId
��S ^
)
��^ _
)
��_ `
{
�� 
string
�� 
texto
�� 
=
�� 
$str
�� !
;
��! "
string
�� 
tipoBusqueda
�� #
=
��$ %
$str
��& 1
;
��1 2
int
�� 
id
�� 
=
�� 
categoriaId
�� $
;
��$ %
BusquedaSingleton
�� !
.
��! "
Instance
��" *
.
��* + 
EstablecerBusqueda
��+ =
(
��= >
tipoBusqueda
��> J
,
��J K
texto
��L Q
,
��Q R
id
��S U
)
��U V
;
��V W
fra_Menu
�� 
.
�� 
Navigate
�� !
(
��! "
new
��" % 
ExplorarDocumentos
��& 8
(
��8 9
texto
��9 >
,
��> ?
tipoBusqueda
��@ L
,
��L M
id
��N P
)
��P Q
)
��Q R
;
��R S
}
�� 
}
�� 	
private
�� 
void
�� 
Rama_MouseDown
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2"
MouseButtonEventArgs
��3 G
e
��H I
)
��I J
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
	TextBlock
�� #
tb
��$ &
&&
��' )
int
��* -
.
��- .
TryParse
��. 6
(
��6 7
tb
��7 9
.
��9 :
Tag
��: =
?
��= >
.
��> ?
ToString
��? G
(
��G H
)
��H I
,
��I J
out
��K N
int
��O R
ramaId
��S Y
)
��Y Z
)
��Z [
{
�� 
string
�� 
texto
�� 
=
�� 
$str
�� !
;
��! "
string
�� 
tipoBusqueda
�� #
=
��$ %
$str
��& ,
;
��, -
int
�� 
id
�� 
=
�� 
ramaId
�� 
;
��  
BusquedaSingleton
�� !
.
��! "
Instance
��" *
.
��* + 
EstablecerBusqueda
��+ =
(
��= >
tipoBusqueda
��> J
,
��J K
texto
��L Q
,
��Q R
id
��S U
)
��U V
;
��V W
fra_Menu
�� 
.
�� 
Navigate
�� !
(
��! "
new
��" % 
ExplorarDocumentos
��& 8
(
��8 9
texto
��9 >
,
��> ?
tipoBusqueda
��@ L
,
��L M
id
��N P
)
��P Q
)
��Q R
;
��R S
}
�� 
}
�� 	
private
�� 
void
�� &
NivelEducativo_MouseDown
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
MouseButtonEventArgs
��= Q
e
��R S
)
��S T
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
	TextBlock
�� #
tb
��$ &
)
��& '
{
�� 
string
�� 

nombreRama
�� !
=
��" #
tb
��$ &
.
��& '
Text
��' +
.
��+ ,
Trim
��, 0
(
��0 1
)
��1 2
;
��2 3
string
�� 
tipoBusqueda
�� #
=
��$ %
$str
��& 6
;
��6 7
int
�� 
id
�� 
=
�� 
$num
�� 
;
�� 
BusquedaSingleton
�� !
.
��! "
Instance
��" *
.
��* + 
EstablecerBusqueda
��+ =
(
��= >
tipoBusqueda
��> J
,
��J K

nombreRama
��L V
,
��V W
id
��X Z
)
��Z [
;
��[ \
fra_Menu
�� 
.
�� 
Navigate
�� !
(
��! "
new
��" % 
ExplorarDocumentos
��& 8
(
��8 9

nombreRama
��9 C
,
��C D
tipoBusqueda
��E Q
,
��Q R
id
��S U
)
��U V
)
��V W
;
��W X
}
�� 
}
�� 	
private
�� 
void
�� #
Popularidad_MouseDown
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9"
MouseButtonEventArgs
��: N
e
��O P
)
��P Q
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
	TextBlock
�� #
tb
��$ &
)
��& '
{
�� 
string
�� 

nombreRama
�� !
=
��" #
tb
��$ &
.
��& '
Text
��' +
.
��+ ,
Trim
��, 0
(
��0 1
)
��1 2
;
��2 3
string
�� 
tipoBusqueda
�� #
=
��$ %
$str
��& 3
;
��3 4
int
�� 
id
�� 
=
�� 
$num
�� 
;
�� 
BusquedaSingleton
�� !
.
��! "
Instance
��" *
.
��* + 
EstablecerBusqueda
��+ =
(
��= >
tipoBusqueda
��> J
,
��J K

nombreRama
��L V
,
��V W
id
��X Z
)
��Z [
;
��[ \
fra_Menu
�� 
.
�� 
Navigate
�� !
(
��! "
new
��" % 
ExplorarDocumentos
��& 8
(
��8 9

nombreRama
��9 C
,
��C D
tipoBusqueda
��E Q
,
��Q R
id
��S U
)
��U V
)
��V W
;
��W X
}
�� 
}
�� 	
private
�� 
async
�� 
void
�� 
CerrarSesion
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6"
MouseButtonEventArgs
��7 K
e
��L M
)
��M N
{
�� 	
await
�� 
App
�� 
.
�� "
SocketNotificaciones
�� *
.
��* +
DesconectarAsync
��+ ;
(
��; <
PerfilSingleton
��< K
.
��K L
Instance
��L T
.
��T U!
IdUsuarioRegistrado
��U h
.
��h i
ToString
��i q
(
��q r
)
��r s
)
��s t
;
��t u
PerfilSingleton
�� 
.
�� 
Instance
�� $
.
��$ %
Reset
��% *
(
��* +
)
��+ ,
;
��, -
Login
�� 
login
�� 
=
�� 
new
�� 
Login
�� #
(
��# $
)
��$ %
;
��% &
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
login
��, 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
ImageSource
�� "
ConvertirFotoABitmap
�� /
(
��/ 0
byte
��0 4
[
��4 5
]
��5 6
binario
��7 >
)
��> ?
{
�� 	
if
�� 
(
�� 
binario
�� 
==
�� 
null
�� 
||
��  "
binario
��# *
.
��* +
Length
��+ 1
==
��2 4
$num
��5 6
)
��6 7
return
��8 >
null
��? C
;
��C D
using
�� 
var
�� 
ms
�� 
=
�� 
new
�� 
MemoryStream
�� +
(
��+ ,
binario
��, 3
)
��3 4
;
��4 5
var
�� 
bitmap
�� 
=
�� 
new
�� 
BitmapImage
�� (
(
��( )
)
��) *
;
��* +
bitmap
�� 
.
�� 
	BeginInit
�� 
(
�� 
)
�� 
;
�� 
bitmap
�� 
.
�� 
CacheOption
�� 
=
��  
BitmapCacheOption
��! 2
.
��2 3
OnLoad
��3 9
;
��9 :
bitmap
�� 
.
�� 
StreamSource
�� 
=
��  !
ms
��" $
;
��$ %
bitmap
�� 
.
�� 
EndInit
�� 
(
�� 
)
�� 
;
�� 
return
�� 
bitmap
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\MenuAdministrador.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
Vistas $
.$ %
Menus% *
{ 
public 

partial 
class 
MenuAdministrador *
:+ ,
Page- 1
{ 
public 
MenuAdministrador  
(  !
)! "
{ 	
InitializeComponent 
(  
)  !
;! "
CargarVentana 
( 
) 
; 
} 	
private 
void 
CargarVentana "
(" #
)# $
{   	
fra_MenuAdmin!! 
.!! 
Navigate!! "
(!!" #
new!!# & 
RevisarPublicaciones!!' ;
(!!; <
fra_MenuAdmin!!< I
)!!I J
)!!J K
;!!K L
}"" 	
private$$ 
void$$ $
MostrarPantallaPrincipal$$ -
($$- .
object$$. 4
sender$$5 ;
,$$; < 
MouseButtonEventArgs$$= Q
e$$R S
)$$S T
{%% 	
fra_MenuAdmin&& 
.&& 
Navigate&& "
(&&" #
new&&# & 
RevisarPublicaciones&&' ;
(&&; <
fra_MenuAdmin&&< I
)&&I J
)&&J K
;&&K L
}'' 	
private)) 
void)) 
CerrarSesion)) !
())! "
object))" (
sender))) /
,))/ 0 
MouseButtonEventArgs))1 E
e))F G
)))G H
{** 	
PerfilSingleton,, 
.,, 
Instance,, $
.,,$ %
Reset,,% *
(,,* +
),,+ ,
;,,, -
Login.. 
login.. 
=.. 
new.. 
Login.. #
(..# $
)..$ %
;..% &
this// 
.// 
NavigationService// "
.//" #
Navigate//# +
(//+ ,
login//, 1
)//1 2
;//2 3
}00 	
}11 
}22 �@
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\Validador.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{		 
public

 

static

 
class

 
	Validador

 !
{ 
private 
static 
readonly 
Regex  %
_regexContraseña& 6
=7 8
new9 <
Regex= B
(B C
$str	C �
,
� �
RegexOptions
� �
.
� �
None
� �
,
� �
TimeSpan
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
private 
static 
readonly 
Regex  %
_regexCorreo& 2
=3 4
new5 8
Regex9 >
(> ?
$str	? �
,
� �
RegexOptions
� �
.
� �
None
� �
,
� �
TimeSpan
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
public 
static 
bool #
ValidarExpresionRegular 2
(2 3
string3 9
dato: >
,> ?
Regex@ E
	expresionF O
)O P
{ 	
bool 
esValido 
= 
false !
;! "
try 
{ 
esValido 
= 
	expresion $
.$ %
IsMatch% ,
(, -
dato- 1
)1 2
;2 3
} 
catch 
( &
RegexMatchTimeoutException -
)- .
{ 
esValido 
= 
false  
;  !
} 
return 
esValido 
; 
} 	
public 
static 
bool 
ValidarContraseña ,
(, -
string- 3
contraseña4 >
)> ?
{ 	
bool   
esValido   
=   
false   !
;  ! "
string!! 
contraseñaLimpia!! #
=!!$ %
Regex!!& +
.!!+ ,
Replace!!, 3
(!!3 4
contraseña!!4 >
.!!> ?
Trim!!? C
(!!C D
)!!D E
,!!E F
$str!!G M
,!!M N
$str!!O R
,!!R S
RegexOptions!!T `
.!!` a
None!!a e
,!!e f
TimeSpan!!g o
.!!o p
FromMilliseconds	!!p �
(
!!� �
$num
!!� �
)
!!� �
)
!!� �
;
!!� �
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrWhiteSpace"" *
(""* +
contraseñaLimpia""+ ;
)""; <
&&""= ?#
ValidarExpresionRegular""@ W
(""W X
contraseñaLimpia""X h
,""h i
_regexContraseña""j z
)""z {
)""{ |
{## 
esValido$$ 
=$$ 
true$$ 
;$$  
}%% 
return&& 
esValido&& 
;&& 
}'' 	
public)) 
static)) 
bool)) 
ValidarNombre)) (
())( )
string))) /
nombre))0 6
)))6 7
{** 	
bool++ 
esValido++ 
=++ 
false++ !
;++! "
string,, 
regexNombre,, 
=,,  
$str,,! Y
;,,Y Z
string.. 
nombreLimpio.. 
=..  !
Regex.." '
...' (
Replace..( /
(../ 0
nombre..0 6
...6 7
Trim..7 ;
(..; <
)..< =
,..= >
$str..? E
,..E F
$str..G J
,..J K
RegexOptions..L X
...X Y
None..Y ]
,..] ^
TimeSpan.._ g
...g h
FromMilliseconds..h x
(..x y
$num..y |
)..| }
)..} ~
;..~ 
if00 
(00 
!00 
string00 
.00 
IsNullOrWhiteSpace00 *
(00* +
nombreLimpio00+ 7
)007 8
&&009 ;
Regex00< A
.00A B
IsMatch00B I
(00I J
nombreLimpio00J V
,00V W
regexNombre00X c
)00c d
)00d e
{11 
esValido22 
=22 
true22 
;22  
}33 
return55 
esValido55 
;55 
}66 	
public88 
static88 
bool88 
ValidarCorreo88 (
(88( )
string88) /
correo880 6
)886 7
{99 	
bool:: 
esValido:: 
=:: 
false:: !
;::! "
string;; 
correoLimpio;; 
=;;  !
Regex;;" '
.;;' (
Replace;;( /
(;;/ 0
correo;;0 6
.;;6 7
Trim;;7 ;
(;;; <
);;< =
,;;= >
$str;;? E
,;;E F
$str;;G J
,;;J K
RegexOptions;;L X
.;;X Y
None;;Y ]
,;;] ^
TimeSpan;;_ g
.;;g h
FromMilliseconds;;h x
(;;x y
$num;;y |
);;| }
);;} ~
;;;~ 
if<< 
(<< 
!<< 
string<< 
.<< 
IsNullOrWhiteSpace<< *
(<<* +
correoLimpio<<+ 7
)<<7 8
&&<<9 ;
correoLimpio<<< H
.<<H I
Length<<I O
<<<P Q
$num<<R U
&&<<V X#
ValidarExpresionRegular<<Y p
(<<p q
correoLimpio<<q }
,<<} ~
_regexCorreo	<< �
)
<<� �
)
<<� �
{== 
esValido>> 
=>> 
true>> 
;>>  
}?? 
return@@ 
esValido@@ 
;@@ 
}AA 	
publicCC 
staticCC 
boolCC "
ValidarSegundoApellidoCC 1
(CC1 2
stringCC2 8
segundoApellidoCC9 H
)CCH I
{DD 	
ifEE 
(EE 
stringEE 
.EE 
IsNullOrWhiteSpaceEE )
(EE) *
segundoApellidoEE* 9
)EE9 :
)EE: ;
returnFF 
trueFF 
;FF 
stringHH 
regexNombreHH 
=HH  
$strHH! Y
;HHY Z
stringII 
apellidoLimpioII !
=II" #
RegexII$ )
.II) *
ReplaceII* 1
(II1 2
segundoApellidoII2 A
.IIA B
TrimIIB F
(IIF G
)IIG H
,IIH I
$strIIJ P
,IIP Q
$strIIR U
,IIU V
RegexOptionsIIW c
.IIc d
NoneIId h
,IIh i
TimeSpanIIj r
.IIr s
FromMilliseconds	IIs �
(
II� �
$num
II� �
)
II� �
)
II� �
;
II� �
returnKK 
RegexKK 
.KK 
IsMatchKK  
(KK  !
apellidoLimpioKK! /
,KK/ 0
regexNombreKK1 <
)KK< =
;KK= >
}LL 	
publicOO 
staticOO 
boolOO 
ValidarUsuarioOO )
(OO) *
stringOO* 0
usuarioOO1 8
)OO8 9
{PP 	
ifQQ 
(QQ 
stringQQ 
.QQ 
IsNullOrWhiteSpaceQQ )
(QQ) *
usuarioQQ* 1
)QQ1 2
)QQ2 3
returnRR 
falseRR 
;RR 
stringTT 
usuarioLimpioTT  
=TT! "
usuarioTT# *
.TT* +
TrimTT+ /
(TT/ 0
)TT0 1
;TT1 2
boolVV 
esValidoVV 
=VV 
RegexVV !
.VV! "
IsMatchVV" )
(VV) *
usuarioLimpioVV* 7
,VV7 8
$strVV9 J
)VVJ K
;VVK L
returnXX 
esValidoXX 
;XX 
}YY 	
}ZZ 
}[[ �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\UsuarioPerfil.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{		 
public

 

class

 
UsuarioPerfil

 
{ 
public 
string 
NombreCompleto $
=>% '
$"( *
{* +
Nombre+ 1
}1 2
$str2 3
{3 4
PrimerApellido4 B
}B C
$strC D
{D E
SegundoApellidoE T
}T U
"U V
.V W
TrimW [
([ \
)\ ]
;] ^
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
public 
string 
NombreInstitucion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
string8 >
.> ?
Empty? D
;D E
public 
int 
Seguidos 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
NivelEducativo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public 
int 
	Seguidore 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Publicaciones  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
BitmapImage 
? 
Imagen "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
FotoPerfilRuta $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public 
int 
IdUsuarioRegistrado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\PublicacionVista.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{		 
public

 

class

 
PublicacionVista

 !
{ 
public 
string 
Titulo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 
Descripcion !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
string2 8
.8 9
Empty9 >
;> ?
public 
int 
IdCategoria 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
IdRama 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
NivelEducativo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public 
string 
Autor 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
string 
Fecha 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
public 
int 
Likes 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
	Descargas 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Vistas 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 
Ruta 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
public 
string 
NombreCompletoAutor )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
string: @
.@ A
EmptyA F
;F G
public 
int 
IdPublicacion  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
BitmapImage 
Imagen !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �5
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\PerfilSingleton.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{ 
public 

class 
PerfilSingleton  
{ 
private		 
static		 
readonly		 
PerfilSingleton		  /
_instanciaSingleton		0 C
=		D E
new		F I
(		J K
)		K L
;		L M
private 
PerfilSingleton 
(  
)  !
{ 	
Correo 
= 
string 
. 
Empty !
;! "
NombreUsuario 
= 
string "
." #
Empty# (
;( )
IdUsuarioRegistrado 
=  !
$num" #
;# $
Nombre 
= 
string 
. 
Empty !
;! "
PrimerApellido 
= 
string #
.# $
Empty$ )
;) *
SegundoApellido 
= 
string $
.$ %
Empty% *
;* +
FotoPerfilBinaria 
= 
Array  %
.% &
Empty& +
<+ ,
byte, 0
>0 1
(1 2
)2 3
;3 4
TokenJwt 
= 
string 
. 
Empty #
;# $
NivelEducativo 
= 
string #
.# $
Empty$ )
;) *
IdInstitucion 
= 
$num 
; 
} 	
public 
static 
PerfilSingleton %
Instance& .
=>/ 1
_instanciaSingleton2 E
;E F
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
private 
string 
nombreUsuario $
;$ %
public 
string 
NombreUsuario #
{ 	
get 
=> 
nombreUsuario  
;  !
set   
=>   
SetProperty   
(   
ref   "
nombreUsuario  # 0
,  0 1
value  2 7
)  7 8
;  8 9
}!! 	
public"" 
int"" 
IdUsuarioRegistrado"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
public## 
string## 
Nombre## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
public$$ 
int$$ 
IdInstitucion$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
public%% 
string%% 
NivelEducativo%% $
{%%% &
get%%' *
;%%* +
set%%, /
;%%/ 0
}%%1 2
public&& 
string&& 
PrimerApellido&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
public'' 
string'' 
SegundoApellido'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
private(( 
byte(( 
[(( 
](( 
fotoPerfilBinaria(( (
;((( )
public)) 
byte)) 
[)) 
])) 
FotoPerfilBinaria)) '
{** 	
get++ 
=>++ 
fotoPerfilBinaria++ $
;++$ %
set,, 
=>,, 
SetProperty,, 
(,, 
ref,, "
fotoPerfilBinaria,,# 4
,,,4 5
value,,6 ;
),,; <
;,,< =
}-- 	
public.. 
string.. 
TokenJwt.. 
{..  
get..! $
;..$ %
set..& )
;..) *
}..+ ,
public00 
event00 '
PropertyChangedEventHandler00 0
?000 1
PropertyChanged002 A
;00A B
	protected22 
void22 
OnPropertyChanged22 (
(22( )
[22) *
CallerMemberName22* :
]22: ;
string22< B
?22B C
propertyName22D P
=22Q R
null22S W
)22W X
{33 	
PropertyChanged44 
?44 
.44 
Invoke44 #
(44# $
this44$ (
,44( )
new44* -$
PropertyChangedEventArgs44. F
(44F G
propertyName44G S
)44S T
)44T U
;44U V
}55 	
	protected77 
bool77 
SetProperty77 "
<77" #
T77# $
>77$ %
(77% &
ref77& )
T77* +
field77, 1
,771 2
T773 4
value775 :
,77: ;
[77< =
CallerMemberName77= M
]77M N
string77O U
?77U V
propertyName77W c
=77d e
null77f j
)77j k
{88 	
if99 
(99 
Equals99 
(99 
field99 
,99 
value99 #
)99# $
)99$ %
return99& ,
false99- 2
;992 3
field:: 
=:: 
value:: 
;:: 
OnPropertyChanged;; 
(;; 
propertyName;; *
);;* +
;;;+ ,
return<< 
true<< 
;<< 
}== 	
public@@ 
void@@ 
Reset@@ 
(@@ 
)@@ 
{AA 	
CorreoBB 
=BB 
stringBB 
.BB 
EmptyBB !
;BB! "
NombreUsuarioCC 
=CC 
stringCC "
.CC" #
EmptyCC# (
;CC( )
IdUsuarioRegistradoDD 
=DD  !
$numDD" #
;DD# $
NombreEE 
=EE 
stringEE 
.EE 
EmptyEE !
;EE! "
PrimerApellidoFF 
=FF 
stringFF #
.FF# $
EmptyFF$ )
;FF) *
SegundoApellidoGG 
=GG 
stringGG $
.GG$ %
EmptyGG% *
;GG* +
FotoPerfilBinariaHH 
=HH 
[HH  !
]HH! "
;HH" #
TokenJwtII 
=II 
stringII 
.II 
EmptyII #
;II# $
NivelEducativoJJ 
=JJ 
stringJJ #
.JJ# $
EmptyJJ$ )
;JJ) *
IdInstitucionKK 
=KK 
$numKK 
;KK 
}LL 	
}NN 
}OO �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\LoggerManager.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{		 
public

 

class

 
LoggerManager

 
{ 
public 
ILog 
Logger 
{ 
get  
;  !
set" %
;% &
}' (
public 
LoggerManager 
( 
Type !
type" &
)& '
{ 	
Logger 
= 

LogManager 
.  
	GetLogger  )
() *
type* .
). /
;/ 0
} 	
public 
static 
ILog 
	GetLogger $
($ %
Type% )
type* .
). /
{ 	
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
string #
message$ +
,+ ,
	Exception- 6
ex7 9
)9 :
{ 	
Logger 
. 
Error 
( 
message  
,  !
ex" $
)$ %
;% &
}   	
public"" 
void"" 
LogError"" 
("" 
	Exception"" &
ex""' )
)"") *
{## 	
Logger$$ 
.$$ 
Error$$ 
($$ 
ex$$ 
)$$ 
;$$ 
}%% 	
public&& 
void&& 
LogFatal&& 
(&& 
	Exception&& &
ex&&' )
)&&) *
{'' 	
Logger(( 
.(( 
Fatal(( 
((( 
ex(( 
)(( 
;(( 
})) 	
public** 
void** 
LogWarn** 
(** 
	Exception** %
ex**& (
)**( )
{++ 	
Logger,, 
.,, 
Warn,, 
(,, 
ex,, 
),, 
;,, 
}-- 	
public// 
void// 
LogDebug// 
(// 
	Exception// &
ex//' )
)//) *
{00 	
Logger11 
.11 
Debug11 
(11 
ex11 
)11 
;11 
}22 	
}55 
}66 �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\Hasher.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{		 
public

 

static

 
class

 
Hasher

 
{ 
public 
static 
string 

HashToSHA2 '
(' (
string( .

textToHash/ 9
)9 :
{ 	
StringBuilder 
stringHashBuilder +
=, -
new. 1
StringBuilder2 ?
(? @
)@ A
;A B
byte 
[ 
] 

inputBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7

textToHash7 A
)A B
;B C
using 
( 
SHA256 
sha256  
=! "
SHA256# )
.) *
Create* 0
(0 1
)1 2
)2 3
{ 
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6

inputBytes6 @
)@ A
;A B
string 
hexaDecimalFormat (
=) *
$str+ /
;/ 0
for 
( 
int 

indexBytes #
=$ %
$num& '
;' (

indexBytes) 3
<4 5
	hashBytes6 ?
.? @
Length@ F
;F G

indexBytesH R
++R T
)T U
{ 
stringHashBuilder %
.% &
Append& ,
(, -
	hashBytes- 6
[6 7

indexBytes7 A
]A B
.B C
ToStringC K
(K L
hexaDecimalFormatL ]
)] ^
)^ _
;_ `
} 
} 
return 
stringHashBuilder $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
}   
}!! �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\EscalaConverter.cs
	namespace		 	
EduShare_Escritorio		
 
.		 

Utilidades		 (
{

 
public 

class 
EscalaConverter  
:! "
IValueConverter# 2
{ 
public 
double 
MaxValor 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 3
;3 4
public 
double 
MaxAncho 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 2
;2 3
public 
object 
Convert 
( 
object $
value% *
,* +
Type, 0

targetType1 ;
,; <
object= C
	parameterD M
,M N
CultureInfoO Z
culture[ b
)b c
{ 	
if 
( 
value 
is 
int 
numero #
)# $
{ 
double 
escala 
= 
Math  $
.$ %
Min% (
(( )
numero) /
/0 1
MaxValor2 :
,: ;
$num< ?
)? @
;@ A
return 
escala 
* 
MaxAncho  (
;( )
} 
return 
$num 
; 
} 	
public 
object 
ConvertBack !
(! "
object" (
value) .
,. /
Type0 4

targetType5 ?
,? @
objectA G
	parameterH Q
,Q R
CultureInfoS ^
culture_ f
)f g
=>h j
throwk p
newq t$
NotImplementedException	u �
(
� �
)
� �
;
� �
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\BusquedaSinglenton.cs
	namespace 	
EduShare_Escritorio
 
. 

Utilidades (
{ 
public		 

class		 
BusquedaSingleton		 "
{

 
private 
static 
BusquedaSingleton (
	_instance) 2
;2 3
public 
string 
TipoBusqueda "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
public 
string 
TextoBusqueda #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 
int 

IdBusqueda 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
private 
BusquedaSingleton !
(! "
)" #
{$ %
}& '
public 
static 
BusquedaSingleton '
Instance( 0
=>1 3
	_instance4 =
??=> A
newB E
BusquedaSingletonF W
(W X
)X Y
;Y Z
public 
void 
EstablecerBusqueda &
(& '
string' -
tipo. 2
,2 3
string4 :
texto; @
,@ A
intB E
idF H
)H I
{ 	
TipoBusqueda 
= 
tipo 
;  
TextoBusqueda 
= 
texto !
;! "

IdBusqueda 
= 
id 
; 
} 	
public 
void 
LimpiarBusqueda #
(# $
)$ %
{ 	
TipoBusqueda 
= 
null 
;  
TextoBusqueda 
= 
null  
;  !

IdBusqueda   
=   
$num   
;   
}!! 	
public## 
bool## 
YaTieneBusqueda## #
(### $
)##$ %
=>##& (
!##) *
string##* 0
.##0 1
IsNullOrEmpty##1 >
(##> ?
TipoBusqueda##? K
)##K L
;##L M
}$$ 
}&& ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\UsuarioServicio.cs
	namespace 	
EduShare_Escritorio
 
. 
Servicio &
{ 
public 

class 
UsuarioServicio  
{ 
private 
static 
readonly 
string  &
URL' *
=+ ,
string- 3
.3 4
Concat4 :
(: ;
	Resources; D
.D E
BASE_URLE M
,M N
$strO X
)X Y
;Y Z
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
UsuarioServicioQ `
)` a
)a b
;b c
public 
static 
class 
SesionActual (
{ 	
public 
static 
DatosUsuario &
Usuario' .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
}   	
public"" 
static"" 
async"" 
Task""  
<""  !!
UsuarioLoginRespuesta""! 6
?""6 7
>""7 8
IniciarSesionAsync""9 K
(""K L
UsuarioLogin""L X
credenciales""Y e
)""e f
{## 	!
UsuarioLoginRespuesta$$ !
	resultado$$" +
=$$, -
new$$. 1
($$1 2
)$$2 3
;$$3 4
try%% 
{&& 
using'' 
('' 
var'' 

httpClient'' %
=''& '
new''( +

HttpClient'', 6
(''6 7
)''7 8
)''8 9
{(( 
var)) 
	contenido)) !
=))" #
new))$ '
StringContent))( 5
())5 6
JsonConvert))6 A
.))A B
SerializeObject))B Q
())Q R
credenciales))R ^
)))^ _
,))_ `
Encoding))a i
.))i j
UTF8))j n
,))n o
$str	))p �
)
))� �
;
))� �
var** 
	respuesta** !
=**" #
await**$ )

httpClient*** 4
.**4 5
	PostAsync**5 >
(**> ?
$"**? A
{**A B
	Resources**B K
.**K L
BASE_URL**L T
}**T U
$str**U a
"**a b
,**b c
	contenido**d m
)**m n
;**n o
string,, 
json,, 
=,,  !
await,," '
	respuesta,,( 1
.,,1 2
Content,,2 9
.,,9 :
ReadAsStringAsync,,: K
(,,K L
),,L M
;,,M N
	resultado-- 
=-- 
JsonConvert--  +
.--+ ,
DeserializeObject--, =
<--= >!
UsuarioLoginRespuesta--> S
>--S T
(--T U
json--U Y
)--Y Z
;--Z [
if// 
(// 
	resultado// !
!=//" $
null//% )
&&//* ,
!//- .
	resultado//. 7
.//7 8
Error//8 =
)//= >
{00 
SesionActual11 $
.11$ %
Usuario11% ,
=11- .
	resultado11/ 8
.118 9
Datos119 >
;11> ?
}22 
return44 
	resultado44 $
;44$ %
}55 
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 
_logger99 
.99 
LogFatal99  
(99  !
ex99! #
)99# $
;99$ %
	resultado:: 
.:: 
Estado::  
=::! "
(::# $
int::$ '
)::' (
HttpStatusCode::( 6
.::6 7
InternalServerError::7 J
;::J K
	resultado;; 
.;; 
Mensaje;; !
=;;" #
$";;$ &
$str;;& 4
{;;4 5
ex;;5 7
.;;7 8
Message;;8 ?
};;? @
";;@ A
;;;A B
}<< 
return>> 
	resultado>> 
;>> 
}?? 	
publicAA 
staticAA 
asyncAA 
TaskAA  
<AA  !
	RespuestaAA! *
>AA* +!
RegistrarUsuarioAsyncAA, A
(AAA B
UsuarioRegistroAAB Q
usuarioAAR Y
)AAY Z
{BB 	
	RespuestaCC 
	respuestaCC 
=CC  !
newCC" %
(CC& '
)CC' (
;CC( )
usingDD 
(DD 
varDD 

httpClientDD !
=DD" #
newDD$ '

HttpClientDD( 2
(DD2 3
)DD3 4
)DD4 5
{EE 
tryFF 
{GG 
varHH 
httpRequestMessageHH *
=HH+ ,
newHH- 0
HttpRequestMessageHH1 C
(HHC D
)HHD E
{II 
ContentJJ 
=JJ  !
newJJ" %
StringContentJJ& 3
(JJ3 4
JsonConvertJJ4 ?
.JJ? @
SerializeObjectJJ@ O
(JJO P
usuarioJJP W
)JJW X
,JJX Y
EncodingJJZ b
.JJb c
UTF8JJc g
,JJg h
$strJJi {
)JJ{ |
,JJ| }
MethodKK 
=KK  

HttpMethodKK! +
.KK+ ,
PostKK, 0
,KK0 1

RequestUriLL "
=LL# $
newLL% (
UriLL) ,
(LL, -
stringLL- 3
.LL3 4
ConcatLL4 :
(LL: ;
URLLL; >
,LL> ?
$strLL@ J
)LLJ K
)LLK L
}MM 
;MM 
HttpResponseMessageOO '
httpResponseMessageOO( ;
=OO< =
awaitOO> C

httpClientOOD N
.OON O
	SendAsyncOOO X
(OOX Y
httpRequestMessageOOY k
)OOk l
;OOl m
ifQQ 
(QQ 
httpResponseMessageQQ +
!=QQ, .
nullQQ/ 3
)QQ3 4
{RR 
stringSS 
jsonSS #
=SS$ %
awaitSS& +
httpResponseMessageSS, ?
.SS? @
ContentSS@ G
.SSG H
ReadAsStringAsyncSSH Y
(SSY Z
)SSZ [
;SS[ \
	respuestaTT !
=TT" #
JsonConvertTT$ /
.TT/ 0
DeserializeObjectTT0 A
<TTA B
	RespuestaTTB K
>TTK L
(TTL M
jsonTTM Q
)TTQ R
;TTR S
	respuestaUU !
.UU! "
CodigoUU" (
=UU) *
(UU+ ,
intUU, /
)UU/ 0
httpResponseMessageUU0 C
.UUC D

StatusCodeUUD N
;UUN O
}VV 
elseWW 
{XX 
	respuestaYY !
.YY! "
CodigoYY" (
=YY) *
(YY+ ,
intYY, /
)YY/ 0
HttpStatusCodeYY0 >
.YY> ?
InternalServerErrorYY? R
;YYR S
	respuestaZZ !
.ZZ! "
MensajeZZ" )
=ZZ* +
$strZZ, S
;ZZS T
}[[ 
}\\ 
catch]] 
(]]  
HttpRequestException]] + 
httpRequestException]], @
)]]@ A
{^^ 
	respuesta__ 
.__ 
Codigo__ $
=__% &
(__' (
int__( +
)__+ ,
HttpStatusCode__, :
.__: ;
InternalServerError__; N
;__N O
	respuesta`` 
.`` 
Mensaje`` %
=``& '
$"``( *
$str``* 8
{``8 9 
httpRequestException``9 M
.``M N
Message``N U
}``U V
"``V W
;``W X
_loggeraa 
.aa 
LogFatalaa $
(aa$ % 
httpRequestExceptionaa% 9
)aa9 :
;aa: ;
}cc 
catchdd 
(dd 
JsonExceptiondd $
jsonExceptiondd% 2
)dd2 3
{ee 
	respuestaff 
.ff 
Codigoff $
=ff% &
(ff' (
intff( +
)ff+ ,
HttpStatusCodeff, :
.ff: ;
InternalServerErrorff; N
;ffN O
	respuestagg 
.gg 
Mensajegg %
=gg& '
$"gg( *
$strgg* O
{ggO P
jsonExceptionggP ]
.gg] ^
Messagegg^ e
}gge f
"ggf g
;ggg h
_loggerhh 
.hh 
LogFatalhh $
(hh$ %
jsonExceptionhh% 2
)hh2 3
;hh3 4
}ii 
catchjj 
(jj 
	Exceptionjj  
exjj! #
)jj# $
{kk 
	respuestall 
.ll 
Codigoll $
=ll% &
(ll' (
intll( +
)ll+ ,
HttpStatusCodell, :
.ll: ;
InternalServerErrorll; N
;llN O
	respuestamm 
.mm 
Mensajemm %
=mm& '
$"mm( *
$strmm* <
{mm< =
exmm= ?
.mm? @
Messagemm@ G
}mmG H
"mmH I
;mmI J
_loggernn 
.nn 
LogFatalnn $
(nn$ %
exnn% '
)nn' (
;nn( )
}oo 
}pp 
returnqq 
	respuestaqq 
;qq 
}rr 	
publictt 
statictt 
asynctt 
Tasktt  
<tt  !
	Respuestatt! *
>tt* +
EnviarCodigoACorreott, ?
(tt? @
stringtt@ F
correottG M
)ttM N
{uu 	
	Respuestavv 
	respuestavv 
=vv  !
newvv" %
(vv% &
)vv& '
;vv' (
usingww 
(ww 
varww 

httpClientww !
=ww" #
newww$ '

HttpClientww( 2
(ww2 3
)ww3 4
)ww4 5
{xx 
tryyy 
{zz 
var{{ 
payload{{ 
={{  !
new{{" %
{{{& '
correo{{( .
={{/ 0
correo{{1 7
}{{8 9
;{{9 :
var|| 
	contenido|| !
=||" #
new||$ '
StringContent||( 5
(||5 6
JsonConvert||6 A
.||A B
SerializeObject||B Q
(||Q R
payload||R Y
)||Y Z
,||Z [
Encoding||\ d
.||d e
UTF8||e i
,||i j
$str||k }
)||} ~
;||~ 
var~~ 
httpResponseMessage~~ +
=~~, -
await~~. 3

httpClient~~4 >
.~~> ?
	PostAsync~~? H
(~~H I
string~~I O
.~~O P
Concat~~P V
(~~V W
URL~~W Z
,~~Z [
$str~~\ q
)~~q r
,~~r s
	contenido~~t }
)~~} ~
;~~~ 
if
�� 
(
�� !
httpResponseMessage
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� 
string
�� 
json
�� #
=
��$ %
await
��& +!
httpResponseMessage
��, ?
.
��? @
Content
��@ G
.
��G H
ReadAsStringAsync
��H Y
(
��Y Z
)
��Z [
;
��[ \
	respuesta
�� !
=
��" #
JsonConvert
��$ /
.
��/ 0
DeserializeObject
��0 A
<
��A B
	Respuesta
��B K
>
��K L
(
��L M
json
��M Q
)
��Q R
;
��R S
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0!
httpResponseMessage
��0 C
.
��C D

StatusCode
��D N
;
��N O
}
�� 
else
�� 
{
�� 
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
HttpStatusCode
��0 >
.
��> ?!
InternalServerError
��? R
;
��R S
	respuesta
�� !
.
��! "
Mensaje
��" )
=
��* +
$str
��, S
;
��S T
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* O
{
��O P
jsonException
��P ]
.
��] ^
Message
��^ e
}
��e f
"
��f g
;
��g h
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
	Respuesta
��! *
>
��* +4
&VerificarCodigoYCambiarContrasenaAsync
��, R
(
��R S'
SolicitudCambioContrasena
��S l
datos
��m r
)
��r s
{
�� 	
	Respuesta
�� 
	respuesta
�� 
=
��  !
new
��" %
(
��% &
)
��& '
;
��' (
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 
var
�� 
	contenido
�� !
=
��" #
new
��$ '
StringContent
��( 5
(
��5 6
JsonConvert
��6 A
.
��A B
SerializeObject
��B Q
(
��Q R
datos
��R W
)
��W X
,
��X Y
Encoding
��Z b
.
��b c
UTF8
��c g
,
��g h
$str
��i {
)
��{ |
;
��| }
var
�� 
httpResponse
�� $
=
��% &
await
��' ,

httpClient
��- 7
.
��7 8
	PostAsync
��8 A
(
��A B
$"
��B D
{
��D E
	Resources
��E N
.
��N O
BASE_URL
��O W
}
��W X
$str��X �
"��� �
,��� �
	contenido��� �
)��� �
;��� �
if
�� 
(
�� 
httpResponse
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
string
�� 
json
�� #
=
��$ %
await
��& +
httpResponse
��, 8
.
��8 9
Content
��9 @
.
��@ A
ReadAsStringAsync
��A R
(
��R S
)
��S T
;
��T U
	respuesta
�� !
=
��" #
JsonConvert
��$ /
.
��/ 0
DeserializeObject
��0 A
<
��A B
	Respuesta
��B K
>
��K L
(
��L M
json
��M Q
)
��Q R
;
��R S
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
httpResponse
��0 <
.
��< =

StatusCode
��= G
;
��G H
}
�� 
else
�� 
{
�� 
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
HttpStatusCode
��0 >
.
��> ?!
InternalServerError
��? R
;
��R S
	respuesta
�� !
.
��! "
Mensaje
��" )
=
��* +
$str
��, S
;
��S T
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* O
{
��O P
jsonException
��P ]
.
��] ^
Message
��^ e
}
��e f
"
��f g
;
��g h
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
PerfilPropio
��! -
?
��- .
>
��. / 
ObtenerPerfilAsync
��0 B
(
��B C
string
��C I
token
��J O
)
��O P
{
�� 	
PerfilPropio
�� 
?
�� 
	respuesta
�� #
=
��$ %
new
��& )
(
��) *
)
��* +
;
��+ ,
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H
System
��I O
.
��O P
Net
��P S
.
��S T
Http
��T X
.
��X Y
Headers
��Y `
.
��` a'
AuthenticationHeaderValue
��a z
(
��z {
$str��{ �
,��� �
token��� �
)��� �
;��� �
var
�� 
httpResponse
�� $
=
��% &
await
��' ,

httpClient
��- 7
.
��7 8
GetAsync
��8 @
(
��@ A
$"
��A C
{
��C D
	Resources
��D M
.
��M N
BASE_URL
��N V
}
��V W
$str
��W `
"
��` a
)
��a b
;
��b c
if
�� 
(
�� 
httpResponse
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
string
�� 
json
�� #
=
��$ %
await
��& +
httpResponse
��, 8
.
��8 9
Content
��9 @
.
��@ A
ReadAsStringAsync
��A R
(
��R S
)
��S T
;
��T U
	respuesta
�� !
=
��" #
JsonConvert
��$ /
.
��/ 0
DeserializeObject
��0 A
<
��A B
PerfilPropio
��B N
>
��N O
(
��O P
json
��P T
)
��T U
;
��U V
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
httpResponse
��0 <
.
��< =

StatusCode
��= G
;
��G H
}
�� 
else
�� 
{
�� 
	respuesta
�� !
=
��" #
new
��$ '
PerfilPropio
��( 4
{
�� 
Codigo
�� "
=
��# $
(
��% &
int
��& )
)
��) *
HttpStatusCode
��* 8
.
��8 9!
InternalServerError
��9 L
,
��L M
Mensaje
�� #
=
��$ %
$str
��& L
}
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* O
{
��O P
jsonException
��P ]
.
��] ^
Message
��^ e
}
��e f
"
��f g
;
��g h
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
	Respuesta
��! *
>
��* + 
BanearUsuarioAsync
��, >
(
��> ?
string
��? E
token
��F K
,
��K L
int
��M P!
idUsuarioRegistrado
��Q d
)
��d e
{
�� 	
var
�� 
respuestaFinal
�� 
=
��  
new
��! $
	Respuesta
��% .
(
��. /
)
��/ 0
;
��0 1
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H'
AuthenticationHeaderValue
��I b
(
��b c
$str
��c k
,
��k l
token
��m r
)
��r s
;
��s t
var
�� 
	solicitud
�� !
=
��" #
new
��$ '
SolicitudBaneo
��( 6
{
�� !
IdUsuarioRegistrado
�� +
=
��, -!
idUsuarioRegistrado
��. A
}
�� 
;
�� 
var
�� 
	contenido
�� !
=
��" #
new
��$ '
StringContent
��( 5
(
��5 6
JsonConvert
��6 A
.
��A B
SerializeObject
��B Q
(
��Q R
	solicitud
��R [
)
��[ \
,
��\ ]
Encoding
��^ f
.
��f g
UTF8
��g k
,
��k l
$str
��m 
)�� �
;��� �
var
�� 
httpResponse
�� $
=
��% &
await
��' ,

httpClient
��- 7
.
��7 8
	PostAsync
��8 A
(
��A B
$"
��B D
{
��D E
	Resources
��E N
.
��N O
BASE_URL
��O W
}
��W X
$str
��X l
"
��l m
,
��m n
	contenido
��o x
)
��x y
;
��y z
string
�� 
json
�� 
=
��  !
await
��" '
httpResponse
��( 4
.
��4 5
Content
��5 <
.
��< =
ReadAsStringAsync
��= N
(
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
!
�� 
httpResponse
�� %
.
��% &!
IsSuccessStatusCode
��& 9
)
��9 :
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
httpResponse
��8 D
.
��D E

StatusCode
��E O
;
��O P
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$"
��1 3
$str
��3 G
{
��G H
(
��H I
int
��I L
)
��L M
httpResponse
��M Y
.
��Y Z

StatusCode
��Z d
}
��d e
$str
��e f
{
��f g
httpResponse
��g s
.
��s t
ReasonPhrase��t �
}��� �
"��� �
;��� �
respuestaFinal
�� &
.
��& '
Error
��' ,
=
��- .
true
��/ 3
;
��3 4
return
�� 
respuestaFinal
�� -
;
��- .
}
�� 
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E
	Respuesta
��E N
>
��N O
(
��O P
json
��P T
)
��T U
;
��U V
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
Codigo
��@ F
;
��F G
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Error
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
Error
��< A
;
��A B
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Error
��' ,
=
��- .
true
��/ 3
;
��3 4
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
respuestaFinal
�� "
.
��" #
Error
��# (
=
��) *
true
��+ /
;
��/ 0
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
respuestaFinal
�� "
.
��" #
Error
��# (
=
��) *
true
��+ /
;
��/ 0
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
respuestaFinal
�� "
.
��" #
Error
��# (
=
��) *
true
��+ /
;
��/ 0
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
	Respuesta
��! *
>
��* +#
ActualizarAvatarAsync
��, A
(
��A B
string
��B H
token
��I N
,
��N O
string
��P V

rutaImagen
��W a
)
��a b
{
�� 	
	Respuesta
�� 
	respuesta
�� 
=
��  !
new
��" %
(
��% &
)
��& '
;
��' (
using
�� 
var
�� 

httpClient
��  
=
��! "
new
��# &

HttpClient
��' 1
(
��1 2
)
��2 3
;
��3 4
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D
System
��E K
.
��K L
Net
��L O
.
��O P
Http
��P T
.
��T U
Headers
��U \
.
��\ ]'
AuthenticationHeaderValue
��] v
(
��v w
$str
��w 
,�� �
token��� �
)��� �
;��� �
var
�� 
payload
�� 
=
�� 
new
�� !
{
�� 
datos
�� 
=
�� 
new
�� 
{
�� 

fotoPerfil
�� "
=
��# $

rutaImagen
��% /
}
�� 
}
�� 
;
�� 
var
�� 
	contenido
�� 
=
�� 
new
��  #
StringContent
��$ 1
(
��1 2
JsonConvert
��2 =
.
��= >
SerializeObject
��> M
(
��M N
payload
��N U
)
��U V
,
��V W
Encoding
��X `
.
��` a
UTF8
��a e
,
��e f
$str
��g y
)
��y z
;
��z {
var
�� 
url
�� 
=
�� 
$"
�� 
{
�� 
	Resources
�� &
.
��& '
BASE_URL
��' /
}
��/ 0
$str
��0 @
"
��@ A
;
��A B
var
�� !
httpResponseMessage
�� '
=
��( )
await
��* /

httpClient
��0 :
.
��: ;
PutAsync
��; C
(
��C D
url
��D G
,
��G H
	contenido
��I R
)
��R S
;
��S T
if
�� 
(
�� !
httpResponseMessage
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
string
�� 
json
�� 
=
��  !
await
��" '!
httpResponseMessage
��( ;
.
��; <
Content
��< C
.
��C D
ReadAsStringAsync
��D U
(
��U V
)
��V W
;
��W X
	respuesta
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
	Respuesta
��> G
>
��G H
(
��H I
json
��I M
)
��M N
??
��O Q
new
��R U
	Respuesta
��V _
(
��_ `
)
��` a
;
��a b
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,!
httpResponseMessage
��, ?
.
��? @

StatusCode
��@ J
;
��J K
}
�� 
else
�� 
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$str
��( O
;
��O P
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
Codigo
��  
=
��! "
(
��# $
int
��$ '
)
��' (
HttpStatusCode
��( 6
.
��6 7!
InternalServerError
��7 J
;
��J K
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
Codigo
��  
=
��! "
(
��# $
int
��$ '
)
��' (
HttpStatusCode
��( 6
.
��6 7!
InternalServerError
��7 J
;
��J K
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
Codigo
��  
=
��! "
(
��# $
int
��$ '
)
��' (
HttpStatusCode
��( 6
.
��6 7!
InternalServerError
��7 J
;
��J K
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
	Respuesta
��! *
>
��* +
ActualizarPerfil
��, <
(
��< =
string
��= C
token
��D I
,
��I J
UsuarioRegistro
��K Z
usuario
��[ b
)
��b c
{
�� 	
	Respuesta
�� 
	respuesta
�� 
=
��  !
new
��" %
(
��% &
)
��& '
;
��' (
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
�� 
System
�� "
.
��" #
Net
��# &
.
��& '
Http
��' +
.
��+ ,
Headers
��, 3
.
��3 4'
AuthenticationHeaderValue
��4 M
(
��M N
$str
��N V
,
��V W
token
��X ]
)
��] ^
;
��^ _
var
�� 
	contenido
�� !
=
��" #
new
��$ '
StringContent
��( 5
(
��5 6
JsonConvert
�� #
.
��# $
SerializeObject
��$ 3
(
��3 4
usuario
��4 ;
)
��; <
,
��< =
Encoding
��  
.
��  !
UTF8
��! %
,
��% &
$str
�� *
)
�� 
;
�� 
var
�� 

requestUri
�� "
=
��# $
new
��% (
Uri
��) ,
(
��, -
string
��- 3
.
��3 4
Concat
��4 :
(
��: ;
	Resources
��; D
.
��D E
BASE_URL
��E M
,
��M N
$str
��O Z
)
��Z [
)
��[ \
;
��\ ] 
HttpRequestMessage
�� & 
httpRequestMessage
��' 9
=
��: ;
new
��< ? 
HttpRequestMessage
��@ R
{
�� 
Method
�� 
=
��  

HttpMethod
��! +
.
��+ ,
Put
��, /
,
��/ 0

RequestUri
�� "
=
��# $

requestUri
��% /
,
��/ 0
Content
�� 
=
��  !
	contenido
��" +
}
�� 
;
�� !
HttpResponseMessage
�� '!
httpResponseMessage
��( ;
=
��< =
await
��> C

httpClient
��D N
.
��N O
	SendAsync
��O X
(
��X Y 
httpRequestMessage
��Y k
)
��k l
;
��l m
if
�� 
(
�� !
httpResponseMessage
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� 
string
�� 
json
�� #
=
��$ %
await
��& +!
httpResponseMessage
��, ?
.
��? @
Content
��@ G
.
��G H
ReadAsStringAsync
��H Y
(
��Y Z
)
��Z [
;
��[ \
	respuesta
�� !
=
��" #
JsonConvert
��$ /
.
��/ 0
DeserializeObject
��0 A
<
��A B
	Respuesta
��B K
>
��K L
(
��L M
json
��M Q
)
��Q R
;
��R S
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0!
httpResponseMessage
��0 C
.
��C D

StatusCode
��D N
;
��N O
}
�� 
else
�� 
{
�� 
	respuesta
�� !
.
��! "
Codigo
��" (
=
��) *
(
��+ ,
int
��, /
)
��/ 0
HttpStatusCode
��0 >
.
��> ?!
InternalServerError
��? R
;
��R S
	respuesta
�� !
.
��! "
Mensaje
��" )
=
��* +
$str
��, S
;
��S T
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* O
{
��O P
jsonException
��P ]
.
��] ^
Message
��^ e
}
��e f
"
��f g
;
��g h
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Codigo
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\PublicacionServicio.cs
	namespace 	
EduShare_Escritorio
 
. 
Servicio &
{ 
public 

class 
PublicacionServicio $
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
PublicacionServicioQ d
)d e
)e f
;f g
public 
static 
async 
Task  
<  !
	Respuesta! *
?* +
>+ ,
CrearDocumentoAsync- @
(@ A
stringA G
tokenH M
,M N
stringO U
tituloV \
,\ ]
string^ d
rutae i
)i j
{ 	
	Respuesta 
	respuesta 
=  !
new" %
(% &
)& '
;' (
using 
var 

httpClient  
=! "
new# &

HttpClient' 1
(1 2
)2 3
;3 4

httpClient 
. !
DefaultRequestHeaders ,
., -
Authorization- :
=; <
new= @
SystemA G
.G H
NetH K
.K L
HttpL P
.P Q
HeadersQ X
.X Y%
AuthenticationHeaderValueY r
(r s
$strs {
,{ |
token	} �
)
� �
;
� �
var   
	contenido   
=   
new   
{!! 
titulo"" 
,"" 
ruta## 
}$$ 
;$$ 
var&& 
json&& 
=&& 
JsonConvert&& "
.&&" #
SerializeObject&&# 2
(&&2 3
	contenido&&3 <
)&&< =
;&&= >
var'' 
content'' 
='' 
new'' 
StringContent'' +
(''+ ,
json'', 0
,''0 1
Encoding''2 :
.'': ;
UTF8''; ?
,''? @
$str''A S
)''S T
;''T U
try)) 
{** 
var++ 
response++ 
=++ 
await++ $

httpClient++% /
.++/ 0
	PostAsync++0 9
(++9 :
$"++: <
{++< =
	Resources++= F
.++F G
BASE_URL++G O
}++O P
$str++P g
"++g h
,++h i
content++j q
)++q r
;++r s
var,, 
body,, 
=,, 
await,,  
response,,! )
.,,) *
Content,,* 1
.,,1 2
ReadAsStringAsync,,2 C
(,,C D
),,D E
;,,E F
var.. 
	resultado.. 
=.. 
JsonConvert..  +
...+ ,
DeserializeObject.., =
<..= >
	Respuesta..> G
>..G H
(..H I
body..I M
)..M N
;..N O
	resultado// 
.// 
	Resultado// #
=//$ %
(//& '
int//' *
)//* +
response//+ 3
.//3 4

StatusCode//4 >
;//> ?
return00 
	resultado00  
;00  !
}11 
catch22 
(22  
HttpRequestException22 ' 
httpRequestException22( <
)22< =
{33 
	respuesta44 
.44 
	Resultado44 #
=44$ %
(44& '
int44' *
)44* +
HttpStatusCode44+ 9
.449 :
InternalServerError44: M
;44M N
	respuesta55 
.55 
Mensaje55 !
=55" #
$"55$ &
$str55& 4
{554 5 
httpRequestException555 I
.55I J
Message55J Q
}55Q R
"55R S
;55S T
_logger66 
.66 
LogFatal66  
(66  ! 
httpRequestException66! 5
)665 6
;666 7
}77 
catch88 
(88 
JsonException88  
jsonException88! .
)88. /
{99 
	respuesta:: 
.:: 
	Resultado:: #
=::$ %
(::& '
int::' *
)::* +
HttpStatusCode::+ 9
.::9 :
InternalServerError::: M
;::M N
	respuesta;; 
.;; 
Mensaje;; !
=;;" #
$";;$ &
$str;;& K
{;;K L
jsonException;;L Y
.;;Y Z
Message;;Z a
};;a b
";;b c
;;;c d
_logger<< 
.<< 
LogFatal<<  
(<<  !
jsonException<<! .
)<<. /
;<</ 0
}== 
catch>> 
(>> 
	Exception>> 
ex>> 
)>>  
{?? 
	respuesta@@ 
.@@ 
	Resultado@@ #
=@@$ %
(@@& '
int@@' *
)@@* +
HttpStatusCode@@+ 9
.@@9 :
InternalServerError@@: M
;@@M N
	respuestaAA 
.AA 
MensajeAA !
=AA" #
$"AA$ &
$strAA& 8
{AA8 9
exAA9 ;
.AA; <
MessageAA< C
}AAC D
"AAD E
;AAE F
_loggerBB 
.BB 
LogFatalBB  
(BB  !
exBB! #
)BB# $
;BB$ %
}CC 
returnDD 
	respuestaDD 
;DD 
}EE 	
publicGG 
staticGG 
asyncGG 
TaskGG  
<GG  !
	RespuestaGG! *
?GG* +
>GG+ ,!
CrearPublicacionAsyncGG- B
(GGB C
stringGGC I
tokenGGJ O
,GGO P
PublicacionGGQ \
datosGG] b
)GGb c
{HH 	
	RespuestaII 
	respuestaII 
=II  !
newII" %
(II% &
)II& '
;II' (
usingJJ 
varJJ 

httpClientJJ  
=JJ! "
newJJ# &

HttpClientJJ' 1
(JJ1 2
)JJ2 3
;JJ3 4

httpClientKK 
.KK !
DefaultRequestHeadersKK ,
.KK, -
AuthorizationKK- :
=KK; <
newKK= @
SystemKKA G
.KKG H
NetKKH K
.KKK L
HttpKKL P
.KKP Q
HeadersKKQ X
.KKX Y%
AuthenticationHeaderValueKKY r
(KKr s
$strKKs {
,KK{ |
token	KK} �
)
KK� �
;
KK� �
varMM 
jsonMM 
=MM 
JsonConvertMM "
.MM" #
SerializeObjectMM# 2
(MM2 3
datosMM3 8
)MM8 9
;MM9 :
varNN 
contentNN 
=NN 
newNN 
StringContentNN +
(NN+ ,
jsonNN, 0
,NN0 1
EncodingNN2 :
.NN: ;
UTF8NN; ?
,NN? @
$strNNA S
)NNS T
;NNT U
tryPP 
{QQ 
varRR 
responseRR 
=RR 
awaitRR $

httpClientRR% /
.RR/ 0
	PostAsyncRR0 9
(RR9 :
$"RR: <
{RR< =
	ResourcesRR= F
.RRF G
BASE_URLRRG O
}RRO P
$strRRP ]
"RR] ^
,RR^ _
contentRR` g
)RRg h
;RRh i
varSS 
bodySS 
=SS 
awaitSS  
responseSS! )
.SS) *
ContentSS* 1
.SS1 2
ReadAsStringAsyncSS2 C
(SSC D
)SSD E
;SSE F
varUU 
	resultadoUU 
=UU 
JsonConvertUU  +
.UU+ ,
DeserializeObjectUU, =
<UU= >
	RespuestaUU> G
>UUG H
(UUH I
bodyUUI M
)UUM N
;UUN O
	resultadoVV 
.VV 
	ResultadoVV #
=VV$ %
(VV& '
intVV' *
)VV* +
responseVV+ 3
.VV3 4

StatusCodeVV4 >
;VV> ?
returnWW 
	resultadoWW  
;WW  !
}XX 
catchYY 
(YY  
HttpRequestExceptionYY ' 
httpRequestExceptionYY( <
)YY< =
{ZZ 
	respuesta[[ 
.[[ 
	Resultado[[ #
=[[$ %
([[& '
int[[' *
)[[* +
HttpStatusCode[[+ 9
.[[9 :
InternalServerError[[: M
;[[M N
	respuesta\\ 
.\\ 
Mensaje\\ !
=\\" #
$"\\$ &
$str\\& 4
{\\4 5 
httpRequestException\\5 I
.\\I J
Message\\J Q
}\\Q R
"\\R S
;\\S T
_logger]] 
.]] 
LogFatal]]  
(]]  ! 
httpRequestException]]! 5
)]]5 6
;]]6 7
}^^ 
catch__ 
(__ 
JsonException__  
jsonException__! .
)__. /
{`` 
	respuestaaa 
.aa 
	Resultadoaa #
=aa$ %
(aa& '
intaa' *
)aa* +
HttpStatusCodeaa+ 9
.aa9 :
InternalServerErroraa: M
;aaM N
	respuestabb 
.bb 
Mensajebb !
=bb" #
$"bb$ &
$strbb& K
{bbK L
jsonExceptionbbL Y
.bbY Z
MessagebbZ a
}bba b
"bbb c
;bbc d
_loggercc 
.cc 
LogFatalcc  
(cc  !
jsonExceptioncc! .
)cc. /
;cc/ 0
}dd 
catchee 
(ee 
	Exceptionee 
exee 
)ee  
{ff 
	respuestagg 
.gg 
	Resultadogg #
=gg$ %
(gg& '
intgg' *
)gg* +
HttpStatusCodegg+ 9
.gg9 :
InternalServerErrorgg: M
;ggM N
	respuestahh 
.hh 
Mensajehh !
=hh" #
$"hh$ &
$strhh& 8
{hh8 9
exhh9 ;
.hh; <
Messagehh< C
}hhC D
"hhD E
;hhE F
_loggerii 
.ii 
LogFatalii  
(ii  !
exii! #
)ii# $
;ii$ %
}jj 
returnkk 
	respuestakk 
;kk 
}ll 	
publicoo 
staticoo 
asyncoo 
Taskoo  
<oo  ! 
RespuestaPublicacionoo! 5
<oo5 6
Listoo6 :
<oo: ;
Publicacionoo; F
>ooF G
>ooG H
>ooH I)
BuscarPublicacionesPorUsuarioooJ g
(oog h
intooh k
	idUsuarioool u
,oou v
stringoow }
token	oo~ �
)
oo� �
{pp 	
varqq 
respuestaFinalqq 
=qq  
newqq! $ 
RespuestaPublicacionqq% 9
<qq9 :
Listqq: >
<qq> ?
Publicacionqq? J
>qqJ K
>qqK L
(qqL M
)qqM N
;qqN O
usingss 
(ss 
varss 

httpClientss !
=ss" #
newss$ '

HttpClientss( 2
(ss2 3
)ss3 4
)ss4 5
{tt 
tryuu 
{vv 

httpClientww 
.ww !
DefaultRequestHeadersww 4
.ww4 5
Authorizationww5 B
=wwC D
newxx 
Systemxx "
.xx" #
Netxx# &
.xx& '
Httpxx' +
.xx+ ,
Headersxx, 3
.xx3 4%
AuthenticationHeaderValuexx4 M
(xxM N
$strxxN V
,xxV W
tokenxxX ]
)xx] ^
;xx^ _
varzz 
httpResponsezz $
=zz% &
awaitzz' ,

httpClientzz- 7
.zz7 8
GetAsynczz8 @
(zz@ A
$"zzA C
{zzC D
	ResourceszzD M
.zzM N
BASE_URLzzN V
}zzV W
$strzzW m
{zzm n
	idUsuariozzn w
}zzw x
"zzx y
)zzy z
;zzz {
string{{ 
json{{ 
={{  !
await{{" '
httpResponse{{( 4
.{{4 5
Content{{5 <
.{{< =
ReadAsStringAsync{{= N
({{N O
){{O P
;{{P Q
var}} 
respuestaApi}} $
=}}% &
JsonConvert}}' 2
.}}2 3
DeserializeObject}}3 D
<}}D E 
RespuestaPublicacion}}E Y
<}}Y Z
List}}Z ^
<}}^ _
Publicacion}}_ j
>}}j k
>}}k l
>}}l m
(}}m n
json}}n r
)}}r s
;}}s t
if 
( 
respuestaApi $
!=% '
null( ,
), -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Publicacion
��m x
>
��x y
(
��y z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Publicacion
��8 C
>
��C D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 
	Exception
�� '
ex
��( *
)
��* +
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !"
RespuestaPublicacion
��! 5
<
��5 6
List
��6 :
<
��: ;
Publicacion
��; F
>
��F G
>
��G H
>
��H I)
ObtenerPublicacionesPropias
��J e
(
��e f
string
��f l
token
��m r
)
��r s
{
�� 	
var
�� 
respuestaFinal
�� 
=
��  
new
��! $"
RespuestaPublicacion
��% 9
<
��9 :
List
��: >
<
��> ?
Publicacion
��? J
>
��J K
>
��K L
(
��L M
)
��M N
;
��N O
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
�� 
System
�� "
.
��" #
Net
��# &
.
��& '
Http
��' +
.
��+ ,
Headers
��, 3
.
��3 4'
AuthenticationHeaderValue
��4 M
(
��M N
$str
��N V
,
��V W
token
��X ]
)
��] ^
;
��^ _
var
�� 
httpResponse
�� $
=
��% &
await
��' ,

httpClient
��- 7
.
��7 8
GetAsync
��8 @
(
��@ A
$"
��A C
{
��C D
	Resources
��D M
.
��M N
BASE_URL
��N V
}
��V W
$str
��W g
"
��g h
)
��h i
;
��i j
string
�� 
json
�� 
=
��  !
await
��" '
httpResponse
��( 4
.
��4 5
Content
��5 <
.
��< =
ReadAsStringAsync
��= N
(
��N O
)
��O P
;
��P Q
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E"
RespuestaPublicacion
��E Y
<
��Y Z
List
��Z ^
<
��^ _
Publicacion
��_ j
>
��j k
>
��k l
>
��l m
(
��m n
json
��n r
)
��r s
;
��s t
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Publicacion
��m x
>
��x y
(
��y z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Publicacion
��8 C
>
��C D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 
	Exception
�� '
ex
��( *
)
��* +
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
	Respuesta
��! *
?
��* +
>
��+ ,&
EliminarPublicacionAsync
��- E
(
��E F
string
��F L
token
��M R
,
��R S
int
��T W
idPublicacion
��X e
)
��e f
{
�� 	
	Respuesta
�� 
	respuesta
�� 
=
��  !
new
��" %
(
��% &
)
��& '
;
��' (
using
�� 
var
�� 

httpClient
��  
=
��! "
new
��# &

HttpClient
��' 1
(
��1 2
)
��2 3
;
��3 4

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� ,
.
��, -
Authorization
��- :
=
��; <
new
�� 
System
�� 
.
�� 
Net
�� 
.
�� 
Http
�� #
.
��# $
Headers
��$ +
.
��+ ,'
AuthenticationHeaderValue
��, E
(
��E F
$str
��F N
,
��N O
token
��P U
)
��U V
;
��V W
try
�� 
{
�� 
var
�� 
response
�� 
=
�� 
await
�� $

httpClient
��% /
.
��/ 0
DeleteAsync
��0 ;
(
��; <
$"
��< >
{
��> ?
	Resources
��? H
.
��H I
BASE_URL
��I Q
}
��Q R
$str
��R `
{
��` a
idPublicacion
��a n
}
��n o
"
��o p
)
��p q
;
��q r
var
�� 
body
�� 
=
�� 
await
��  
response
��! )
.
��) *
Content
��* 1
.
��1 2
ReadAsStringAsync
��2 C
(
��C D
)
��D E
;
��E F
var
�� 
	resultado
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
	Respuesta
��> G
>
��G H
(
��H I
body
��I M
)
��M N
;
��N O
	resultado
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
response
��+ 3
.
��3 4

StatusCode
��4 >
;
��> ?
return
�� 
	resultado
��  
;
��  !
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %"
RespuestaPublicacion
��% 9
<
��9 :
List
��: >
<
��> ?
Publicacion
��? J
>
��J K
>
��K L
>
��L M"
ObtenerPublicaciones
��N b
(
��b c
)
��c d
{
�� 
var
�� 
respuestaFinal
�� "
=
��# $
new
��% ("
RespuestaPublicacion
��) =
<
��= >
List
��> B
<
��B C
Publicacion
��C N
>
��N O
>
��O P
(
��P Q
)
��Q R
;
��R S
using
�� 
(
�� 
var
�� 

httpClient
�� %
=
��& '
new
��( +

HttpClient
��, 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
try
�� 
{
�� 
var
�� 
httpResponse
�� (
=
��) *
await
��+ 0

httpClient
��1 ;
.
��; <
GetAsync
��< D
(
��D E
$"
��E G
{
��G H
	Resources
��H Q
.
��Q R
BASE_URL
��R Z
}
��Z [
$str
��[ h
"
��h i
)
��i j
;
��j k
string
�� 
json
�� #
=
��$ %
await
��& +
httpResponse
��, 8
.
��8 9
Content
��9 @
.
��@ A
ReadAsStringAsync
��A R
(
��R S
)
��S T
;
��T U
var
�� 
respuestaApi
�� (
=
��) *
JsonConvert
��+ 6
.
��6 7
DeserializeObject
��7 H
<
��H I"
RespuestaPublicacion
��I ]
<
��] ^
List
��^ b
<
��b c
Publicacion
��c n
>
��n o
>
��o p
>
��p q
(
��q r
json
��r v
)
��v w
;
��w x
if
�� 
(
�� 
respuestaApi
�� (
!=
��) +
null
��, 0
)
��0 1
{
�� 
respuestaFinal
�� *
.
��* +
	Resultado
��+ 4
=
��5 6
respuestaApi
��7 C
.
��C D
	Resultado
��D M
;
��M N
respuestaFinal
�� *
.
��* +
Mensaje
��+ 2
=
��3 4
respuestaApi
��5 A
.
��A B
Mensaje
��B I
;
��I J
respuestaFinal
�� *
.
��* +
Datos
��+ 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
==
��J L
$num
��M P
?
��Q R
respuestaApi
��S _
.
��_ `
Datos
��` e
:
��f g
new
��h k
List
��l p
<
��p q
Publicacion
��q |
>
��| }
(
��} ~
)
��~ 
;�� �
}
�� 
else
�� 
{
�� 
respuestaFinal
�� *
.
��* +
	Resultado
��+ 4
=
��5 6
(
��7 8
int
��8 ;
)
��; <
HttpStatusCode
��< J
.
��J K!
InternalServerError
��K ^
;
��^ _
respuestaFinal
�� *
.
��* +
Mensaje
��+ 2
=
��3 4
$str
��5 e
;
��e f
respuestaFinal
�� *
.
��* +
Datos
��+ 0
=
��1 2
new
��3 6
List
��7 ;
<
��; <
Publicacion
��< G
>
��G H
(
��H I
)
��I J
;
��J K
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� /"
httpRequestException
��0 D
)
��D E
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$"
��1 3
$str
��3 A
{
��A B"
httpRequestException
��B V
.
��V W
Message
��W ^
}
��^ _
"
��_ `
;
��` a
_logger
�� 
.
��  
LogFatal
��  (
(
��( )"
httpRequestException
��) =
)
��= >
;
��> ?
}
�� 
catch
�� 
(
�� 
JsonException
�� (
jsonException
��) 6
)
��6 7
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$"
��1 3
$str
��3 X
{
��X Y
jsonException
��Y f
.
��f g
Message
��g n
}
��n o
"
��o p
;
��p q
_logger
�� 
.
��  
LogFatal
��  (
(
��( )
jsonException
��) 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$"
��1 3
$str
��3 E
{
��E F
ex
��F H
.
��H I
Message
��I P
}
��P Q
"
��Q R
;
��R S
_logger
�� 
.
��  
LogFatal
��  (
(
��( )
ex
��) +
)
��+ ,
;
��, -
}
�� 
}
�� 
return
�� 
respuestaFinal
�� %
;
��% &
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !"
RespuestaPublicacion
��! 5
<
��5 6
List
��6 :
<
��: ;
Publicacion
��; F
>
��F G
>
��G H
>
��H I,
ObtenerPublicacionesPendientes
��J h
(
��h i
string
��i o
token
��p u
)
��u v
{
�� 	
var
�� 
respuestaFinal
�� 
=
��  
new
��! $"
RespuestaPublicacion
��% 9
<
��9 :
List
��: >
<
��> ?
Publicacion
��? J
>
��J K
>
��K L
(
��L M
)
��M N
;
��N O
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H'
AuthenticationHeaderValue
��I b
(
��b c
$str
��c k
,
��k l
token
��m r
)
��r s
;
��s t
var
�� 
httpResponse
�� $
=
��% &
await
��' ,

httpClient
��- 7
.
��7 8
GetAsync
��8 @
(
��@ A
$"
��A C
{
��C D
	Resources
��D M
.
��M N
BASE_URL
��N V
}
��V W
$str
��W o
"
��o p
)
��p q
;
��q r
string
�� 
json
�� 
=
��  !
await
��" '
httpResponse
��( 4
.
��4 5
Content
��5 <
.
��< =
ReadAsStringAsync
��= N
(
��N O
)
��O P
;
��P Q
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E"
RespuestaPublicacion
��E Y
<
��Y Z
List
��Z ^
<
��^ _
Publicacion
��_ j
>
��j k
>
��k l
>
��l m
(
��m n
json
��n r
)
��r s
;
��s t
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Publicacion
��m x
>
��x y
(
��y z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Publicacion
��8 C
>
��C D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !"
RespuestaPublicacion
��! 5
<
��5 6
List
��6 :
<
��: ;
Publicacion
��; F
>
��F G
>
��G H
>
��H I!
ObtenerPorCategoria
��J ]
(
��] ^
int
��^ a
categoriaId
��b m
)
��m n
{
�� 
var
�� 
respuestaFinal
�� "
=
��# $
new
��% ("
RespuestaPublicacion
��) =
<
��= >
List
��> B
<
��B C
Publicacion
��C N
>
��N O
>
��O P
(
��P Q
)
��Q R
;
��R S
using
�� 
(
�� 
var
�� 

httpClient
�� %
=
��& '
new
��( +

HttpClient
��, 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
try
�� 
{
�� 
var
�� 
httpResponse
�� (
=
��) *
await
��+ 0

httpClient
��1 ;
.
��; <
GetAsync
��< D
(
��D E
$"
��E G
{
��G H
	Resources
��H Q
.
��Q R
BASE_URL
��R Z
}
��Z [
$str
��[ s
{
��s t
categoriaId
��t 
}�� �
"��� �
)��� �
;��� �
string
�� 
json
�� 
=
��  !
await
��" '
httpResponse
��( 4
.
��4 5
Content
��5 <
.
��< =
ReadAsStringAsync
��= N
(
��N O
)
��O P
;
��P Q
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E"
RespuestaPublicacion
��E Y
<
��Y Z
List
��Z ^
<
��^ _
Publicacion
��_ j
>
��j k
>
��k l
>
��l m
(
��m n
json
��n r
)
��r s
;
��s t
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Publicacion
��m x
>
��x y
(
��y z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Publicacion
��8 C
>
��C D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� %
;
��% &
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %"
RespuestaPublicacion
��% 9
<
��9 :
List
��: >
<
��> ?
Publicacion
��? J
>
��J K
>
��K L
>
��L M
ObtenerPorRama
��N \
(
��\ ]
int
��] `
ramaId
��a g
)
��g h
{
�� 
var
�� 
respuestaFinal
�� "
=
��# $
new
��% ("
RespuestaPublicacion
��) =
<
��= >
List
��> B
<
��B C
Publicacion
��C N
>
��N O
>
��O P
(
��P Q
)
��Q R
;
��R S
using
�� 
(
�� 
var
�� 

httpClient
�� %
=
��& '
new
��( +

HttpClient
��, 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
try
�� 
{
�� 
var
�� 
httpResponse
�� (
=
��) *
await
��+ 0

httpClient
��1 ;
.
��; <
GetAsync
��< D
(
��D E
$"
��E G
{
��G H
	Resources
��H Q
.
��Q R
BASE_URL
��R Z
}
��Z [
$str
��[ n
{
��n o
ramaId
��o u
}
��u v
"
��v w
)
��w x
;
��x y
string
�� 
json
�� 
=
��  !
await
��" '
httpResponse
��( 4
.
��4 5
Content
��5 <
.
��< =
ReadAsStringAsync
��= N
(
��N O
)
��O P
;
��P Q
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E"
RespuestaPublicacion
��E Y
<
��Y Z
List
��Z ^
<
��^ _
Publicacion
��_ j
>
��j k
>
��k l
>
��l m
(
��m n
json
��n r
)
��r s
;
��s t
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Publicacion
��m x
>
��x y
(
��y z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Publicacion
��8 C
>
��C D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� %
;
��% &
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %"
RespuestaPublicacion
��% 9
<
��9 :
List
��: >
<
��> ?
Publicacion
��? J
>
��J K
>
��K L
>
��L M&
ObtenerPorNivelEducativo
��N f
(
��f g
string
��g m
nivelEducativo
��n |
)
��| }
{
�� 
var
�� 
respuestaFinal
�� "
=
��# $
new
��% ("
RespuestaPublicacion
��) =
<
��= >
List
��> B
<
��B C
Publicacion
��C N
>
��N O
>
��O P
(
��P Q
)
��Q R
;
��R S
using
�� 
(
�� 
var
�� 

httpClient
�� %
=
��& '
new
��( +

HttpClient
��, 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
try
�� 
{
�� 
if
�� 
(
�� 
nivelEducativo
�� *
!=
��+ -
$str
��. <
&&
��= ?
nivelEducativo
��@ N
!=
��O Q
$str
��R _
)
��_ `
{
�� 
respuestaFinal
�� *
.
��* +
	Resultado
��+ 4
=
��5 6
(
��7 8
int
��8 ;
)
��; <
HttpStatusCode
��< J
.
��J K

BadRequest
��K U
;
��U V
respuestaFinal
�� *
.
��* +
Mensaje
��+ 2
=
��3 4
$str
��5 O
;
��O P
return
�� "
respuestaFinal
��# 1
;
��1 2
}
�� 
var
�� 
httpResponse
�� (
=
��) *
await
��+ 0

httpClient
��1 ;
.
��; <
GetAsync
��< D
(
��D E
$"
��E G
{
��G H
	Resources
��H Q
.
��Q R
BASE_URL
��R Z
}
��Z [
$str
��[ o
{
��o p
nivelEducativo
��p ~
}
��~ 
"�� �
)��� �
;��� �
string
�� 
json
�� 
=
��  !
await
��" '
httpResponse
��( 4
.
��4 5
Content
��5 <
.
��< =
ReadAsStringAsync
��= N
(
��N O
)
��O P
;
��P Q
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E"
RespuestaPublicacion
��E Y
<
��Y Z
List
��Z ^
<
��^ _
Publicacion
��_ j
>
��j k
>
��k l
>
��l m
(
��m n
json
��n r
)
��r s
;
��s t
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Publicacion
��m x
>
��x y
(
��y z
)
��z {
;
��{ |
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Publicacion
��8 C
>
��C D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� %
;
��% &
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %
RespuestaSimple
��% 4
>
��4 5
DarLikeAsync
��6 B
(
��B C
string
��C I
token
��J O
,
��O P
int
��Q T
idPublicacion
��U b
)
��b c
{
�� 
RespuestaSimple
�� 
	respuesta
��  )
=
��* +
new
��, /
(
��/ 0
)
��0 1
;
��1 2
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D'
AuthenticationHeaderValue
��E ^
(
��^ _
$str
��_ g
,
��g h
token
��i n
)
��n o
;
��o p
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4
	PostAsync
��4 =
(
��= >
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K P
"
��P Q
,
��Q R
null
�� 
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� &
.
��& '
DeserializeObject
��' 8
<
��8 9
RespuestaSimple
��9 H
>
��H I
(
��I J
body
��J N
)
��N O
??
��P R
	respuesta
��S \
;
��\ ]
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %
RespuestaSimple
��% 4
>
��4 5
QuitarLikeAsync
��6 E
(
��E F
string
��F L
token
��M R
,
��R S
int
��T W
idPublicacion
��X e
)
��e f
{
�� 
RespuestaSimple
�� 
	respuesta
��  )
=
��* +
new
��, /
(
��/ 0
)
��0 1
;
��1 2
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D'
AuthenticationHeaderValue
��E ^
(
��^ _
$str
��_ g
,
��g h
token
��i n
)
��n o
;
��o p
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4
DeleteAsync
��4 ?
(
��? @
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K P
"
��P Q
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� &
.
��& '
DeserializeObject
��' 8
<
��8 9
RespuestaSimple
��9 H
>
��H I
(
��I J
body
��J N
)
��N O
??
��P R
	respuesta
��S \
;
��\ ]
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
RespuestaLike
��! .
>
��. / 
VerificarLikeAsync
��0 B
(
��B C
string
��C I
token
��J O
,
��O P
int
��Q T
idPublicacion
��U b
)
��b c
{
�� 
var
�� 
	respuesta
�� 
=
�� 
new
��  #
RespuestaLike
��$ 1
(
��1 2
)
��2 3
;
��3 4
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D'
AuthenticationHeaderValue
��E ^
(
��^ _
$str
��_ g
,
��g h
token
��i n
)
��n o
;
��o p
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4
GetAsync
��4 <
(
��< =
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K P
"
��P Q
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� "
.
��" #
DeserializeObject
��# 4
<
��4 5
RespuestaLike
��5 B
>
��B C
(
��C D
body
��D H
)
��H I
??
��J L
	respuesta
��M V
;
��V W
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %
RespuestaSimple
��% 4
>
��4 5)
RegistrarVisualizacionAsync
��6 Q
(
��Q R
int
��R U
idPublicacion
��V c
)
��c d
{
�� 
RespuestaSimple
�� 
	respuesta
��  )
=
��* +
new
��, /
(
��/ 0
)
��0 1
;
��1 2
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4
	PostAsync
��4 =
(
��= >
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K Q
"
��Q R
,
��R S
null
�� 
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� &
.
��& '
DeserializeObject
��' 8
<
��8 9
RespuestaSimple
��9 H
>
��H I
(
��I J
body
��J N
)
��N O
??
��P R
	respuesta
��S \
;
��\ ]
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %
RespuestaSimple
��% 4
>
��4 5$
RegistrarDescargaAsync
��6 L
(
��L M
string
��M S
token
��T Y
,
��Y Z
int
��[ ^
idPublicacion
��_ l
)
��l m
{
�� 
RespuestaSimple
�� 
	respuesta
��  )
=
��* +
new
��, /
(
��/ 0
)
��0 1
;
��1 2
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D'
AuthenticationHeaderValue
��E ^
(
��^ _
$str
��_ g
,
��g h
token
��i n
)
��n o
;
��o p
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4
	PostAsync
��4 =
(
��= >
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K T
"
��T U
,
��U V
null
�� 
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� &
.
��& '
DeserializeObject
��' 8
<
��8 9
RespuestaSimple
��9 H
>
��H I
(
��I J
body
��J N
)
��N O
??
��P R
	respuesta
��S \
;
��\ ]
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %
RespuestaSimple
��% 4
>
��4 5%
AprobarPublicacionAsync
��6 M
(
��M N
string
��N T
token
��U Z
,
��Z [
int
��\ _
idPublicacion
��` m
)
��m n
{
�� 
RespuestaSimple
�� 
	respuesta
��  )
=
��* +
new
��, /
(
��/ 0
)
��0 1
;
��1 2
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D'
AuthenticationHeaderValue
��E ^
(
��^ _
$str
��_ g
,
��g h
token
��i n
)
��n o
;
��o p
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4

PatchAsync
��4 >
(
��> ?
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K S
"
��S T
,
��T U
null
�� 
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� &
.
��& '
DeserializeObject
��' 8
<
��8 9
RespuestaSimple
��9 H
>
��H I
(
��I J
body
��J N
)
��N O
??
��P R
	respuesta
��S \
;
��\ ]
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
public
�� 
static
�� 
async
�� 
Task
��  $
<
��$ %
RespuestaSimple
��% 4
>
��4 5&
RechazarPublicacionAsync
��6 N
(
��N O
string
��O U
token
��V [
,
��[ \
int
��] `
idPublicacion
��a n
)
��n o
{
�� 
RespuestaSimple
�� 
	respuesta
��  )
=
��* +
new
��, /
(
��/ 0
)
��0 1
;
��1 2
using
�� 
var
�� 

httpClient
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
;
��7 8

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Authorization
��1 >
=
��? @
new
��A D'
AuthenticationHeaderValue
��E ^
(
��^ _
$str
��_ g
,
��g h
token
��i n
)
��n o
;
��o p
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (

httpClient
��) 3
.
��3 4

PatchAsync
��4 >
(
��> ?
$"
�� 
{
�� 
	Resources
�� $
.
��$ %
BASE_URL
��% -
}
��- .
$str
��. <
{
��< =
idPublicacion
��= J
}
��J K
$str
��K T
"
��T U
,
��U V
null
�� 
)
�� 
;
�� 
var
�� 
body
�� 
=
�� 
await
�� $
response
��% -
.
��- .
Content
��. 5
.
��5 6
ReadAsStringAsync
��6 G
(
��G H
)
��H I
;
��I J
return
�� 
JsonConvert
�� &
.
��& '
DeserializeObject
��' 8
<
��8 9
RespuestaSimple
��9 H
>
��H I
(
��I J
body
��J N
)
��N O
??
��P R
	respuesta
��S \
;
��\ ]
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 
}
�� 	
}�� ��
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\PerfilServicio.cs
	namespace 	
EduShare_Escritorio
 
. 
Servicio &
{ 
public 

class 
PerfilServicio 
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
CatalogosServicioQ b
)b c
)c d
;d e
public 
static 
async 
Task  
<  !
RespuestaPerfil! 0
<0 1
List1 5
<5 6
Perfil6 <
>< =
>= >
>> ?
BuscarPerfiles@ N
(N O
stringO U
tokenV [
)[ \
{ 	
var 
respuestaFinal 
=  
new! $
RespuestaPerfil% 4
<4 5
List5 9
<9 :
Perfil: @
>@ A
>A B
(B C
)C D
;D E
using 
( 
var 

httpClient !
=" #
new$ '

HttpClient( 2
(2 3
)3 4
)4 5
{ 
try 
{ 

httpClient 
. !
DefaultRequestHeaders 4
.4 5
Authorization5 B
=C D
newE H
SystemI O
.O P
NetP S
.S T
HttpT X
.X Y
HeadersY `
.` a%
AuthenticationHeaderValuea z
(z {
$str	{ �
,
� �
token
� �
)
� �
;
� �
var 
httpResponse $
=% &
await' ,

httpClient- 7
.7 8
GetAsync8 @
(@ A
$"A C
{C D
	ResourcesD M
.M N
BASE_URLN V
}V W
$strW ]
"] ^
)^ _
;_ `
string   
json   
=    !
await  " '
httpResponse  ( 4
.  4 5
Content  5 <
.  < =
ReadAsStringAsync  = N
(  N O
)  O P
;  P Q
var!! 
respuestaApi!! $
=!!% &
JsonConvert!!' 2
.!!2 3
DeserializeObject!!3 D
<!!D E
RespuestaPerfil!!E T
<!!T U
List!!U Y
<!!Y Z
Perfil!!Z `
>!!` a
>!!a b
>!!b c
(!!c d
json!!d h
)!!h i
;!!i j
if## 
(## 
respuestaApi## $
!=##% '
null##( ,
)##, -
{$$ 
respuestaFinal%% &
.%%& '
	Resultado%%' 0
=%%1 2
respuestaApi%%3 ?
.%%? @
	Resultado%%@ I
;%%I J
respuestaFinal&& &
.&&& '
Mensaje&&' .
=&&/ 0
respuestaApi&&1 =
.&&= >
Mensaje&&> E
;&&E F
respuestaFinal'' &
.''& '
Datos''' ,
=''- .
respuestaApi''/ ;
.''; <
	Resultado''< E
==''F H
$num''I L
?''M N
respuestaApi''O [
.''[ \
Datos''\ a
:''b c
new''d g
List''h l
<''l m
Perfil''m s
>''s t
(''t u
)''u v
;''v w
}(( 
else)) 
{** 
respuestaFinal++ &
.++& '
	Resultado++' 0
=++1 2
(++3 4
int++4 7
)++7 8
HttpStatusCode++8 F
.++F G
InternalServerError++G Z
;++Z [
respuestaFinal,, &
.,,& '
Mensaje,,' .
=,,/ 0
$str,,1 a
;,,a b
respuestaFinal-- &
.--& '
Datos--' ,
=--- .
new--/ 2
List--3 7
<--7 8
Perfil--8 >
>--> ?
(--? @
)--@ A
;--A B
}.. 
}// 
catch00 
(00  
HttpRequestException00 + 
httpRequestException00, @
)00@ A
{11 
respuestaFinal22 "
.22" #
	Resultado22# ,
=22- .
(22/ 0
int220 3
)223 4
HttpStatusCode224 B
.22B C
InternalServerError22C V
;22V W
respuestaFinal33 "
.33" #
Mensaje33# *
=33+ ,
$"33- /
$str33/ =
{33= > 
httpRequestException33> R
.33R S
Message33S Z
}33Z [
"33[ \
;33\ ]
_logger44 
.44 
LogFatal44 $
(44$ % 
httpRequestException44% 9
)449 :
;44: ;
}55 
catch77 
(77 
	Exception77  
ex77! #
)77# $
{88 
respuestaFinal99 "
.99" #
	Resultado99# ,
=99- .
(99/ 0
int990 3
)993 4
HttpStatusCode994 B
.99B C
InternalServerError99C V
;99V W
respuestaFinal:: "
.::" #
Mensaje::# *
=::+ ,
$"::- /
$str::/ A
{::A B
ex::B D
.::D E
Message::E L
}::L M
"::M N
;::N O
_logger;; 
.;; 
LogFatal;; $
(;;$ %
ex;;% '
);;' (
;;;( )
}<< 
}== 
return?? 
respuestaFinal?? !
;??! "
}@@ 	
publicBB 
staticBB 
asyncBB 
TaskBB  
<BB  !
RespuestaPerfilBB! 0
<BB0 1
PerfilBB1 7
>BB7 8
>BB8 9
BuscarPerfilPorIdBB: K
(BBK L
intBBL O
	idUsuarioBBP Y
,BBY Z
stringBB[ a
tokenBBb g
)BBg h
{CC 	
varDD 
respuestaFinalDD 
=DD  
newDD! $
RespuestaPerfilDD% 4
<DD4 5
PerfilDD5 ;
>DD; <
(DD< =
)DD= >
;DD> ?
usingFF 
(FF 
varFF 

httpClientFF !
=FF" #
newFF$ '

HttpClientFF( 2
(FF2 3
)FF3 4
)FF4 5
{GG 
tryHH 
{II 

httpClientJJ 
.JJ !
DefaultRequestHeadersJJ 4
.JJ4 5
AuthorizationJJ5 B
=JJC D
newKK 
SystemKK "
.KK" #
NetKK# &
.KK& '
HttpKK' +
.KK+ ,
HeadersKK, 3
.KK3 4%
AuthenticationHeaderValueKK4 M
(KKM N
$strKKN V
,KKV W
tokenKKX ]
)KK] ^
;KK^ _
varMM 
httpResponseMM $
=MM% &
awaitMM' ,

httpClientMM- 7
.MM7 8
GetAsyncMM8 @
(MM@ A
$"MMA C
{MMC D
	ResourcesMMD M
.MMM N
BASE_URLMMN V
}MMV W
$strMMW ^
{MM^ _
	idUsuarioMM_ h
}MMh i
"MMi j
)MMj k
;MMk l
stringNN 
jsonNN 
=NN  !
awaitNN" '
httpResponseNN( 4
.NN4 5
ContentNN5 <
.NN< =
ReadAsStringAsyncNN= N
(NNN O
)NNO P
;NNP Q
varPP 
respuestaApiPP $
=PP% &
JsonConvertPP' 2
.PP2 3
DeserializeObjectPP3 D
<PPD E
RespuestaPerfilPPE T
<PPT U
PerfilPPU [
>PP[ \
>PP\ ]
(PP] ^
jsonPP^ b
)PPb c
;PPc d
ifRR 
(RR 
respuestaApiRR $
!=RR% '
nullRR( ,
)RR, -
{SS 
respuestaFinalTT &
.TT& '
	ResultadoTT' 0
=TT1 2
respuestaApiTT3 ?
.TT? @
	ResultadoTT@ I
;TTI J
respuestaFinalUU &
.UU& '
MensajeUU' .
=UU/ 0
respuestaApiUU1 =
.UU= >
MensajeUU> E
;UUE F
respuestaFinalVV &
.VV& '
DatosVV' ,
=VV- .
respuestaApiVV/ ;
.VV; <
	ResultadoVV< E
==VVF H
$numVVI L
?VVM N
respuestaApiVVO [
.VV[ \
DatosVV\ a
:VVb c
nullVVd h
;VVh i
}WW 
elseXX 
{YY 
respuestaFinalZZ &
.ZZ& '
	ResultadoZZ' 0
=ZZ1 2
(ZZ3 4
intZZ4 7
)ZZ7 8
HttpStatusCodeZZ8 F
.ZZF G
InternalServerErrorZZG Z
;ZZZ [
respuestaFinal[[ &
.[[& '
Mensaje[[' .
=[[/ 0
$str[[1 a
;[[a b
respuestaFinal\\ &
.\\& '
Datos\\' ,
=\\- .
null\\/ 3
;\\3 4
}]] 
}^^ 
catch__ 
(__  
HttpRequestException__ + 
httpRequestException__, @
)__@ A
{`` 
respuestaFinalaa "
.aa" #
	Resultadoaa# ,
=aa- .
(aa/ 0
intaa0 3
)aa3 4
HttpStatusCodeaa4 B
.aaB C
InternalServerErroraaC V
;aaV W
respuestaFinalbb "
.bb" #
Mensajebb# *
=bb+ ,
$"bb- /
$strbb/ =
{bb= > 
httpRequestExceptionbb> R
.bbR S
MessagebbS Z
}bbZ [
"bb[ \
;bb\ ]
_loggercc 
.cc 
LogFatalcc $
(cc$ % 
httpRequestExceptioncc% 9
)cc9 :
;cc: ;
}dd 
catchff 
(ff 
	Exceptionff  
exff! #
)ff# $
{gg 
respuestaFinalhh "
.hh" #
	Resultadohh# ,
=hh- .
(hh/ 0
inthh0 3
)hh3 4
HttpStatusCodehh4 B
.hhB C
InternalServerErrorhhC V
;hhV W
respuestaFinalii "
.ii" #
Mensajeii# *
=ii+ ,
$"ii- /
$strii/ A
{iiA B
exiiB D
.iiD E
MessageiiE L
}iiL M
"iiM N
;iiN O
_loggerjj 
.jj 
LogFataljj $
(jj$ %
exjj% '
)jj' (
;jj( )
}kk 
}ll 
returnnn 
respuestaFinalnn !
;nn! "
}oo 	
publicqq 
staticqq 
asyncqq 
Taskqq  
<qq  !
RespuestaApiqq! -
>qq- .
SeguirUsuarioqq/ <
(qq< =
intqq= @
idUsuarioSeguidoqqA Q
,qqQ R
stringqqS Y
tokenqqZ _
)qq_ `
{rr 	
varss 
	respuestass 
=ss 
newss 
RespuestaApiss  ,
(ss, -
)ss- .
;ss. /
usingtt 
(tt 
vartt 

httpClienttt !
=tt" #
newtt$ '

HttpClienttt( 2
(tt2 3
)tt3 4
)tt4 5
{uu 
tryvv 
{ww 

httpClientyy 
.yy !
DefaultRequestHeadersyy 4
.yy4 5
Authorizationyy5 B
=yyC D
newyyE H%
AuthenticationHeaderValueyyI b
(yyb c
$stryyc k
,yyk l
tokenyym r
)yyr s
;yys t
varzz 
	contenidozz !
=zz" #
newzz$ '
StringContentzz( 5
(zz5 6
JsonConvertzz6 A
.zzA B
SerializeObjectzzB Q
(zzQ R
newzzR U
{zzV W
idUsuarioSeguidozzX h
}zzi j
)zzj k
,zzk l
Encodingzzm u
.zzu v
UTF8zzv z
,zzz {
$str	zz| �
)
zz� �
;
zz� �
var|| 
	resultado|| !
=||" #
await||$ )

httpClient||* 4
.||4 5
	PostAsync||5 >
(||> ?
$"||? A
{||A B
	Resources||B K
.||K L
BASE_URL||L T
}||T U
$str||U g
"||g h
,||h i
	contenido||j s
)||s t
;||t u
string}} 
json}} 
=}}  !
await}}" '
	resultado}}( 1
.}}1 2
Content}}2 9
.}}9 :
ReadAsStringAsync}}: K
(}}K L
)}}L M
;}}M N
	respuesta 
= 
JsonConvert  +
.+ ,
DeserializeObject, =
<= >
RespuestaApi> J
>J K
(K L
jsonL P
)P Q
;Q R
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
RespuestaApi
��! -
>
��- ."
DejarDeSeguirUsuario
��/ C
(
��C D
int
��D G
idUsuarioSeguido
��H X
,
��X Y
string
��Z `
token
��a f
)
��f g
{
�� 	
var
�� 
	respuesta
�� 
=
�� 
new
�� 
RespuestaApi
��  ,
(
��, -
)
��- .
;
��. /
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H'
AuthenticationHeaderValue
��I b
(
��b c
$str
��c k
,
��k l
token
��m r
)
��r s
;
��s t
var
�� 
	contenido
�� !
=
��" #
new
��$ '
StringContent
��( 5
(
��5 6
JsonConvert
��6 A
.
��A B
SerializeObject
��B Q
(
��Q R
new
��R U
{
��V W
idUsuarioSeguido
��X h
}
��i j
)
��j k
,
��k l
Encoding
��m u
.
��u v
UTF8
��v z
,
��z {
$str��| �
)��� �
;��� �
var
�� 
request
�� 
=
��  !
new
��" % 
HttpRequestMessage
��& 8
(
��8 9

HttpMethod
��9 C
.
��C D
Delete
��D J
,
��J K
$"
��L N
{
��N O
	Resources
��O X
.
��X Y
BASE_URL
��Y a
}
��a b
$str
��b z
"
��z {
)
��{ |
{
�� 
Content
�� 
=
��  !
	contenido
��" +
}
�� 
;
�� 
var
�� 
	resultado
�� !
=
��" #
await
��$ )

httpClient
��* 4
.
��4 5
	SendAsync
��5 >
(
��> ?
request
��? F
)
��F G
;
��G H
string
�� 
json
�� 
=
��  !
await
��" '
	resultado
��( 1
.
��1 2
Content
��2 9
.
��9 :
ReadAsStringAsync
��: K
(
��K L
)
��L M
;
��M N
	respuesta
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
RespuestaApi
��> J
>
��J K
(
��K L
json
��L P
)
��P Q
;
��Q R
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� /"
httpRequestException
��0 D
)
��D E
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
�� $
ex
��% '
)
��' (
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 	
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
RespuestaApi
��! -
<
��- .
List
��. 2
<
��2 3 
UsuarioSeguimiento
��3 E
>
��E F
>
��F G
>
��G H
ObtenerSeguidores
��I Z
(
��Z [
string
��[ a
token
��b g
)
��g h
{
�� 	
var
�� 
	respuesta
�� 
=
�� 
new
�� 
RespuestaApi
��  ,
<
��, -
List
��- 1
<
��1 2 
UsuarioSeguimiento
��2 D
>
��D E
>
��E F
(
��F G
)
��G H
;
��H I
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H'
AuthenticationHeaderValue
��I b
(
��b c
$str
��c k
,
��k l
token
��m r
)
��r s
;
��s t
var
�� 
	resultado
�� !
=
��" #
await
��$ )

httpClient
��* 4
.
��4 5
GetAsync
��5 =
(
��= >
$"
��> @
{
��@ A
	Resources
��A J
.
��J K
BASE_URL
��K S
}
��S T
$str
��T j
"
��j k
)
��k l
;
��l m
string
�� 
json
�� 
=
��  !
await
��" '
	resultado
��( 1
.
��1 2
Content
��2 9
.
��9 :
ReadAsStringAsync
��: K
(
��K L
)
��L M
;
��M N
	respuesta
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
RespuestaApi
��> J
<
��J K
List
��K O
<
��O P 
UsuarioSeguimiento
��P b
>
��b c
>
��c d
>
��d e
(
��e f
json
��f j
)
��j k
;
��k l
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
RespuestaApi
��! -
<
��- .
List
��. 2
<
��2 3 
UsuarioSeguimiento
��3 E
>
��E F
>
��F G
>
��G H
ObtenerSeguidos
��I X
(
��X Y
string
��Y _
token
��` e
)
��e f
{
�� 	
var
�� 
	respuesta
�� 
=
�� 
new
�� 
RespuestaApi
��  ,
<
��, -
List
��- 1
<
��1 2 
UsuarioSeguimiento
��2 D
>
��D E
>
��E F
(
��F G
)
��G H
;
��H I
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H'
AuthenticationHeaderValue
��I b
(
��b c
$str
��c k
,
��k l
token
��m r
)
��r s
;
��s t
var
�� 
	resultado
�� !
=
��" #
await
��$ )

httpClient
��* 4
.
��4 5
GetAsync
��5 =
(
��= >
$"
��> @
{
��@ A
	Resources
��A J
.
��J K
BASE_URL
��K S
}
��S T
$str
��T h
"
��h i
)
��i j
;
��j k
string
�� 
json
�� 
=
��  !
await
��" '
	resultado
��( 1
.
��1 2
Content
��2 9
.
��9 :
ReadAsStringAsync
��: K
(
��K L
)
��L M
;
��M N
	respuesta
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
RespuestaApi
��> J
<
��J K
List
��K O
<
��O P 
UsuarioSeguimiento
��P b
>
��b c
>
��c d
>
��d e
(
��e f
json
��f j
)
��j k
;
��k l
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
RespuestaApi
��! -
>
��- ."
VerificarSeguimiento
��/ C
(
��C D
int
��D G
idUsuarioSeguido
��H X
,
��X Y
string
��Z `
token
��a f
)
��f g
{
�� 	
var
�� 
	respuesta
�� 
=
�� 
new
�� 
RespuestaApi
��  ,
(
��, -
)
��- .
;
��. /
using
�� 
(
�� 
var
�� 

httpClient
�� !
=
��" #
new
��$ '

HttpClient
��( 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
try
�� 
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 4
.
��4 5
Authorization
��5 B
=
��C D
new
��E H'
AuthenticationHeaderValue
��I b
(
��b c
$str
��c k
,
��k l
token
��m r
)
��r s
;
��s t
var
�� 
	resultado
�� !
=
��" #
await
��$ )

httpClient
��* 4
.
��4 5
GetAsync
��5 =
(
��= >
$"
��> @
{
��@ A
	Resources
��A J
.
��J K
BASE_URL
��K S
}
��S T
$str
��T j
{
��j k
idUsuarioSeguido
��k {
}
��{ |
"
��| }
)
��} ~
;
��~ 
string
�� 
json
�� 
=
��  !
await
��" '
	resultado
��( 1
.
��1 2
Content
��2 9
.
��9 :
ReadAsStringAsync
��: K
(
��K L
)
��L M
;
��M N
	respuesta
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
RespuestaApi
��> J
>
��J K
(
��K L
json
��L P
)
��P Q
;
��Q R
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* 8
{
��8 9"
httpRequestException
��9 M
.
��M N
Message
��N U
}
��U V
"
��V W
;
��W X
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
	respuesta
�� 
.
�� 
Estado
�� $
=
��% &
(
��' (
int
��( +
)
��+ ,
HttpStatusCode
��, :
.
��: ;!
InternalServerError
��; N
;
��N O
	respuesta
�� 
.
�� 
Mensaje
�� %
=
��& '
$"
��( *
$str
��* <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
;
��I J
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
}
�� 
}�� К
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\ComentarioServicio.cs
	namespace 	
EduShare_Escritorio
 
. 
Servicio &
{ 
public 

class 
ComentarioServicio #
{ 
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
ComentarioServicioQ c
)c d
)d e
;e f
public 
static 
async 
Task  
<  !
	Respuesta! *
?* +
>+ , 
CrearComentarioAsync- A
(A B
stringB H
tokenI N
,N O"
CrearComentarioRequestP f
datosg l
)l m
{ 	
	Respuesta 
	respuesta 
=  !
new" %
(% &
)& '
;' (
using 
var 

httpClient  
=! "
new# &

HttpClient' 1
(1 2
)2 3
;3 4

httpClient 
. !
DefaultRequestHeaders ,
., -
Authorization- :
=; <
new= @
SystemA G
.G H
NetH K
.K L
HttpL P
.P Q
HeadersQ X
.X Y%
AuthenticationHeaderValueY r
(r s
$strs {
,{ |
token	} �
)
� �
;
� �
var 
json 
= 
JsonConvert "
." #
SerializeObject# 2
(2 3
datos3 8
)8 9
;9 :
var 
content 
= 
new 
StringContent +
(+ ,
json, 0
,0 1
Encoding2 :
.: ;
UTF8; ?
,? @
$strA S
)S T
;T U
try 
{   
var!! 
response!! 
=!! 
await!! $

httpClient!!% /
.!!/ 0
	PostAsync!!0 9
(!!9 :
$"!!: <
{!!< =
	Resources!!= F
.!!F G
BASE_URL!!G O
}!!O P
$str!!P Z
"!!Z [
,!![ \
content!!] d
)!!d e
;!!e f
var"" 
body"" 
="" 
await""  
response""! )
."") *
Content""* 1
.""1 2
ReadAsStringAsync""2 C
(""C D
)""D E
;""E F
var## 
	resultado## 
=## 
JsonConvert##  +
.##+ ,
DeserializeObject##, =
<##= >
	Respuesta##> G
>##G H
(##H I
body##I M
)##M N
;##N O
	resultado$$ 
.$$ 
	Resultado$$ #
=$$$ %
($$& '
int$$' *
)$$* +
response$$+ 3
.$$3 4

StatusCode$$4 >
;$$> ?
return%% 
	resultado%%  
;%%  !
}&& 
catch'' 
(''  
HttpRequestException'' ' 
httpRequestException''( <
)''< =
{(( 
	respuesta)) 
.)) 
	Resultado)) #
=))$ %
())& '
int))' *
)))* +
HttpStatusCode))+ 9
.))9 :
InternalServerError)): M
;))M N
	respuesta** 
.** 
Mensaje** !
=**" #
$"**$ &
$str**& 4
{**4 5 
httpRequestException**5 I
.**I J
Message**J Q
}**Q R
"**R S
;**S T
_logger++ 
.++ 
LogFatal++  
(++  ! 
httpRequestException++! 5
)++5 6
;++6 7
},, 
catch-- 
(-- 
JsonException--  
jsonException--! .
)--. /
{.. 
	respuesta// 
.// 
	Resultado// #
=//$ %
(//& '
int//' *
)//* +
HttpStatusCode//+ 9
.//9 :
InternalServerError//: M
;//M N
	respuesta00 
.00 
Mensaje00 !
=00" #
$"00$ &
$str00& K
{00K L
jsonException00L Y
.00Y Z
Message00Z a
}00a b
"00b c
;00c d
_logger11 
.11 
LogFatal11  
(11  !
jsonException11! .
)11. /
;11/ 0
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
	respuesta55 
.55 
	Resultado55 #
=55$ %
(55& '
int55' *
)55* +
HttpStatusCode55+ 9
.559 :
InternalServerError55: M
;55M N
	respuesta66 
.66 
Mensaje66 !
=66" #
$"66$ &
$str66& 8
{668 9
ex669 ;
.66; <
Message66< C
}66C D
"66D E
;66E F
_logger77 
.77 
LogFatal77  
(77  !
ex77! #
)77# $
;77$ %
}88 
return99 
	respuesta99 
;99 
}:: 	
public<< 
static<< 
async<< 
Task<<  
<<<  !
	Respuesta<<! *
?<<* +
><<+ ,#
EliminarComentarioAsync<<- D
(<<D E
string<<E K
token<<L Q
,<<Q R
int<<S V
idComentario<<W c
)<<c d
{== 	
	Respuesta>> 
	respuesta>> 
=>>  !
new>>" %
(>>% &
)>>& '
;>>' (
using?? 
var?? 

httpClient??  
=??! "
new??# &

HttpClient??' 1
(??1 2
)??2 3
;??3 4

httpClient@@ 
.@@ !
DefaultRequestHeaders@@ ,
.@@, -
Authorization@@- :
=@@; <
new@@= @
System@@A G
.@@G H
Net@@H K
.@@K L
Http@@L P
.@@P Q
Headers@@Q X
.@@X Y%
AuthenticationHeaderValue@@Y r
(@@r s
$str@@s {
,@@{ |
token	@@} �
)
@@� �
;
@@� �
tryBB 
{CC 
varDD 
responseDD 
=DD 
awaitDD $

httpClientDD% /
.DD/ 0
DeleteAsyncDD0 ;
(DD; <
$"DD< >
{DD> ?
	ResourcesDD? H
.DDH I
BASE_URLDDI Q
}DDQ R
$strDDR ]
{DD] ^
idComentarioDD^ j
}DDj k
"DDk l
)DDl m
;DDm n
varEE 
bodyEE 
=EE 
awaitEE  
responseEE! )
.EE) *
ContentEE* 1
.EE1 2
ReadAsStringAsyncEE2 C
(EEC D
)EED E
;EEE F
varGG 
	resultadoGG 
=GG 
JsonConvertGG  +
.GG+ ,
DeserializeObjectGG, =
<GG= >
	RespuestaGG> G
>GGG H
(GGH I
bodyGGI M
)GGM N
;GGN O
	resultadoHH 
.HH 
	ResultadoHH #
=HH$ %
(HH& '
intHH' *
)HH* +
responseHH+ 3
.HH3 4

StatusCodeHH4 >
;HH> ?
returnII 
	resultadoII  
;II  !
}JJ 
catchKK 
(KK  
HttpRequestExceptionKK ' 
httpRequestExceptionKK( <
)KK< =
{LL 
	respuestaMM 
.MM 
	ResultadoMM #
=MM$ %
(MM& '
intMM' *
)MM* +
HttpStatusCodeMM+ 9
.MM9 :
InternalServerErrorMM: M
;MMM N
	respuestaNN 
.NN 
MensajeNN !
=NN" #
$"NN$ &
$strNN& 4
{NN4 5 
httpRequestExceptionNN5 I
.NNI J
MessageNNJ Q
}NNQ R
"NNR S
;NNS T
_loggerOO 
.OO 
LogFatalOO  
(OO  ! 
httpRequestExceptionOO! 5
)OO5 6
;OO6 7
}PP 
catchQQ 
(QQ 
JsonExceptionQQ  
jsonExceptionQQ! .
)QQ. /
{RR 
	respuestaSS 
.SS 
	ResultadoSS #
=SS$ %
(SS& '
intSS' *
)SS* +
HttpStatusCodeSS+ 9
.SS9 :
InternalServerErrorSS: M
;SSM N
	respuestaTT 
.TT 
MensajeTT !
=TT" #
$"TT$ &
$strTT& K
{TTK L
jsonExceptionTTL Y
.TTY Z
MessageTTZ a
}TTa b
"TTb c
;TTc d
_loggerUU 
.UU 
LogFatalUU  
(UU  !
jsonExceptionUU! .
)UU. /
;UU/ 0
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
	respuestaYY 
.YY 
	ResultadoYY #
=YY$ %
(YY& '
intYY' *
)YY* +
HttpStatusCodeYY+ 9
.YY9 :
InternalServerErrorYY: M
;YYM N
	respuestaZZ 
.ZZ 
MensajeZZ !
=ZZ" #
$"ZZ$ &
$strZZ& 8
{ZZ8 9
exZZ9 ;
.ZZ; <
MessageZZ< C
}ZZC D
"ZZD E
;ZZE F
_logger[[ 
.[[ 
LogFatal[[  
([[  !
ex[[! #
)[[# $
;[[$ %
}\\ 
return]] 
	respuesta]] 
;]] 
}^^ 	
public`` 
static`` 
async`` 
Task``  
<``  !
RespuestaComentario``! 4
<``4 5
List``5 9
<``9 :

Comentario``: D
>``D E
>``E F
>``F G1
%ObtenerComentariosPorPublicacionAsync``H m
(``m n
int``n q
idPublicacion``r 
)	`` �
{aa 	
varbb 
respuestaFinalbb 
=bb  
newbb! $
RespuestaComentariobb% 8
<bb8 9
Listbb9 =
<bb= >

Comentariobb> H
>bbH I
>bbI J
(bbJ K
)bbK L
;bbL M
usingdd 
(dd 
vardd 

httpClientdd !
=dd" #
newdd$ '

HttpClientdd( 2
(dd2 3
)dd3 4
)dd4 5
{ee 
tryff 
{gg 
varhh 
httpResponsehh $
=hh% &
awaithh' ,

httpClienthh- 7
.hh7 8
GetAsynchh8 @
(hh@ A
$"hhA C
{hhC D
	ResourceshhD M
.hhM N
BASE_URLhhN V
}hhV W
$strhhW n
{hhn o
idPublicacionhho |
}hh| }
"hh} ~
)hh~ 
;	hh �
stringii 
jsonii 
=ii  !
awaitii" '
httpResponseii( 4
.ii4 5
Contentii5 <
.ii< =
ReadAsStringAsyncii= N
(iiN O
)iiO P
;iiP Q
varkk 
respuestaApikk $
=kk% &
JsonConvertkk' 2
.kk2 3
DeserializeObjectkk3 D
<kkD E
RespuestaComentariokkE X
<kkX Y
ListkkY ]
<kk] ^

Comentariokk^ h
>kkh i
>kki j
>kkj k
(kkk l
jsonkkl p
)kkp q
;kkq r
ifll 
(ll 
respuestaApill $
!=ll% '
nullll( ,
)ll, -
{mm 
respuestaFinalnn &
.nn& '
	Resultadonn' 0
=nn1 2
(nn3 4
intnn4 7
)nn7 8
httpResponsenn8 D
.nnD E

StatusCodennE O
;nnO P
respuestaFinaloo &
.oo& '
Mensajeoo' .
=oo/ 0
respuestaApioo1 =
.oo= >
Mensajeoo> E
;ooE F
respuestaFinalpp &
.pp& '
Datospp' ,
=pp- .
respuestaApipp/ ;
.pp; <
	Resultadopp< E
==ppF H
$numppI L
?ppM N
respuestaApippO [
.pp[ \
Datospp\ a
:ppb c
newppd g
Listpph l
<ppl m

Comentarioppm w
>ppw x
(ppx y
)ppy z
;ppz {
}ss 
elsett 
{uu 
respuestaFinalvv &
.vv& '
	Resultadovv' 0
=vv1 2
(vv3 4
intvv4 7
)vv7 8
HttpStatusCodevv8 F
.vvF G
InternalServerErrorvvG Z
;vvZ [
respuestaFinalww &
.ww& '
Mensajeww' .
=ww/ 0
$strww1 a
;wwa b
}xx 
}yy 
catchzz 
(zz  
HttpRequestExceptionzz + 
httpRequestExceptionzz, @
)zz@ A
{{{ 
respuestaFinal|| "
.||" #
	Resultado||# ,
=||- .
(||/ 0
int||0 3
)||3 4
HttpStatusCode||4 B
.||B C
InternalServerError||C V
;||V W
respuestaFinal}} "
.}}" #
Mensaje}}# *
=}}+ ,
$"}}- /
$str}}/ =
{}}= > 
httpRequestException}}> R
.}}R S
Message}}S Z
}}}Z [
"}}[ \
;}}\ ]
} 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  !
	Respuesta
��! *
?
��* +
>
��+ ,1
#VerificarPropietarioComentarioAsync
��- P
(
��P Q
string
��Q W
token
��X ]
,
��] ^
int
��_ b
idComentario
��c o
)
��o p
{
�� 	
	Respuesta
�� 
	respuesta
�� 
=
��  !
new
��" %
(
��% &
)
��& '
;
��' (
using
�� 
var
�� 

httpClient
��  
=
��! "
new
��# &

HttpClient
��' 1
(
��1 2
)
��2 3
;
��3 4

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� ,
.
��, -
Authorization
��- :
=
��; <
new
��= @
System
��A G
.
��G H
Net
��H K
.
��K L
Http
��L P
.
��P Q
Headers
��Q X
.
��X Y'
AuthenticationHeaderValue
��Y r
(
��r s
$str
��s {
,
��{ |
token��} �
)��� �
;��� �
try
�� 
{
�� 
var
�� 
response
�� 
=
�� 
await
�� $

httpClient
��% /
.
��/ 0
GetAsync
��0 8
(
��8 9
$"
��9 ;
{
��; <
	Resources
��< E
.
��E F
BASE_URL
��F N
}
��N O
$str
��O Z
{
��Z [
idComentario
��[ g
}
��g h
$str
��h ~
"
��~ 
)�� �
;��� �
var
�� 
body
�� 
=
�� 
await
��  
response
��! )
.
��) *
Content
��* 1
.
��1 2
ReadAsStringAsync
��2 C
(
��C D
)
��D E
;
��E F
var
�� 
	resultado
�� 
=
�� 
JsonConvert
��  +
.
��+ ,
DeserializeObject
��, =
<
��= >
	Respuesta
��> G
>
��G H
(
��H I
body
��I M
)
��M N
;
��N O
	resultado
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
response
��+ 3
.
��3 4

StatusCode
��4 >
;
��> ?
return
�� 
	resultado
��  
;
��  !
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� '"
httpRequestException
��( <
)
��< =
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 4
{
��4 5"
httpRequestException
��5 I
.
��I J
Message
��J Q
}
��Q R
"
��R S
;
��S T
_logger
�� 
.
�� 
LogFatal
��  
(
��  !"
httpRequestException
��! 5
)
��5 6
;
��6 7
}
�� 
catch
�� 
(
�� 
JsonException
��  
jsonException
��! .
)
��. /
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& K
{
��K L
jsonException
��L Y
.
��Y Z
Message
��Z a
}
��a b
"
��b c
;
��c d
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
jsonException
��! .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
	respuesta
�� 
.
�� 
	Resultado
�� #
=
��$ %
(
��& '
int
��' *
)
��* +
HttpStatusCode
��+ 9
.
��9 :!
InternalServerError
��: M
;
��M N
	respuesta
�� 
.
�� 
Mensaje
�� !
=
��" #
$"
��$ &
$str
��& 8
{
��8 9
ex
��9 ;
.
��; <
Message
��< C
}
��C D
"
��D E
;
��E F
_logger
�� 
.
�� 
LogFatal
��  
(
��  !
ex
��! #
)
��# $
;
��$ %
}
�� 
return
�� 
	respuesta
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\CatalogosServicio.cs
	namespace 	
EduShare_Escritorio
 
. 
Servicio &
{ 
public 

class 
CatalogosServicio "
{ 
private 
static 
readonly 
string  &
URL' *
=+ ,
string- 3
.3 4
Concat4 :
(: ;
	Resources; D
.D E
BASE_URLE M
,M N
$strO g
)g h
;h i
private 
static 
readonly 
LoggerManager  -
_logger. 5
=6 7
new8 ;
LoggerManager< I
(I J
typeofJ P
(P Q
CatalogosServicioQ b
)b c
)c d
;d e
public 
static 
async 
Task  
<  ! 
RespuestaInstitucion! 5
<5 6
List6 :
<: ;
Institucion; F
>F G
>G H
>H I%
ObtenerInstitucionesAsyncJ c
(c d
stringd j
?j k
nivell q
=r s
nullt x
)x y
{ 	
var 
respuestaFinal 
=  
new! $ 
RespuestaInstitucion% 9
<9 :
List: >
<> ?
Institucion? J
>J K
>K L
(L M
)M N
;N O
using 
( 

HttpClient 
client $
=% &
new' *

HttpClient+ 5
(5 6
)6 7
)7 8
{ 
try 
{ 
string 
urlFinal #
=$ %
nivel& +
!=, .
null/ 3
?4 5
$"6 8
{8 9
URL9 <
}< =
$str= D
{D E
nivelE J
}J K
"K L
:M N
URLO R
;R S
HttpResponseMessage '
response( 0
=1 2
await3 8
client9 ?
.? @
GetAsync@ H
(H I
urlFinalI Q
)Q R
;R S
string   
json   
=    !
await  " '
response  ( 0
.  0 1
Content  1 8
.  8 9
ReadAsStringAsync  9 J
(  J K
)  K L
;  L M
var"" 
respuestaApi"" $
=""% &
JsonConvert""' 2
.""2 3
DeserializeObject""3 D
<""D E 
RespuestaInstitucion""E Y
<""Y Z
List""Z ^
<""^ _
Institucion""_ j
>""j k
>""k l
>""l m
(""m n
json""n r
)""r s
;""s t
if$$ 
($$ 
respuestaApi$$ $
!=$$% '
null$$( ,
)$$, -
{%% 
respuestaFinal&& &
.&&& '
	Resultado&&' 0
=&&1 2
respuestaApi&&3 ?
.&&? @
	Resultado&&@ I
;&&I J
respuestaFinal'' &
.''& '
Mensaje''' .
=''/ 0
respuestaApi''1 =
.''= >
Mensaje''> E
;''E F
respuestaFinal(( &
.((& '
Datos((' ,
=((- .
respuestaApi((/ ;
.((; <
	Resultado((< E
==((F H
$num((I L
?((M N
respuestaApi((O [
.(([ \
Datos((\ a
:((b c
new((d g
List((h l
<((l m
Institucion((m x
>((x y
(((y z
)((z {
;(({ |
})) 
else** 
{++ 
respuestaFinal,, &
.,,& '
	Resultado,,' 0
=,,1 2
(,,3 4
int,,4 7
),,7 8
HttpStatusCode,,8 F
.,,F G
InternalServerError,,G Z
;,,Z [
respuestaFinal-- &
.--& '
Mensaje--' .
=--/ 0
$str--1 a
;--a b
respuestaFinal.. &
...& '
Datos..' ,
=..- .
new../ 2
List..3 7
<..7 8
Institucion..8 C
>..C D
(..D E
)..E F
;..F G
}// 
}00 
catch11 
(11  
HttpRequestException11 + 
httpRequestException11, @
)11@ A
{22 
respuestaFinal33 "
.33" #
	Resultado33# ,
=33- .
(33/ 0
int330 3
)333 4
HttpStatusCode334 B
.33B C
InternalServerError33C V
;33V W
respuestaFinal44 "
.44" #
Mensaje44# *
=44+ ,
$"44- /
$str44/ =
{44= > 
httpRequestException44> R
.44R S
Message44S Z
}44Z [
"44[ \
;44\ ]
_logger55 
.55 
LogFatal55 $
(55$ % 
httpRequestException55% 9
)559 :
;55: ;
}66 
catch77 
(77 
JsonException77 $
jsonException77% 2
)772 3
{88 
respuestaFinal99 "
.99" #
	Resultado99# ,
=99- .
(99/ 0
int990 3
)993 4
HttpStatusCode994 B
.99B C
InternalServerError99C V
;99V W
respuestaFinal:: "
.::" #
Mensaje::# *
=::+ ,
$"::- /
$str::/ T
{::T U
jsonException::U b
.::b c
Message::c j
}::j k
"::k l
;::l m
_logger;; 
.;; 
LogFatal;; $
(;;$ %
jsonException;;% 2
);;2 3
;;;3 4
}<< 
catch== 
(== 
	Exception==  
ex==! #
)==# $
{>> 
respuestaFinal?? "
.??" #
	Resultado??# ,
=??- .
(??/ 0
int??0 3
)??3 4
HttpStatusCode??4 B
.??B C
InternalServerError??C V
;??V W
respuestaFinal@@ "
.@@" #
Mensaje@@# *
=@@+ ,
$"@@- /
$str@@/ A
{@@A B
ex@@B D
.@@D E
Message@@E L
}@@L M
"@@M N
;@@N O
_loggerAA 
.AA 
LogFatalAA $
(AA$ %
exAA% '
)AA' (
;AA( )
}BB 
}CC 
returnEE 
respuestaFinalEE !
;EE! "
}FF 	
publicHH 
staticHH 
asyncHH 
TaskHH  
<HH  !
RespuestaCatalogosHH! 3
<HH3 4
ListHH4 8
<HH8 9
	CategoriaHH9 B
>HHB C
>HHC D
>HHD E"
ObtenerCategoriasAsyncHHF \
(HH\ ]
)HH] ^
{II 	
varKK 
respuestaFinalKK 
=KK  
newKK! $
RespuestaCatalogosKK% 7
<KK7 8
ListKK8 <
<KK< =
	CategoriaKK= F
>KKF G
>KKG H
(KKH I
)KKI J
;KKJ K
usingMM 
(MM 

HttpClientMM 
clientMM $
=MM% &
newMM' *

HttpClientMM+ 5
(MM5 6
)MM6 7
)MM7 8
{NN 
tryOO 
{PP 
stringQQ 
urlFinalQQ #
=QQ$ %
stringQQ& ,
.QQ, -
ConcatQQ- 3
(QQ3 4
	ResourcesQQ4 =
.QQ= >
BASE_URLQQ> F
,QQF G
$strQQH ]
)QQ] ^
;QQ^ _
HttpResponseMessageRR '
responseRR( 0
=RR1 2
awaitRR3 8
clientRR9 ?
.RR? @
GetAsyncRR@ H
(RRH I
urlFinalRRI Q
)RRQ R
;RRR S
stringSS 
jsonSS 
=SS  !
awaitSS" '
responseSS( 0
.SS0 1
ContentSS1 8
.SS8 9
ReadAsStringAsyncSS9 J
(SSJ K
)SSK L
;SSL M
varUU 
respuestaApiUU $
=UU% &
JsonConvertUU' 2
.UU2 3
DeserializeObjectUU3 D
<UUD E
RespuestaCatalogosUUE W
<UUW X
ListUUX \
<UU\ ]
	CategoriaUU] f
>UUf g
>UUg h
>UUh i
(UUi j
jsonUUj n
)UUn o
;UUo p
ifWW 
(WW 
respuestaApiWW $
!=WW% '
nullWW( ,
)WW, -
{XX 
respuestaFinalYY &
.YY& '
	ResultadoYY' 0
=YY1 2
respuestaApiYY3 ?
.YY? @
	ResultadoYY@ I
;YYI J
respuestaFinalZZ &
.ZZ& '
MensajeZZ' .
=ZZ/ 0
respuestaApiZZ1 =
.ZZ= >
MensajeZZ> E
;ZZE F
respuestaFinal[[ &
.[[& '
Datos[[' ,
=[[- .
respuestaApi[[/ ;
.[[; <
	Resultado[[< E
==[[F H
$num[[I L
?[[M N
respuestaApi[[O [
.[[[ \
Datos[[\ a
:[[b c
new[[d g
List[[h l
<[[l m
	Categoria[[m v
>[[v w
([[w x
)[[x y
;[[y z
}\\ 
else]] 
{^^ 
respuestaFinal__ &
.__& '
	Resultado__' 0
=__1 2
(__3 4
int__4 7
)__7 8
HttpStatusCode__8 F
.__F G
InternalServerError__G Z
;__Z [
respuestaFinal`` &
.``& '
Mensaje``' .
=``/ 0
$str``1 a
;``a b
respuestaFinalaa &
.aa& '
Datosaa' ,
=aa- .
newaa/ 2
Listaa3 7
<aa7 8
	Categoriaaa8 A
>aaA B
(aaB C
)aaC D
;aaD E
}bb 
}cc 
catchdd 
(dd  
HttpRequestExceptiondd + 
httpRequestExceptiondd, @
)dd@ A
{ee 
respuestaFinalff "
.ff" #
	Resultadoff# ,
=ff- .
(ff/ 0
intff0 3
)ff3 4
HttpStatusCodeff4 B
.ffB C
InternalServerErrorffC V
;ffV W
respuestaFinalgg "
.gg" #
Mensajegg# *
=gg+ ,
$"gg- /
$strgg/ =
{gg= > 
httpRequestExceptiongg> R
.ggR S
MessageggS Z
}ggZ [
"gg[ \
;gg\ ]
_loggerhh 
.hh 
LogFatalhh $
(hh$ % 
httpRequestExceptionhh% 9
)hh9 :
;hh: ;
}ii 
catchjj 
(jj 
JsonExceptionjj $
jsonExceptionjj% 2
)jj2 3
{kk 
respuestaFinalll "
.ll" #
	Resultadoll# ,
=ll- .
(ll/ 0
intll0 3
)ll3 4
HttpStatusCodell4 B
.llB C
InternalServerErrorllC V
;llV W
respuestaFinalmm "
.mm" #
Mensajemm# *
=mm+ ,
$"mm- /
$strmm/ T
{mmT U
jsonExceptionmmU b
.mmb c
Messagemmc j
}mmj k
"mmk l
;mml m
_loggernn 
.nn 
LogFatalnn $
(nn$ %
jsonExceptionnn% 2
)nn2 3
;nn3 4
}oo 
catchpp 
(pp 
	Exceptionpp  
expp! #
)pp# $
{qq 
respuestaFinalrr "
.rr" #
	Resultadorr# ,
=rr- .
(rr/ 0
intrr0 3
)rr3 4
HttpStatusCoderr4 B
.rrB C
InternalServerErrorrrC V
;rrV W
respuestaFinalss "
.ss" #
Mensajess# *
=ss+ ,
$"ss- /
$strss/ A
{ssA B
exssB D
.ssD E
MessagessE L
}ssL M
"ssM N
;ssN O
_loggertt 
.tt 
LogFataltt $
(tt$ %
extt% '
)tt' (
;tt( )
}uu 
}vv 
returnxx 
respuestaFinalxx !
;xx! "
}yy 	
public{{ 
static{{ 
async{{ 
Task{{  
<{{  !
RespuestaCatalogos{{! 3
<{{3 4
List{{4 8
<{{8 9
Rama{{9 =
>{{= >
>{{> ?
>{{? @
ObtenerRamasAsync{{A R
({{R S
){{S T
{|| 	
var~~ 
respuestaFinal~~ 
=~~  
new~~! $
RespuestaCatalogos~~% 7
<~~7 8
List~~8 <
<~~< =
Rama~~= A
>~~A B
>~~B C
(~~C D
)~~D E
;~~E F
using
�� 
(
�� 

HttpClient
�� 
client
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
try
�� 
{
�� 
string
�� 
urlFinal
�� #
=
��$ %
string
��& ,
.
��, -
Concat
��- 3
(
��3 4
	Resources
��4 =
.
��= >
BASE_URL
��> F
,
��F G
$str
��H X
)
��X Y
;
��Y Z!
HttpResponseMessage
�� '
response
��( 0
=
��1 2
await
��3 8
client
��9 ?
.
��? @
GetAsync
��@ H
(
��H I
urlFinal
��I Q
)
��Q R
;
��R S
string
�� 
json
�� 
=
��  !
await
��" '
response
��( 0
.
��0 1
Content
��1 8
.
��8 9
ReadAsStringAsync
��9 J
(
��J K
)
��K L
;
��L M
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E 
RespuestaCatalogos
��E W
<
��W X
List
��X \
<
��\ ]
Rama
��] a
>
��a b
>
��b c
>
��c d
(
��d e
json
��e i
)
��i j
;
��j k
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Rama
��m q
>
��q r
(
��r s
)
��s t
;
��t u
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Rama
��8 <
>
��< =
(
��= >
)
��> ?
;
��? @
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
public
�� 
static
�� 
async
�� 
Task
��  
<
��  ! 
RespuestaCatalogos
��! 3
<
��3 4
List
��4 8
<
��8 9
Materia
��9 @
>
��@ A
>
��A B
>
��B C(
ObtenerMateriaPorRamaAsync
��D ^
(
��^ _
int
��_ b
idRama
��c i
)
��i j
{
�� 	
var
�� 
respuestaFinal
�� 
=
��  
new
��! $ 
RespuestaCatalogos
��% 7
<
��7 8
List
��8 <
<
��< =
Materia
��= D
>
��D E
>
��E F
(
��F G
)
��G H
;
��H I
using
�� 
(
�� 

HttpClient
�� 
client
�� $
=
��% &
new
��' *

HttpClient
��+ 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
try
�� 
{
�� 
var
�� 
url
�� 
=
�� 
$"
��  
{
��  !
	Resources
��! *
.
��* +
BASE_URL
��+ 3
}
��3 4
$str
��4 M
{
��M N
idRama
��N T
}
��T U
"
��U V
;
��V W
var
�� !
httpResponseMessage
�� +
=
��, -
await
��. 3
client
��4 :
.
��: ;
GetAsync
��; C
(
��C D
url
��D G
)
��G H
;
��H I
string
�� 
json
�� 
=
��  !
await
��" '!
httpResponseMessage
��( ;
.
��; <
Content
��< C
.
��C D
ReadAsStringAsync
��D U
(
��U V
)
��V W
;
��W X
var
�� 
respuestaApi
�� $
=
��% &
JsonConvert
��' 2
.
��2 3
DeserializeObject
��3 D
<
��D E 
RespuestaCatalogos
��E W
<
��W X
List
��X \
<
��\ ]
Materia
��] d
>
��d e
>
��e f
>
��f g
(
��g h
json
��h l
)
��l m
;
��m n
if
�� 
(
�� 
respuestaApi
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
respuestaApi
��3 ?
.
��? @
	Resultado
��@ I
;
��I J
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
respuestaApi
��1 =
.
��= >
Mensaje
��> E
;
��E F
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
respuestaApi
��/ ;
.
��; <
	Resultado
��< E
==
��F H
$num
��I L
?
��M N
respuestaApi
��O [
.
��[ \
Datos
��\ a
:
��b c
new
��d g
List
��h l
<
��l m
Materia
��m t
>
��t u
(
��u v
)
��v w
;
��w x
}
�� 
else
�� 
{
�� 
respuestaFinal
�� &
.
��& '
	Resultado
��' 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
HttpStatusCode
��8 F
.
��F G!
InternalServerError
��G Z
;
��Z [
respuestaFinal
�� &
.
��& '
Mensaje
��' .
=
��/ 0
$str
��1 a
;
��a b
respuestaFinal
�� &
.
��& '
Datos
��' ,
=
��- .
new
��/ 2
List
��3 7
<
��7 8
Materia
��8 ?
>
��? @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 
catch
�� 
(
�� "
HttpRequestException
�� +"
httpRequestException
��, @
)
��@ A
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ =
{
��= >"
httpRequestException
��> R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
;
��\ ]
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %"
httpRequestException
��% 9
)
��9 :
;
��: ;
}
�� 
catch
�� 
(
�� 
JsonException
�� $
jsonException
��% 2
)
��2 3
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ T
{
��T U
jsonException
��U b
.
��b c
Message
��c j
}
��j k
"
��k l
;
��l m
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
jsonException
��% 2
)
��2 3
;
��3 4
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 
respuestaFinal
�� "
.
��" #
	Resultado
��# ,
=
��- .
(
��/ 0
int
��0 3
)
��3 4
HttpStatusCode
��4 B
.
��B C!
InternalServerError
��C V
;
��V W
respuestaFinal
�� "
.
��" #
Mensaje
��# *
=
��+ ,
$"
��- /
$str
��/ A
{
��A B
ex
��B D
.
��D E
Message
��E L
}
��L M
"
��M N
;
��N O
_logger
�� 
.
�� 
LogFatal
�� $
(
��$ %
ex
��% '
)
��' (
;
��( )
}
�� 
}
�� 
return
�� 
respuestaFinal
�� !
;
��! "
}
�� 	
}
�� 
}�� �G
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Protos\FileServiceClientHandler.cs
public		 
class		 $
FileServiceClientHandler		 %
{

 
private 
readonly 
FileService  
.  !
FileServiceClient! 2
_client3 :
;: ;
public 
$
FileServiceClientHandler #
(# $
string$ *
grpcServerAddress+ <
== >
$str? W
)W X
{ 
var 
channel 
= 
GrpcChannel !
.! "

ForAddress" ,
(, -
grpcServerAddress- >
)> ?
;? @
_client 
= 
new 
FileService !
.! "
FileServiceClient" 3
(3 4
channel4 ;
); <
;< =
} 
public 

byte 
[ 
] #
ConvertImageToByteArray )
() *
Image* /
image0 5
)5 6
{ 
using 
MemoryStream 
ms 
= 
new  #
(# $
)$ %
;% &
image 
. 
Save 
( 
ms 
, 
image 
. 
	RawFormat &
)& '
;' (
return 
ms 
. 
ToArray 
( 
) 
; 
} 
public 

async 
Task 
< 
string 
? 
> 
UploadImageAsync /
(/ 0
string0 6
username7 ?
,? @
stringA G
filenameH P
,P Q
byteR V
[V W
]W X

imageBytesY c
)c d
{ 
var 
request 
= 
new 
UploadRequest '
{ 	
Username 
= 
username 
,  
Filename 
= 
filename 
,  
Filedata   
=   

ByteString   !
.  ! "
CopyFrom  " *
(  * +

imageBytes  + 5
)  5 6
}!! 	
;!!	 

var## 
response## 
=## 
await## 
_client## $
.##$ %
UploadImageAsync##% 5
(##5 6
request##6 =
)##= >
;##> ?
return%% 
response%% 
.%% 
FilePath%%  
;%%  !
}&& 
public(( 

async(( 
Task(( 
<(( 
((( 
string(( 
?(( 
filePath(( '
,((' (
string(() /
?((/ 0
	coverPath((1 :
)((: ;
>((; <
UploadPdfAsync((= K
(((K L
string((L R
username((S [
,(([ \
string((] c
filename((d l
,((l m
byte((n r
[((r s
]((s t
pdfBytes((u }
)((} ~
{)) 
var** 
request** 
=** 
new** 
UploadRequest** '
{++ 	
Username,, 
=,, 
username,, 
,,,  
Filename-- 
=-- 
filename-- 
,--  
Filedata.. 
=.. 

ByteString.. !
...! "
CopyFrom.." *
(..* +
pdfBytes..+ 3
)..3 4
}// 	
;//	 

var11 
response11 
=11 
await11 
_client11 $
.11$ %
UploadPdfAsync11% 3
(113 4
request114 ;
)11; <
;11< =
return33 
(33 
response33 
.33 
FilePath33 !
,33! "
response33# +
.33+ ,
CoverImagePath33, :
)33: ;
;33; <
}44 
public66 

async66 
Task66 
<66 
(66 
byte66 
[66 
]66 
?66 
fileData66 '
,66' (
string66) /
?66/ 0
filename661 9
)669 :
>66: ;
DownloadImageAsync66< N
(66N O
string66O U
relativePath66V b
)66b c
{77 
var88 
request88 
=88 
new88 
DownloadRequest88 )
{99 	
RelativePath:: 
=:: 
relativePath:: '
};; 	
;;;	 

var== 
response== 
=== 
await== 
_client== $
.==$ %
DownloadImageAsync==% 7
(==7 8
request==8 ?
)==? @
;==@ A
return?? 
(?? 
response?? 
.?? 
Filedata?? !
???! "
.??" #
ToByteArray??# .
(??. /
)??/ 0
,??0 1
response??2 :
.??: ;
Filename??; C
)??C D
;??D E
}@@ 
publicBB 

asyncBB 
TaskBB 
<BB 
(BB 
byteBB 
[BB 
]BB 
?BB 
fileDataBB '
,BB' (
stringBB) /
?BB/ 0
filenameBB1 9
)BB9 :
>BB: ;
DownloadPdfAsyncBB< L
(BBL M
stringBBM S
relativePathBBT `
)BB` a
{CC 
varDD 
requestDD 
=DD 
newDD 
DownloadRequestDD )
{EE 	
RelativePathFF 
=FF 
relativePathFF '
}GG 	
;GG	 

varII 
responseII 
=II 
awaitII 
_clientII $
.II$ %
DownloadPdfAsyncII% 5
(II5 6
requestII6 =
)II= >
;II> ?
returnKK 
(KK 
responseKK 
.KK 
FiledataKK !
?KK! "
.KK" #
ToByteArrayKK# .
(KK. /
)KK/ 0
,KK0 1
responseKK2 :
.KK: ;
FilenameKK; C
)KKC D
;KKD E
}LL 
publicNN 

asyncNN 
TaskNN 
<NN 
(NN 
byteNN 
[NN 
]NN 
?NN 
fileDataNN '
,NN' (
stringNN) /
?NN/ 0
filenameNN1 9
)NN9 :
>NN: ;
DownloadCoverAsyncNN< N
(NNN O
stringNNO U
pdfRelativePathNNV e
)NNe f
{OO 
varPP 
requestPP 
=PP 
newPP 
DownloadRequestPP )
{QQ 	
RelativePathRR 
=RR 
pdfRelativePathRR *
}SS 	
;SS	 

varUU 
responseUU 
=UU 
awaitUU 
_clientUU $
.UU$ %
DownloadCoverAsyncUU% 7
(UU7 8
requestUU8 ?
)UU? @
;UU@ A
returnWW 
(WW 
responseWW 
.WW 
FiledataWW !
?WW! "
.WW" #
ToByteArrayWW# .
(WW. /
)WW/ 0
,WW0 1
responseWW2 :
.WW: ;
FilenameWW; C
)WWC D
;WWD E
}XX 
publicZZ 

boolZZ 
SaveFileZZ 
(ZZ 
byteZZ 
[ZZ 
]ZZ 
dataZZ  $
,ZZ$ %
stringZZ& ,
outputDirectoryZZ- <
,ZZ< =
stringZZ> D
filenameZZE M
)ZZM N
{[[ 
try\\ 
{]] 	
if^^ 
(^^ 
!^^ 
	Directory^^ 
.^^ 
Exists^^ !
(^^! "
outputDirectory^^" 1
)^^1 2
)^^2 3
	Directory__ 
.__ 
CreateDirectory__ )
(__) *
outputDirectory__* 9
)__9 :
;__: ;
stringaa 
fullPathaa 
=aa 
Pathaa "
.aa" #
Combineaa# *
(aa* +
outputDirectoryaa+ :
,aa: ;
filenameaa< D
)aaD E
;aaE F
Filebb 
.bb 
WriteAllBytesbb 
(bb 
fullPathbb '
,bb' (
databb) -
)bb- .
;bb. /
returncc 
truecc 
;cc 
}dd 	
catchee 
{ff 	
returngg 
falsegg 
;gg 
}hh 	
}ii 
publickk 

Imagekk 
ByteArrayToImagekk !
(kk! "
bytekk" &
[kk& '
]kk' (
byteskk) .
)kk. /
{ll 
usingmm 
MemoryStreammm 
msmm 
=mm 
newmm  #
(mm# $
bytesmm$ )
)mm) *
;mm* +
returnnn 
Imagenn 
.nn 

FromStreamnn 
(nn  
msnn  "
)nn" #
;nn# $
}oo 
}pp �!
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\NotificacionesYChat\VentanaNotificacion.xaml.cs
	namespace 	
EduShare_Escritorio
 
. 
NotificacionesYChat 1
{ 
public 

partial 
class 
VentanaNotificacion ,
:- .
Window/ 5
{		 
public

 
VentanaNotificacion

 "
(

" #
NotificacionModel

# 4
notificacion

5 A
)

A B
{ 	
InitializeComponent 
(  
)  !
;! "
TituloTexto 
. 
Text 
= 
notificacion +
.+ ,
Titulo, 2
;2 3
MensajeTexto 
. 
Text 
= 
notificacion  ,
., -
Mensaje- 4
;4 5
var 

mainWindow 
= 
Application (
.( )
Current) 0
.0 1

MainWindow1 ;
;; <
if 
( 

mainWindow 
!= 
null "
)" #
{ 
var 
offset 
= 
$num 
;  
var 
mainLeft 
= 

mainWindow )
.) *
Left* .
;. /
var 
mainTop 
= 

mainWindow (
.( )
Top) ,
;, -
var 
	mainWidth 
= 

mainWindow  *
.* +
ActualWidth+ 6
;6 7
var 

mainHeight 
=  

mainWindow! +
.+ ,
ActualHeight, 8
;8 9
Left 
= 
mainLeft 
+  !
	mainWidth" +
-, -
Width. 3
-4 5
offset6 <
;< =
Top 
= 
mainTop 
+ 

mainHeight  *
-+ ,
Height- 3
-4 5
offset6 <
;< =
} 
Topmost   
=   
true   
;   
ShowInTaskbar!! 
=!! 
false!! !
;!!! "
WindowStyle"" 
="" 
WindowStyle"" %
.""% &
None""& *
;""* +

ResizeMode## 
=## 

ResizeMode## #
.### $
NoResize##$ ,
;##, -
AllowsTransparency$$ 
=$$  
true$$! %
;$$% &

Background%% 
=%% 
null%% 
;%% 
Loaded'' 
+='' 
('' 
s'' 
,'' 
e'' 
)'' 
=>'' 
{(( 
Opacity)) 
=)) 
$num)) 
;)) 
var** 
fadeIn** 
=** 
new**  
DoubleAnimation**! 0
(**0 1
$num**1 2
,**2 3
$num**4 5
,**5 6
TimeSpan**7 ?
.**? @
FromSeconds**@ K
(**K L
$num**L M
)**M N
)**N O
;**O P
BeginAnimation++ 
(++ 
OpacityProperty++ .
,++. /
fadeIn++0 6
)++6 7
;++7 8
var-- 
fadeOut-- 
=-- 
new-- !
DoubleAnimation--" 1
(--1 2
$num--2 3
,--3 4
$num--5 6
,--6 7
TimeSpan--8 @
.--@ A
FromSeconds--A L
(--L M
$num--M N
)--N O
)--O P
{.. 
	BeginTime// 
=// 
TimeSpan//  (
.//( )
FromSeconds//) 4
(//4 5
$num//5 6
)//6 7
}00 
;00 
fadeOut11 
.11 
	Completed11 !
+=11" $
(11% &
s211& (
,11( )
e211* ,
)11, -
=>11. 0
Close111 6
(116 7
)117 8
;118 9
BeginAnimation22 
(22 
OpacityProperty22 .
,22. /
fadeOut220 7
)227 8
;228 9
}33 
;33 
}44 	
}55 
}77 �?
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\NotificacionesYChat\NotificacionSocketService.cs
	namespace		 	
EduShare_Escritorio		
 
.		 
NotificacionesYChat		 1
{

 
public 

class %
NotificacionSocketService *
{ 
private 
ClientWebSocket 

_webSocket  *
;* +
private #
CancellationTokenSource '$
_cancellationTokenSource( @
;@ A
public 
async 
Task 
ConectarAsync '
(' (
string( .
	usuarioId/ 8
)8 9
{ 	

_webSocket 
= 
new 
ClientWebSocket ,
(, -
)- .
;. /$
_cancellationTokenSource $
=% &
new' *#
CancellationTokenSource+ B
(B C
)C D
;D E
await 

_webSocket 
. 
ConnectAsync )
() *
new* -
Uri. 1
(1 2
$str2 G
)G H
,H I$
_cancellationTokenSourceJ b
.b c
Tokenc h
)h i
;i j
var 
conectarMsg 
= 
JsonConvert )
.) *
SerializeObject* 9
(9 :
new: =
{ 
accion 
= 
$str #
,# $
	UsuarioId 
= 
	usuarioId %
} 
) 
; 
await 
EnviarMensajeAsync $
($ %
conectarMsg% 0
)0 1
;1 2
_ 
= !
EscucharMensajesAsync %
(% &
)& '
;' (
}   	
public"" 
async"" 
Task"" 
DesconectarAsync"" *
(""* +
string""+ 1
	usuarioId""2 ;
)""; <
{## 	
if$$ 
($$ 

_webSocket$$ 
==$$ 
null$$ "
||$$# %

_webSocket$$& 0
.$$0 1
State$$1 6
!=$$7 9
WebSocketState$$: H
.$$H I
Open$$I M
)$$M N
{%% 
Console&& 
.&& 
	WriteLine&& !
(&&! "
$str&&" O
)&&O P
;&&P Q
return'' 
;'' 
}(( 
try)) 
{** 
var++ 
desconectarMsg++ "
=++# $
JsonConvert++% 0
.++0 1
SerializeObject++1 @
(++@ A
new++A D
{,, 
accion-- 
=-- 
$str-- *
,--* +
	UsuarioId.. 
=.. 
	usuarioId..  )
}// 
)// 
;// 
await11 
EnviarMensajeAsync11 (
(11( )
desconectarMsg11) 7
)117 8
;118 9$
_cancellationTokenSource22 (
.22( )
Cancel22) /
(22/ 0
)220 1
;221 2

_webSocket33 
.33 
Dispose33 "
(33" #
)33# $
;33$ %
}44 
catch55 
(55 
	Exception55 
ex55 
)55  
{66 
Console77 
.77 
	WriteLine77 !
(77! "
$"77" $
$str77$ <
{77< =
ex77= ?
.77? @
Message77@ G
}77G H
"77H I
)77I J
;77J K
}88 
finally99 
{:: 

_webSocket;; 
=;; 
null;; !
;;;! "$
_cancellationTokenSource<< (
=<<) *
null<<+ /
;<</ 0
}== 
}>> 	
publicAA 
asyncAA 
TaskAA 
EnviarMensajeAsyncAA ,
(AA, -
stringAA- 3
mensajeAA4 ;
)AA; <
{BB 	
ifCC 
(CC 

_webSocketCC 
==CC 
nullCC "
||CC# %

_webSocketCC& 0
.CC0 1
StateCC1 6
!=CC7 9
WebSocketStateCC: H
.CCH I
OpenCCI M
)CCM N
{DD 
ConsoleEE 
.EE 
	WriteLineEE !
(EE! "
)EE" #
;EE# $
returnGG 
;GG 
}HH 
varJJ 
bufferJJ 
=JJ 
EncodingJJ !
.JJ! "
UTF8JJ" &
.JJ& '
GetBytesJJ' /
(JJ/ 0
mensajeJJ0 7
)JJ7 8
;JJ8 9
awaitKK 

_webSocketKK 
.KK 
	SendAsyncKK &
(KK& '
newKK' *
ArraySegmentKK+ 7
<KK7 8
byteKK8 <
>KK< =
(KK= >
bufferKK> D
)KKD E
,KKE F 
WebSocketMessageTypeKKG [
.KK[ \
TextKK\ `
,KK` a
trueKKb f
,KKf g%
_cancellationTokenSource	KKh �
.
KK� �
Token
KK� �
)
KK� �
;
KK� �
}MM 	
privatePP 
asyncPP 
TaskPP !
EscucharMensajesAsyncPP 0
(PP0 1
)PP1 2
{QQ 	
varRR 
bufferRR 
=RR 
newRR 
byteRR !
[RR! "
$numRR" &
]RR& '
;RR' (
whileTT 
(TT 

_webSocketTT 
.TT 
StateTT #
==TT$ &
WebSocketStateTT' 5
.TT5 6
OpenTT6 :
)TT: ;
{UU 
varVV 
resultVV 
=VV 
awaitVV "

_webSocketVV# -
.VV- .
ReceiveAsyncVV. :
(VV: ;
newVV; >
ArraySegmentVV? K
<VVK L
byteVVL P
>VVP Q
(VVQ R
bufferVVR X
)VVX Y
,VVY Z$
_cancellationTokenSourceVV[ s
.VVs t
TokenVVt y
)VVy z
;VVz {
varWW 
mensajeWW 
=WW 
EncodingWW &
.WW& '
UTF8WW' +
.WW+ ,
	GetStringWW, 5
(WW5 6
bufferWW6 <
,WW< =
$numWW> ?
,WW? @
resultWWA G
.WWG H
CountWWH M
)WWM N
;WWN O
ApplicationYY 
.YY 
CurrentYY #
.YY# $

DispatcherYY$ .
.YY. /
InvokeYY/ 5
(YY5 6
(YY6 7
)YY7 8
=>YY9 ;
{ZZ 
var[[ 
noti[[ 
=[[ 
JsonConvert[[ *
.[[* +
DeserializeObject[[+ <
<[[< =
NotificacionModel[[= N
>[[N O
([[O P
mensaje[[P W
)[[W X
;[[X Y
var\\ 
ventana\\ 
=\\  !
new\\" %
VentanaNotificacion\\& 9
(\\9 :
noti\\: >
)\\> ?
;\\? @
ventana]] 
.]] 
Show]]  
(]]  !
)]]! "
;]]" #
ventana^^ 
.^^ 
Activate^^ $
(^^$ %
)^^% &
;^^& '
ventana__ 
.__ 
Focus__ !
(__! "
)__" #
;__# $
}aa 
)aa 
;aa 
}bb 
}cc 	
}dd 
publicff 

classff 
NotificacionModelff "
{gg 
publichh 
stringhh 
Titulohh 
{hh 
gethh "
;hh" #
sethh$ '
;hh' (
}hh) *
publicii 
stringii 
Mensajeii 
{ii 
getii  #
;ii# $
setii% (
;ii( )
}ii* +
publicjj 
stringjj 
Tipojj 
{jj 
getjj  
;jj  !
setjj" %
;jj% &
}jj' (
publickk 
stringkk 
FechaCreacionkk #
{kk$ %
getkk& )
;kk) *
setkk+ .
;kk. /
}kk0 1
}ll 
}mm �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\SolicitudBaneo.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Usuarios& .
{		 
public

 

class

 
SolicitudBaneo

 
{ 
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
int 
IdUsuarioRegistrado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} �"
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\RespuestaSeguimiento.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Usuarios& .
{		 
public

 

class

 
UsuarioSeguimiento

 #
{ 
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
int 
IdUsuarioRegistrado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;C D
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

FotoPerfil  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.8 9
Empty9 >
;? @
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
[ 	
JsonProperty	 
( 
$str )
)) *
]* +
public 
string 
NombreInstitucion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
string8 >
.> ?
Empty? D
;D E
[!! 	
JsonProperty!!	 
(!! 
$str!! &
)!!& '
]!!' (
public"" 
string"" 
NivelEducativo"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
=""3 4
string""5 ;
.""; <
Empty""< A
;""A B
public$$ 
string$$ 
NombreCompleto$$ $
=>$$% '
$"$$( *
{$$* +
Nombre$$+ 1
}$$1 2
$str$$2 3
{$$3 4
PrimerApellido$$4 B
}$$B C
$str$$C D
{$$D E
SegundoApellido$$E T
}$$T U
"$$U V
;$$V W
}%% 
public(( 

class(( 
RespuestaApi(( 
{)) 
[** 	
JsonProperty**	 
(** 
$str** 
)** 
]**  
public++ 
int++ 
Estado++ 
{++ 
get++ 
;++  
set++! $
;++$ %
}++& '
[-- 	
JsonProperty--	 
(-- 
$str-- 
)--  
]--  !
public.. 
string.. 
Mensaje.. 
{.. 
get..  #
;..# $
set..% (
;..( )
}..* +
=.., -
string... 4
...4 5
Empty..5 :
;..: ;
}// 
public11 

class11 
RespuestaApi11 
<11 
T11 
>11  
:11! "
RespuestaApi11# /
{22 
public33 
T33 
Datos33 
{33 
get33 
;33 
set33 !
;33! "
}33# $
}44 
}66 �

�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\RespuestaPerfil.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Usuarios& .
{		 
public

 

class

 
RespuestaPerfil

  
<

  !
T

! "
>

" #
{ 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
	Resultado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
T 
? 
Datos 
{ 
get 
; 
set "
;" #
}$ %
} 
} � 
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\Perfil.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Usuarios& .
{		 
public

 

class

 
Perfil

 
{ 
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
int 
IdUsuarioRegistrado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

FotoPerfil  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
[!! 	
JsonProperty!!	 
(!! 
$str!! +
)!!+ ,
]!!, -
public"" 
int"" 
NumeroPublicaciones"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
[$$ 	
JsonProperty$$	 
($$ 
$str$$ (
)$$( )
]$$) *
public%% 
int%% 
NumeroSeguidores%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
['' 	
JsonProperty''	 
('' 
$str'' &
)''& '
]''' (
public(( 
string(( 
NivelEducativo(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
=((3 4
string((5 ;
.((; <
Empty((< A
;((A B
[** 	
JsonProperty**	 
(** 
$str** %
)**% &
]**& '
public++ 
int++ 
IdInstitucion++  
{++! "
get++# &
;++& '
set++( +
;+++ ,
}++- .
[-- 	
JsonProperty--	 
(-- 
$str-- )
)--) *
]--* +
public.. 
string.. 
NombreInstitucion.. '
{..( )
get..* -
;..- .
set../ 2
;..2 3
}..4 5
=..6 7
string..8 >
...> ?
Empty..? D
;..D E
[00 	
JsonProperty00	 
(00 
$str00 &
)00& '
]00' (
public11 
int11 
NumeroSeguidos11 !
{11" #
get11$ '
;11' (
set11) ,
;11, -
}11. /
}33 
}44 �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Respuesta.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
{ 
public 

class 
	Respuesta 
{ 
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
Codigo 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
int 
	Resultado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
int 
IdDocumento 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
int 
IdPublicacion  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Publicaciones\RespuestaPublicacion.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Publicaciones& 3
{		 
public

 

class

  
RespuestaPublicacion

 %
<

% &
T

& '
>

' (
{ 
[ 
JsonProperty 
( 
$str "
)" #
]# $
public 
int 
	Resultado  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 
JsonProperty 
( 
$str )
)) *
]* +
public 
int 
Estado !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
string2 8
.8 9
Empty9 >
;> ?
[ 
JsonProperty 
( 
$str !
)! "
]" #
public 
T 
? 
Datos 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
RespuestaSimple  
{ 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
	Resultado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
} 
public!! 

class!! 
RespuestaLike!! 
{"" 
[## 	
JsonProperty##	 
(## 
$str## 
)## 
]##  
public$$ 
int$$ 
	Resultado$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
[&& 	
JsonProperty&&	 
(&& 
$str&& 
)&&  
]&&  !
public'' 
string'' 
Mensaje'' 
{'' 
get''  #
;''# $
set''% (
;''( )
}''* +
='', -
string''. 4
.''4 5
Empty''5 :
;'': ;
}(( 
})) �%
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Publicaciones\Publicacion.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Publicaciones& 3
{ 
public 

class 
Publicacion 
{ 
[ 	
JsonProperty	 
( 
$str #
)# $
]$ %
public 
int 
IdCategoria 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
ResuContenido #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
NivelEducativo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;B C
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
int 
IdMateriaYRama !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
$str #
)# $
]$ %
public 
int 
IdDocumento 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
int 
IdPublicacion  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
[!! 	
JsonProperty!!	 
(!! 
$str!! 
)!! 
]!!  
public"" 
string"" 
Estado"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
=""+ ,
string""- 3
.""3 4
Empty""4 9
;""9 :
[$$ 	
JsonProperty$$	 
($$ 
$str$$ #
)$$# $
]$$$ %
public%% 
int%% 
NumeroLiker%% 
{%%  
get%%! $
;%%$ %
set%%& )
;%%) *
}%%+ ,
['' 	
JsonProperty''	 
('' 
$str'' -
)''- .
]''. /
public(( 
int(( !
NumeroVisualizaciones(( (
{(() *
get((+ .
;((. /
set((0 3
;((3 4
}((5 6
[** 	
JsonProperty**	 
(** 
$str** '
)**' (
]**( )
public++ 
int++ 
NumeroDescargas++ "
{++# $
get++% (
;++( )
set++* -
;++- .
}++/ 0
[-- 	
JsonProperty--	 
(-- 
$str-- +
)--+ ,
]--, -
public.. 
int.. 
IdUsuarioRegistrado.. &
{..' (
get..) ,
;.., -
set... 1
;..1 2
}..3 4
[11 	
JsonProperty11	 
(11 
$str11 
)11 
]11  
public22 
string22 
Titulo22 
{22 
get22 "
;22" #
set22$ '
;22' (
}22) *
=22+ ,
string22- 3
.223 4
Empty224 9
;229 :
[44 	
JsonProperty44	 
(44 
$str44 
)44 
]44 
public55 
string55 
Ruta55 
{55 
get55  
;55  !
set55" %
;55% &
}55' (
=55) *
string55+ 1
.551 2
Empty552 7
;557 8
[77 	
JsonProperty77	 
(77 
$str77 &
)77& '
]77' (
public88 
string88 
NombreCompleto88 $
{88% &
get88' *
;88* +
set88, /
;88/ 0
}881 2
=883 4
string885 ;
.88; <
Empty88< A
;88A B
}:: 
};; �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\UsuarioLogin.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Perfil& ,
{ 
public 

class 
UsuarioLogin 
{ 
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

Identifier  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
[		 	
JsonProperty			 
(		 
$str		 #
)		# $
]		$ %
public

 
string

 
Contrasenia

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
string

2 8
.

8 9
Empty

9 >
;

> ?
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\UsuarioRegistro.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Perfil& ,
{ 
public 

class 
UsuarioRegistro  
{ 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[		 	
JsonProperty			 
(		 
$str		 #
)		# $
]		$ %
public

 
string

 
Contrasenia

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
string

2 8
.

8 9
Empty

9 >
;

> ?
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

FotoPerfil  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
int 
IdInstitucion  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\UsuarioLoginRespuesta.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Perfil& ,
{ 
public 

class !
UsuarioLoginRespuesta &
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
bool 
Error 
{ 
get 
;  
set! $
;$ %
}& '
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

  
public 
int 
Estado 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
=* +
string, 2
.2 3
Empty3 8
;8 9
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
DatosUsuario 
Datos !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
public 

class 
DatosUsuario 
{ 
public 
int 
	IdUsuario 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 

FotoPerfil  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
public   
string   

TipoAcceso    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
=  / 0
string  1 7
.  7 8
Empty  8 =
;  = >
}!! 
}## �+
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\PerfilPropio.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Perfil& ,
{ 
public 

class 
PerfilPropio 
{ 
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
int 
Codigo 
{ 
get 
;  
set! $
;$ %
}& '
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
DatosPerfil 
Datos  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
public 

class 
DatosPerfil 
{ 
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
string 
IdUsuarioRegistrado )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
string: @
.@ A
EmptyA F
;F G
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public   
string   

FotoPerfil    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
=  / 0
string  1 7
.  7 8
Empty  8 =
;  = >
["" 	
JsonProperty""	 
("" 
$str"" 
)"" 
]""  
public## 
string## 
Correo## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
=##+ ,
string##- 3
.##3 4
Empty##4 9
;##9 :
[%% 	
JsonProperty%%	 
(%% 
$str%% %
)%%% &
]%%& '
public&& 
string&& 
NombreUsuario&& #
{&&$ %
get&&& )
;&&) *
set&&+ .
;&&. /
}&&0 1
=&&2 3
string&&4 :
.&&: ;
Empty&&; @
;&&@ A
[(( 	
JsonProperty((	 
((( 
$str(( %
)((% &
]((& '
public)) 
string)) 
IdInstitucion)) #
{))$ %
get))& )
;))) *
set))+ .
;)). /
}))0 1
=))2 3
string))4 :
.)): ;
Empty)); @
;))@ A
[++ 	
JsonProperty++	 
(++ 
$str++ )
)++) *
]++* +
public,, 
string,, 
NombreInstitucion,, '
{,,( )
get,,* -
;,,- .
set,,/ 2
;,,2 3
},,4 5
=,,6 7
string,,8 >
.,,> ?
Empty,,? D
;,,D E
[.. 	
JsonProperty..	 
(.. 
$str.. &
)..& '
]..' (
public// 
string// 
NivelEducativo// $
{//% &
get//' *
;//* +
set//, /
;/// 0
}//1 2
=//3 4
string//5 ;
.//; <
Empty//< A
;//A B
[11 	
JsonProperty11	 
(11 
$str11 (
)11( )
]11) *
public22 
string22 
NumeroSeguidores22 &
{22' (
get22) ,
;22, -
set22. 1
;221 2
}223 4
=225 6
string227 =
.22= >
Empty22> C
;22C D
[44 	
JsonProperty44	 
(44 
$str44 &
)44& '
]44' (
public55 
string55 
NumeroSeguidos55 $
{55% &
get55' *
;55* +
set55, /
;55/ 0
}551 2
=553 4
string555 ;
.55; <
Empty55< A
;55A B
}66 
}77 �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\SolicitudCambioContrasena.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
Perfil& ,
{ 
public 

class %
SolicitudCambioContrasena *
{ 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[

 	
JsonProperty

	 
(

 
$str

 
)

 
]

  
public 
string 
Codigo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
string- 3
.3 4
Empty4 9
;9 :
[ 	
JsonProperty	 
( 
$str (
)( )
]) *
public 
string 
NuevaContrasenia &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
string7 =
.= >
Empty> C
;C D
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Comentarios\ComentarioRespuesta.cs
	namespace		 
EduShare_Escritorio		 !
.		! "
Modelos		" )
.		) *
ComentarioRespuesta		* =
{

 
public 
class "
CrearComentarioRequest +
{ 	
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
	Contenido 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
int 
IdPublicacion  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 	
public 
class 
RespuestaComentario (
<( )
T) *
>* +
{ 	
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
	Resultado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
T 
Datos 
{ 
get 
; 
set !
;! "
}# $
} 	
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Comentarios\Comentario.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &

Comentario& 0
{		 
public

 

class

 

Comentario

 
{ 
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
int 
IdComentario 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
	Contenido 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
int 
IdPublicacion  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
int 
IdUsuarioRegistrado &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
PrimerApellido $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
SegundoApellido %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

FotoPerfil  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public"" 
string"" 
NombreCompleto"" $
=>""% '
$"""( *
{""* +
Nombre""+ 1
}""1 2
$str""2 3
{""3 4
PrimerApellido""4 B
}""B C
$str""C D
{""D E
SegundoApellido""E T
}""T U
"""U V
.""V W
Trim""W [
(""[ \
)""\ ]
;""] ^
public## 
string## 
FechaFormateada## %
=>##& (
Fecha##) .
.##. /
ToString##/ 7
(##7 8
$str##8 J
)##J K
;##K L
}$$ 
}%% �

�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\RespuestaInstitucion.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
	Catalogos& /
{		 
public

 

class

  
RespuestaInstitucion

 %
<

% &
T

& '
>

' (
{ 
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
int 
	Resultado 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
T 
? 
Datos 
{ 
get 
; 
set "
;" #
}$ %
} 
} �

�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\RespuestaCatalogos.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
	Catalogos& /
{ 
public 

class 
RespuestaCatalogos #
<# $
T$ %
>% &
{ 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
	Resultado 
{ 
get "
;" #
set$ '
;' (
}) *
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
=, -
string. 4
.4 5
Empty5 :
;: ;
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
T 
? 
Datos 
{ 
get 
; 
set "
;" #
}$ %
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Rama.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
	Catalogos& /
{		 
public

 

class

 
Rama

 
{ 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
IdRama 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

NombreRama  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Materia.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
	Catalogos& /
{		 
public

 

class

 
Materia

 
{ 
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
int 
	IdMateria 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
string 
NombreMateria #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
string4 :
.: ;
Empty; @
;@ A
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
IdRama 
{ 
get 
;  
set! $
;$ %
}& '
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

NombreRama  
{! "
get# &
;& '
set( +
;+ ,
}- .
=/ 0
string1 7
.7 8
Empty8 =
;= >
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
int 
IdMateriaYRama !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �

�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Institucion.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
	Catalogos& /
{ 
public 

class 
Institucion 
{ 
[ 	
JsonProperty	 
( 
$str %
)% &
]& '
public 
int 
IdInstitucion  
{! "
get# &
;& '
set( +
;+ ,
}- .
[

 	
JsonProperty

	 
(

 
$str

 )
)

) *
]

* +
public 
string 
NombreInstitucion '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
string8 >
.> ?
Empty? D
;D E
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
NivelEducativo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Categoria.cs
	namespace 	
EduShare_Escritorio
 
. 
Modelos %
.% &
	Catalogos& /
{ 
public 

class 
	Categoria 
{ 
[		 	
JsonProperty			 
(		 
$str		 #
)		# $
]		$ %
public

 
int

 
IdCategoria

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
JsonProperty	 
( 
$str '
)' (
]( )
public 
string 
NombreCategoria %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
} 
} �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\MainWindow.xaml.cs
	namespace 	
EduShare_Escritorio
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
public 

MainWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
fra_NavigationFrame 
.  
Navigate  (
(( )
new) ,
Vistas- 3
.3 4
Menus4 9
.9 :
MenuPrincipal: G
(G H
)H I
)I J
;J K
this 
. 
Closing 
+= 
MainWindow_Closing .
;. /
} 	
private 
async 
void 
MainWindow_Closing -
(- .
object. 4
?4 5
sender6 <
,< =
System> D
.D E
ComponentModelE S
.S T
CancelEventArgsT c
ed e
)e f
{ 	
PerfilSingleton 
. 
Instance $
.$ %
Reset% *
(* +
)+ ,
;, -
}!! 	
private"" 
void"" &
NavigationFrame_Navigating"" /
(""/ 0
object""0 6
sender""7 =
,""= >%
NavigatingCancelEventArgs""? X
e""Y Z
)""Z [
{## 	
var$$ #
storyb_FadeOutAnimation$$ '
=$$( )
new$$* -
DoubleAnimation$$. =
($$= >
$num$$> ?
,$$? @
$num$$A B
,$$B C
TimeSpan$$D L
.$$L M
FromSeconds$$M X
($$X Y
$num$$Y \
)$$\ ]
)$$] ^
;$$^ _
fra_NavigationFrame%% 
.%%  
BeginAnimation%%  .
(%%. /
Frame%%/ 4
.%%4 5
OpacityProperty%%5 D
,%%D E#
storyb_FadeOutAnimation%%F ]
)%%] ^
;%%^ _
}&& 	
private(( 
void(( %
NavigationFrame_Navigated(( .
(((. /
object((/ 5
sender((6 <
,((< =
NavigationEventArgs((> Q
e((R S
)((S T
{)) 	
var** "
storyb_FadeInAnimation** &
=**' (
new**) ,
DoubleAnimation**- <
(**< =
$num**= >
,**> ?
$num**@ A
,**A B
TimeSpan**C K
.**K L
FromSeconds**L W
(**W X
$num**X [
)**[ \
)**\ ]
;**] ^
fra_NavigationFrame++ 
.++  
BeginAnimation++  .
(++. /
Frame++/ 4
.++4 5
OpacityProperty++5 D
,++D E"
storyb_FadeInAnimation++F \
)++\ ]
;++] ^
},, 	
}-- 
}.. �
�C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\AssemblyInfo.cs
[ 
assembly 	
:	 

	ThemeInfo 
( &
ResourceDictionaryLocation 
. 
None #
,# $&
ResourceDictionaryLocation 
. 
SourceAssembly -
)

 
]

 �
|C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\App.xaml.cs
	namespace 	
EduShare_Escritorio
 
{ 
public 

partial 
class 
App 
: 
Application *
{		 
public

 
static

 %
NotificacionSocketService

 / 
SocketNotificaciones

0 D
{

E F
get

G J
;

J K
set

L O
;

O P
}

Q R
=

S T
new

U X%
NotificacionSocketService

Y r
(

r s
)

s t
;

t u
} 
} 