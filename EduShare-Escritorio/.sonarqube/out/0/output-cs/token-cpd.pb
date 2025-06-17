’(
ùC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\VentanaEmergentePersonalizada.xaml.cs
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
}VV â‡
£C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\VisualizarPerfilAmigo.xaml.cs
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
$str	WW< ç
,
WWç é

DialogType
WWè ô
.
WWô ö
Error
WWö ü
)
WWü †
;
WW† °
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
Error	tt~ É
)
ttÉ Ñ
;
ttÑ Ö
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
ÄÄ 
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ 
ex
ÇÇ 
)
ÇÇ  
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ 
LogFatal
ÑÑ  
(
ÑÑ  !
ex
ÑÑ! #
)
ÑÑ# $
;
ÑÑ$ %)
MostrarMensajePersonalizado
ÖÖ +
(
ÖÖ+ ,
$str
ÖÖ, b
,
ÖÖb c

DialogType
ÖÖd n
.
ÖÖn o
Error
ÖÖo t
)
ÖÖt u
;
ÖÖu v
}
ÜÜ 
}
áá 	
private
ãã 
async
ãã 
void
ãã &
MostrarInformacionPerfil
ãã 3
(
ãã3 4
)
ãã4 5
{
åå 	
try
çç 
{
éé 
string
èè 
token
èè 
=
èè 
PerfilSingleton
èè .
.
èè. /
Instance
èè/ 7
.
èè7 8
TokenJwt
èè8 @
;
èè@ A
int
êê !
idUsuarioRegistrado
êê '
=
êê( )
_usuario
êê* 2
.
êê2 3!
IdUsuarioRegistrado
êê3 F
;
êêF G
var
ëë 
	respuesta
ëë 
=
ëë 
await
ëë  %
PerfilServicio
ëë& 4
.
ëë4 5
BuscarPerfilPorId
ëë5 F
(
ëëF G!
idUsuarioRegistrado
ëëG Z
,
ëëZ [
token
ëë\ a
)
ëëa b
;
ëëb c
switch
ìì 
(
ìì 
	respuesta
ìì !
.
ìì! "
	Resultado
ìì" +
)
ìì+ ,
{
îî 
case
ïï 
$num
ïï 
:
ïï 
var
ññ 
listaPerfiles
ññ )
=
ññ* +
new
ññ, /
List
ññ0 4
<
ññ4 5
UsuarioPerfil
ññ5 B
>
ññB C
(
ññC D
)
ññD E
;
ññE F
byte
óó 
[
óó 
]
óó 
imagenBinaria
óó ,
=
óó- .
Array
óó/ 4
.
óó4 5
Empty
óó5 :
<
óó: ;
byte
óó; ?
>
óó? @
(
óó@ A
)
óóA B
;
óóB C
try
òò 
{
ôô 
var
öö 
grpc
öö  $
=
öö% &
new
öö' *&
FileServiceClientHandler
öö+ C
(
ööC D
)
ööD E
;
ööE F
var
õõ 
(
õõ  !
imagen
õõ! '
,
õõ' (
_
õõ) *
)
õõ* +
=
õõ, -
await
õõ. 3
grpc
õõ4 8
.
õõ8 9 
DownloadImageAsync
õõ9 K
(
õõK L
	respuesta
õõL U
.
õõU V
Datos
õõV [
.
õõ[ \

FotoPerfil
õõ\ f
)
õõf g
;
õõg h
imagenBinaria
úú )
=
úú* +
imagen
úú, 2
??
úú3 5
Array
úú6 ;
.
úú; <
Empty
úú< A
<
úúA B
byte
úúB F
>
úúF G
(
úúG H
)
úúH I
;
úúI J
}
ùù 
catch
ûû 
(
ûû 
	Exception
ûû (
ex
ûû) +
)
ûû+ ,
{
üü 
_logger
†† #
.
††# $
LogError
††$ ,
(
††, -
ex
††- /
)
††/ 0
;
††0 1)
MostrarMensajePersonalizado
°° 7
(
°°7 8
$str
°°8 }
,
°°} ~

DialogType°° â
.°°â ä
Error°°ä è
)°°è ê
;°°ê ë
}
¢¢ 
UsuarioPerfil
§§ %
usuario
§§& -
=
§§. /
new
§§0 3
UsuarioPerfil
§§4 A
{
•• !
IdUsuarioRegistrado
¶¶ /
=
¶¶0 1
	respuesta
¶¶2 ;
.
¶¶; <
Datos
¶¶< A
.
¶¶A B!
IdUsuarioRegistrado
¶¶B U
,
¶¶U V
Nombre
ßß "
=
ßß# $
	respuesta
ßß% .
.
ßß. /
Datos
ßß/ 4
.
ßß4 5
Nombre
ßß5 ;
,
ßß; <
PrimerApellido
®® *
=
®®+ ,
	respuesta
®®- 6
.
®®6 7
Datos
®®7 <
.
®®< =
PrimerApellido
®®= K
,
®®K L
SegundoApellido
©© +
=
©©, -
	respuesta
©©. 7
.
©©7 8
Datos
©©8 =
.
©©= >
SegundoApellido
©©> M
,
©©M N
FotoPerfilRuta
™™ *
=
™™+ ,
	respuesta
™™- 6
.
™™6 7
Datos
™™7 <
.
™™< =

FotoPerfil
™™= G
,
™™G H
NombreUsuario
¨¨ )
=
¨¨* +
	respuesta
¨¨, 5
.
¨¨5 6
Datos
¨¨6 ;
.
¨¨; <
NombreUsuario
¨¨< I
,
¨¨I J
NombreInstitucion
≠≠ -
=
≠≠. /
	respuesta
≠≠0 9
.
≠≠9 :
Datos
≠≠: ?
.
≠≠? @
NombreInstitucion
≠≠@ Q
,
≠≠Q R
NivelEducativo
ØØ *
=
ØØ+ ,
	respuesta
ØØ- 6
.
ØØ6 7
Datos
ØØ7 <
.
ØØ< =
NivelEducativo
ØØ= K
,
ØØK L
	Seguidore
∞∞ %
=
∞∞& '
	respuesta
∞∞( 1
.
∞∞1 2
Datos
∞∞2 7
.
∞∞7 8
NumeroSeguidores
∞∞8 H
,
∞∞H I
Seguidos
±± $
=
±±% &
	respuesta
±±' 0
.
±±0 1
Datos
±±1 6
.
±±6 7
NumeroSeguidos
±±7 E
,
±±E F
Imagen
≥≥ "
=
≥≥# $
ConvertirABitmap
≥≥% 5
(
≥≥5 6
imagenBinaria
≥≥6 C
)
≥≥C D
}
¥¥ 
;
¥¥ 
LlenarCampos
∑∑ $
(
∑∑$ %
usuario
∑∑% ,
)
∑∑, -
;
∑∑- .
break
ππ 
;
ππ 
case
ªª 
(
ªª 
int
ªª 
)
ªª 
HttpStatusCode
ªª ,
.
ªª, -
Unauthorized
ªª- 9
:
ªª9 :)
MostrarMensajePersonalizado
ºº 3
(
ºº3 4
$str
ºº4 q
,
ººq r

DialogType
ººs }
.
ºº} ~
Errorºº~ É
)ººÉ Ñ
;ººÑ Ö
NavigationService
ΩΩ )
.
ΩΩ) *
Navigate
ΩΩ* 2
(
ΩΩ2 3
new
ΩΩ3 6
Login
ΩΩ7 <
(
ΩΩ< =
)
ΩΩ= >
)
ΩΩ> ?
;
ΩΩ? @
PerfilSingleton
ææ '
.
ææ' (
Instance
ææ( 0
.
ææ0 1
Reset
ææ1 6
(
ææ6 7
)
ææ7 8
;
ææ8 9
break
øø 
;
øø 
case
¡¡ 
$num
¡¡ 
:
¡¡ )
MostrarMensajePersonalizado
¬¬ 3
(
¬¬3 4
$str
¬¬4 t
,
¬¬t u

DialogType¬¬v Ä
.¬¬Ä Å
Error¬¬Å Ü
)¬¬Ü á
;¬¬á à
break
√√ 
;
√√ 
default
≈≈ 
:
≈≈ )
MostrarMensajePersonalizado
∆∆ 3
(
∆∆3 4
$"
∆∆4 6
$str
∆∆6 =
{
∆∆= >
	respuesta
∆∆> G
.
∆∆G H
Mensaje
∆∆H O
}
∆∆O P
"
∆∆P Q
,
∆∆Q R

DialogType
∆∆S ]
.
∆∆] ^
Warning
∆∆^ e
)
∆∆e f
;
∆∆f g
break
«« 
;
«« 
}
»» 
}
…… 
catch
   
(
   
	Exception
   
ex
   
)
    
{
ÀÀ 
_logger
ÃÃ 
.
ÃÃ 
LogFatal
ÃÃ  
(
ÃÃ  !
ex
ÃÃ! #
)
ÃÃ# $
;
ÃÃ$ %)
MostrarMensajePersonalizado
ÕÕ +
(
ÕÕ+ ,
$str
ÕÕ, J
,
ÕÕJ K

DialogType
ÕÕL V
.
ÕÕV W
Error
ÕÕW \
)
ÕÕ\ ]
;
ÕÕ] ^
}
ŒŒ 
}
œœ 	
private
—— 
async
—— 
void
—— "
VerificarSeguimiento
—— /
(
——/ 0
int
——0 3!
idUsuarioRegistrado
——4 G
)
——G H
{
““ 	
string
”” 
token
”” 
=
”” 
PerfilSingleton
”” *
.
””* +
Instance
””+ 3
.
””3 4
TokenJwt
””4 <
;
””< =
var
‘‘ "
respuestaSeguimiento
‘‘ $
=
‘‘% &
await
‘‘' ,
PerfilServicio
‘‘- ;
.
‘‘; <"
VerificarSeguimiento
‘‘< P
(
‘‘P Q!
idUsuarioRegistrado
‘‘Q d
,
‘‘d e
token
‘‘f k
)
‘‘k l
;
‘‘l m
if
’’ 
(
’’ "
respuestaSeguimiento
’’ $
.
’’$ %
Estado
’’% +
==
’’, .
$num
’’/ 2
)
’’2 3
{
÷÷ 

brd_Seguir
◊◊ 
.
◊◊ 

Visibility
◊◊ %
=
◊◊& '

Visibility
◊◊( 2
.
◊◊2 3
	Collapsed
◊◊3 <
;
◊◊< =
}
ÿÿ 
else
ŸŸ 
if
ŸŸ 
(
ŸŸ "
respuestaSeguimiento
ŸŸ )
.
ŸŸ) *
Estado
ŸŸ* 0
==
ŸŸ1 3
$num
ŸŸ4 7
)
ŸŸ7 8
{
⁄⁄ 

brd_Seguir
€€ 
.
€€ 

Visibility
€€ %
=
€€& '

Visibility
€€( 2
.
€€2 3
Visible
€€3 :
;
€€: ;
}
‹‹ 
else
›› 
{
ﬁﬁ )
MostrarMensajePersonalizado
ﬂﬂ +
(
ﬂﬂ+ ,
$str
ﬂﬂ, P
,
ﬂﬂP Q

DialogType
ﬂﬂR \
.
ﬂﬂ\ ]
Warning
ﬂﬂ] d
)
ﬂﬂd e
;
ﬂﬂe f
}
‡‡ 
}
‚‚ 	
private
‰‰ 
void
‰‰ 
LlenarCampos
‰‰ !
(
‰‰! "
UsuarioPerfil
‰‰" /
usuario
‰‰0 7
)
‰‰7 8
{
ÂÂ 	 
txt_NombreCompleto
ÊÊ 
.
ÊÊ 
Text
ÊÊ #
=
ÊÊ$ %
usuario
ÊÊ& -
.
ÊÊ- .
NombreCompleto
ÊÊ. <
;
ÊÊ< =
txt_Usuario
ÁÁ 
.
ÁÁ 
Text
ÁÁ 
=
ÁÁ 
usuario
ÁÁ &
.
ÁÁ& '
NombreUsuario
ÁÁ' 4
;
ÁÁ4 5 
txt_NivelEducativo
ËË 
.
ËË 
Text
ËË #
=
ËË$ %
usuario
ËË& -
.
ËË- .
NivelEducativo
ËË. <
;
ËË< =
txt_Institucion
ÈÈ 
.
ÈÈ 
Text
ÈÈ  
=
ÈÈ! "
usuario
ÈÈ# *
.
ÈÈ* +
NombreInstitucion
ÈÈ+ <
;
ÈÈ< =
txt_Seguidores
ÎÎ 
.
ÎÎ 
Text
ÎÎ 
=
ÎÎ  !
usuario
ÎÎ" )
.
ÎÎ) *
	Seguidore
ÎÎ* 3
.
ÎÎ3 4
ToString
ÎÎ4 <
(
ÎÎ< =
)
ÎÎ= >
;
ÎÎ> ?
txt_Seguidos
ÏÏ 
.
ÏÏ 
Text
ÏÏ 
=
ÏÏ 
usuario
ÏÏ  '
.
ÏÏ' (
Seguidos
ÏÏ( 0
.
ÏÏ0 1
ToString
ÏÏ1 9
(
ÏÏ9 :
)
ÏÏ: ;
;
ÏÏ; <
img_FotoPerfil
ÌÌ 
.
ÌÌ 
ImageSource
ÌÌ &
=
ÌÌ' (
usuario
ÌÌ) 0
.
ÌÌ0 1
Imagen
ÌÌ1 7
;
ÌÌ7 8
}
ÓÓ 	
public
 
BitmapImage
 
?
 
ConvertirABitmap
 ,
(
, -
byte
- 1
[
1 2
]
2 3
datos
4 9
)
9 :
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
datos
ÚÚ 
==
ÚÚ 
null
ÚÚ 
||
ÚÚ  
datos
ÚÚ! &
.
ÚÚ& '
Length
ÚÚ' -
==
ÚÚ. 0
$num
ÚÚ1 2
)
ÚÚ2 3
return
ÚÚ4 :
null
ÚÚ; ?
;
ÚÚ? @
using
ÙÙ 
var
ÙÙ 
stream
ÙÙ 
=
ÙÙ 
new
ÙÙ "
MemoryStream
ÙÙ# /
(
ÙÙ/ 0
datos
ÙÙ0 5
)
ÙÙ5 6
;
ÙÙ6 7
var
ıı 
image
ıı 
=
ıı 
new
ıı 
BitmapImage
ıı '
(
ıı' (
)
ıı( )
;
ıı) *
image
ˆˆ 
.
ˆˆ 
	BeginInit
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ 
image
˜˜ 
.
˜˜ 
CacheOption
˜˜ 
=
˜˜ 
BitmapCacheOption
˜˜  1
.
˜˜1 2
OnLoad
˜˜2 8
;
˜˜8 9
image
¯¯ 
.
¯¯ 
StreamSource
¯¯ 
=
¯¯  
stream
¯¯! '
;
¯¯' (
image
˘˘ 
.
˘˘ 
EndInit
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
return
˙˙ 
image
˙˙ 
;
˙˙ 
}
˚˚ 	
private
˝˝ 
void
˝˝ #
RegresarAlLaComunidad
˝˝ *
(
˝˝* +
object
˝˝+ 1
sender
˝˝2 8
,
˝˝8 9"
MouseButtonEventArgs
˝˝: N
e
˝˝O P
)
˝˝P Q
{
˛˛ 	
_frame
ˇˇ 
.
ˇˇ 
Navigate
ˇˇ 
(
ˇˇ 
new
ˇˇ 
BuscarPerfil
ˇˇ  ,
(
ˇˇ, -
_frame
ˇˇ- 3
)
ˇˇ3 4
)
ˇˇ4 5
;
ˇˇ5 6
}
ÅÅ 	
private
ÉÉ 
async
ÉÉ 
void
ÉÉ 
SeguirPerfil
ÉÉ '
(
ÉÉ' (
object
ÉÉ( .
sender
ÉÉ/ 5
,
ÉÉ5 6
RoutedEventArgs
ÉÉ7 F
e
ÉÉG H
)
ÉÉH I
{
ÑÑ 	
try
ÖÖ 
{
ÜÜ 
string
áá 
token
áá 
=
áá 
PerfilSingleton
áá .
.
áá. /
Instance
áá/ 7
.
áá7 8
TokenJwt
áá8 @
;
áá@ A
int
àà 
idUsuarioASeguir
àà $
=
àà% &
_usuario
àà' /
.
àà/ 0!
IdUsuarioRegistrado
àà0 C
;
ààC D
var
ää 
	respuesta
ää 
=
ää 
await
ää  %
PerfilServicio
ää& 4
.
ää4 5
SeguirUsuario
ää5 B
(
ääB C
idUsuarioASeguir
ääC S
,
ääS T
token
ääU Z
)
ääZ [
;
ää[ \
if
åå 
(
åå 
	respuesta
åå 
.
åå 
Estado
åå $
==
åå% '
$num
åå( +
)
åå+ ,
{
çç )
MostrarMensajePersonalizado
éé /
(
éé/ 0
$str
éé0 N
,
ééN O

DialogType
ééP Z
.
ééZ [
Success
éé[ b
)
ééb c
;
ééc d

brd_Seguir
èè 
.
èè 

Visibility
èè )
=
èè* +

Visibility
èè, 6
.
èè6 7
	Collapsed
èè7 @
;
èè@ A
if
ëë 
(
ëë 
int
ëë 
.
ëë 
TryParse
ëë $
(
ëë$ %
txt_Seguidores
ëë% 3
.
ëë3 4
Text
ëë4 8
,
ëë8 9
out
ëë: =
int
ëë> A

seguidores
ëëB L
)
ëëL M
)
ëëM N
{
íí 
txt_Seguidores
ìì &
.
ìì& '
Text
ìì' +
=
ìì, -
(
ìì. /

seguidores
ìì/ 9
+
ìì: ;
$num
ìì< =
)
ìì= >
.
ìì> ?
ToString
ìì? G
(
ììG H
)
ììH I
;
ììI J
}
îî  
EnviarNotificacion
ïï &
(
ïï& '
)
ïï' (
;
ïï( )
}
óó 
else
òò 
if
òò 
(
òò 
	respuesta
òò "
.
òò" #
Estado
òò# )
==
òò* ,
$num
òò- 0
)
òò0 1
{
ôô )
MostrarMensajePersonalizado
öö /
(
öö/ 0
$str
öö0 T
,
ööT U

DialogType
ööV `
.
öö` a
Warning
ööa h
)
ööh i
;
ööi j

brd_Seguir
õõ 
.
õõ 

Visibility
õõ )
=
õõ* +

Visibility
õõ, 6
.
õõ6 7
	Collapsed
õõ7 @
;
õõ@ A
}
úú 
else
ùù 
{
ûû )
MostrarMensajePersonalizado
üü /
(
üü/ 0
$"
üü0 2
$str
üü2 9
{
üü9 :
	respuesta
üü: C
.
üüC D
Mensaje
üüD K
}
üüK L
"
üüL M
,
üüM N

DialogType
üüO Y
.
üüY Z
Warning
üüZ a
)
üüa b
;
üüb c
}
†† 
}
°° 
catch
¢¢ 
(
¢¢ 
	Exception
¢¢ 
ex
¢¢ 
)
¢¢  
{
££ 
_logger
§§ 
.
§§ 
LogError
§§  
(
§§  !
ex
§§! #
)
§§# $
;
§§$ %)
MostrarMensajePersonalizado
•• +
(
••+ ,
$str
••, R
,
••R S

DialogType
••T ^
.
••^ _
Error
••_ d
)
••d e
;
••e f
}
¶¶ 
}
ßß 	
private
™™ 
async
™™ 
void
™™  
EnviarNotificacion
™™ -
(
™™- .
)
™™. /
{
´´ 	
try
¨¨ 
{
≠≠ 
string
ÆÆ 
token
ÆÆ 
=
ÆÆ 
PerfilSingleton
ÆÆ .
.
ÆÆ. /
Instance
ÆÆ/ 7
.
ÆÆ7 8
TokenJwt
ÆÆ8 @
;
ÆÆ@ A
int
ØØ 
idOrigen
ØØ 
=
ØØ 
PerfilSingleton
ØØ .
.
ØØ. /
Instance
ØØ/ 7
.
ØØ7 8!
IdUsuarioRegistrado
ØØ8 K
;
ØØK L
string
∞∞ 
	idDestino
∞∞  
=
∞∞! "
_usuario
∞∞# +
.
∞∞+ ,!
IdUsuarioRegistrado
∞∞, ?
.
∞∞? @
ToString
∞∞@ H
(
∞∞H I
)
∞∞I J
;
∞∞J K
var
±± 
	respuesta
±± 
=
±± 
await
±±  %
PerfilServicio
±±& 4
.
±±4 5
ObtenerSeguidores
±±5 F
(
±±F G
token
±±G L
)
±±L M
;
±±M N
if
≥≥ 
(
≥≥ 
	respuesta
≥≥ 
?
≥≥ 
.
≥≥ 
Datos
≥≥ $
!=
≥≥% '
null
≥≥( ,
)
≥≥, -
{
¥¥ 
List
µµ 
<
µµ 
int
µµ 
>
µµ 
idsSeguidores
µµ +
=
µµ, -
	respuesta
µµ. 7
.
µµ7 8
Datos
µµ8 =
.
∂∂ 
Select
∂∂ 
(
∂∂  
s
∂∂  !
=>
∂∂" $
s
∂∂% &
.
∂∂& '!
IdUsuarioRegistrado
∂∂' :
)
∂∂: ;
.
∑∑ 
ToList
∑∑ 
(
∑∑  
)
∑∑  !
;
∑∑! "
var
ππ 
notificacion
ππ $
=
ππ% &
new
ππ' *
{
∫∫ 
accion
ªª 
=
ªª  
$str
ªª! /
,
ªª/ 0
UsuarioOrigenId
ºº '
=
ºº( )
idOrigen
ºº* 2
,
ºº2 3
UsuarioDestinoId
ΩΩ (
=
ΩΩ) *
new
ΩΩ+ .
List
ΩΩ/ 3
<
ΩΩ3 4
string
ΩΩ4 :
>
ΩΩ: ;
{
ΩΩ< =
	idDestino
ΩΩ> G
}
ΩΩH I
,
ΩΩI J
Titulo
ææ 
=
ææ  
$str
ææ! 1
,
ææ1 2
Mensaje
øø 
=
øø  !
$"
øø" $
$str
øø$ %
{
øø% &
PerfilSingleton
øø& 5
.
øø5 6
Instance
øø6 >
.
øø> ?
NombreUsuario
øø? L
}
øøL M
$str
øøM d
"
øød e
,
øøe f
Tipo
¿¿ 
=
¿¿ 
$str
¿¿ +
,
¿¿+ ,
FechaCreacion
¡¡ %
=
¡¡& '
DateTime
¡¡( 0
.
¡¡0 1
Now
¡¡1 4
.
¡¡4 5
ToString
¡¡5 =
(
¡¡= >
$str
¡¡> S
)
¡¡S T
}
¬¬ 
;
¬¬ 
string
ƒƒ 
json
ƒƒ 
=
ƒƒ  !
JsonConvert
ƒƒ" -
.
ƒƒ- .
SerializeObject
ƒƒ. =
(
ƒƒ= >
notificacion
ƒƒ> J
)
ƒƒJ K
;
ƒƒK L
await
≈≈ 
App
≈≈ 
.
≈≈ "
SocketNotificaciones
≈≈ 2
.
≈≈2 3 
EnviarMensajeAsync
≈≈3 E
(
≈≈E F
json
≈≈F J
)
≈≈J K
;
≈≈K L
}
»» 
}
…… 
catch
   
(
   
	Exception
   
ex
   
)
    
{
ÀÀ 
_logger
ÃÃ 
.
ÃÃ 
LogError
ÃÃ  
(
ÃÃ  !
ex
ÃÃ! #
)
ÃÃ# $
;
ÃÃ$ %
Console
ÕÕ 
.
ÕÕ 
	WriteLine
ÕÕ !
(
ÕÕ! "
$"
ÕÕ" $
$str
ÕÕ$ C
{
ÕÕC D
ex
ÕÕD F
.
ÕÕF G
Message
ÕÕG N
}
ÕÕN O
"
ÕÕO P
)
ÕÕP Q
;
ÕÕQ R
}
ŒŒ 
}
–– 	
}
—— 
}““ —›
ûC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\RegistrarUsuario.xaml.cs
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
cmb_Instituci√≥n?? 
.?? 
ItemsSource?? '
=??( )"
_todasLasInstituciones??* @
;??@ A
cmb_Instituci√≥n@@ 
.@@ 
DisplayMemberPath@@ -
=@@. /
$str@@0 C
;@@C D
cmb_Instituci√≥nAA 
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
cmb_Instituci√≥nQQ 
.QQ  
ItemsSourceQQ  +
=QQ, -
	filtradasQQ. 7
;QQ7 8
cmb_Instituci√≥nRR 
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
cmb_Instituci√≥nZZ 
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
$str	xx0 ã
,
xxã å

DialogType
xxç ó
.
xxó ò
Warning
xxò ü
)
xxü †
;
xx† °
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
ÅÅ 	
private
ÉÉ 
async
ÉÉ 
void
ÉÉ 
RespuestaDeLaAPI
ÉÉ +
(
ÉÉ+ ,
UsuarioRegistro
ÉÉ, ;
usuarioRegistro
ÉÉ< K
)
ÉÉK L
{
ÑÑ 	
	Respuesta
ÖÖ 
	respuesta
ÖÖ 
=
ÖÖ  !
await
ÖÖ" '
UsuarioServicio
ÖÖ( 7
.
ÖÖ7 8#
RegistrarUsuarioAsync
ÖÖ8 M
(
ÖÖM N
usuarioRegistro
ÖÖN ]
)
ÖÖ] ^
;
ÖÖ^ _
switch
ÜÜ 
(
ÜÜ 
	respuesta
ÜÜ 
.
ÜÜ 
Codigo
ÜÜ $
)
ÜÜ$ %
{
áá 
case
àà 
(
àà 
int
àà 
)
àà 
HttpStatusCode
àà )
.
àà) *
OK
àà* ,
:
àà, -)
MostrarMensajePersonalizado
ââ /
(
ââ/ 0
$strââ0 ¶
,ââ¶ ß

DialogTypeââ® ≤
.ââ≤ ≥
Successââ≥ ∫
)ââ∫ ª
;ââª º
Login
ää 
login
ää 
=
ää  !
new
ää" %
(
ää% &
)
ää& '
;
ää' (
this
ãã 
.
ãã 
NavigationService
ãã *
.
ãã* +
Navigate
ãã+ 3
(
ãã3 4
login
ãã4 9
)
ãã9 :
;
ãã: ;
break
åå 
;
åå 
case
éé 
(
éé 
int
éé 
)
éé 
HttpStatusCode
éé )
.
éé) *
Conflict
éé* 2
:
éé2 3)
MostrarMensajePersonalizado
èè /
(
èè/ 0
$"
èè0 2
{
èè2 3
	respuesta
èè3 <
.
èè< =
Mensaje
èè= D
}
èèD E
$str
èèE `
"
èè` a
,
èèa b

DialogType
èèc m
.
èèm n
Warning
èèn u
)
èèu v
;
èèv w
break
êê 
;
êê 
case
ëë 
(
ëë 
int
ëë 
)
ëë 
HttpStatusCode
ëë )
.
ëë) *!
InternalServerError
ëë* =
:
ëë= >)
MostrarMensajePersonalizado
íí /
(
íí/ 0
$str
íí0 b
,
ííb c

DialogType
ííd n
.
íín o
Error
íío t
)
íít u
;
ííu v
break
ìì 
;
ìì 
default
ïï 
:
ïï )
MostrarMensajePersonalizado
ññ /
(
ññ/ 0
	respuesta
ññ0 9
.
ññ9 :
Mensaje
ññ: A
,
ññA B

DialogType
óó "
.
óó" #
Error
óó# (
)
òò 
;
òò 
break
ôô 
;
ôô 
}
õõ 
}
úú 	
private
ûû 
UsuarioRegistro
ûû 
CrearPerfil
ûû  +
(
ûû+ ,
)
ûû, -
{
üü 	
UsuarioRegistro
†† 
perfil
†† "
=
††# $
new
††% (
(
††( )
)
††) *
;
††* +
perfil
°° 
.
°° 
Correo
°° 
=
°° 
txtb_Correo
°° '
.
°°' (
Text
°°( ,
;
°°, -
string
¢¢ 
contrasenia
¢¢ 
=
¢¢  
isPasswordVisible
¢¢! 2
?
¢¢3 4$
txt_Contrase√±aVisible
¢¢5 J
.
¢¢J K
Text
¢¢K O
:
¢¢P Q
pwb_PasswordBox
¢¢R a
.
¢¢a b
Password
¢¢b j
;
¢¢j k
string
££ 
hashedPassword
££ !
=
££" #
Hasher
££$ *
.
££* +

HashToSHA2
££+ 5
(
££5 6
contrasenia
££6 A
)
££A B
;
££B C
perfil
§§ 
.
§§ 
Contrasenia
§§ 
=
§§  
hashedPassword
§§! /
;
§§/ 0
perfil
•• 
.
•• 
NombreUsuario
••  
=
••! "
txtb_Usuario
••# /
.
••/ 0
Text
••0 4
.
••4 5
Trim
••5 9
(
••9 :
)
••: ;
;
••; <
perfil
¶¶ 
.
¶¶ 
Nombre
¶¶ 
=
¶¶ 
txtb_Nombre
¶¶ '
.
¶¶' (
Text
¶¶( ,
.
¶¶, -
Trim
¶¶- 1
(
¶¶1 2
)
¶¶2 3
;
¶¶3 4
perfil
ßß 
.
ßß 
PrimerApellido
ßß !
=
ßß" #!
txtb_PrimerApellido
ßß$ 7
.
ßß7 8
Text
ßß8 <
.
ßß< =
Trim
ßß= A
(
ßßA B
)
ßßB C
;
ßßC D
perfil
®® 
.
®® 
SegundoApellido
®® "
=
®®# $"
txtb_SegundoApellido
®®% 9
.
®®9 :
Text
®®: >
.
®®> ?
Trim
®®? C
(
®®C D
)
®®D E
;
®®E F
string
©© 
fotoPorDefecto
©© !
=
©©" #
$str
©©$ =
;
©©= >
perfil
™™ 
.
™™ 

FotoPerfil
™™ 
=
™™ 
fotoPorDefecto
™™  .
;
™™. /
if
´´ 
(
´´ 
cmb_Instituci√≥n
´´ 
.
´´  
SelectedItem
´´  ,
is
´´- /
Institucion
´´0 ;
seleccionada
´´< H
)
´´H I
{
¨¨ 
perfil
≠≠ 
.
≠≠ 
IdInstitucion
≠≠ $
=
≠≠% &
seleccionada
≠≠' 3
.
≠≠3 4
IdInstitucion
≠≠4 A
;
≠≠A B
}
ÆÆ 
return
∞∞ 
perfil
∞∞ 
;
∞∞ 
}
±± 	
public
≥≥ 
void
≥≥ #
RegresarBordeOriginal
≥≥ )
(
≥≥) *
)
≥≥* +
{
¥¥ 	
SolidColorBrush
µµ 
verde
µµ !
=
µµ" #
new
µµ$ '
(
µµ( )
(
µµ) *
Color
µµ* /
)
µµ/ 0
ColorConverter
µµ0 >
.
µµ> ?
ConvertFromString
µµ? P
(
µµP Q
$str
µµQ Z
)
µµZ [
)
µµ[ \
;
µµ\ ]

brd_Nombre
∂∂ 
.
∂∂ 
BorderBrush
∂∂ "
=
∂∂# $
verde
∂∂% *
;
∂∂* + 
brd_PrimerApellido
∑∑ 
.
∑∑ 
BorderBrush
∑∑ *
=
∑∑+ ,
verde
∑∑- 2
;
∑∑2 3!
brd_SegundoApellido
∏∏ 
.
∏∏  
BorderBrush
∏∏  +
=
∏∏, -
verde
∏∏. 3
;
∏∏3 4

brd_Correo
ππ 
.
ππ 
BorderBrush
ππ "
=
ππ# $
verde
ππ% *
;
ππ* +
brd_Usuario
∫∫ 
.
∫∫ 
BorderBrush
∫∫ #
=
∫∫$ %
verde
∫∫& +
;
∫∫+ ,
brd_Contrase√±a
ªª 
.
ªª 
BorderBrush
ªª &
=
ªª' (
verde
ªª) .
;
ªª. / 
brd_NivelEducativo
ºº 
.
ºº 
BorderBrush
ºº *
=
ºº+ ,
verde
ºº- 2
;
ºº2 3
brd_Institucion
ΩΩ 
.
ΩΩ 
BorderBrush
ΩΩ '
=
ΩΩ( )
verde
ΩΩ* /
;
ΩΩ/ 0
}
øø 	
public
¡¡ 
bool
¡¡ 
VerificarCampos
¡¡ #
(
¡¡# $
)
¡¡$ %
{
¬¬ 	
bool
√√ 
nombre
√√ 
=
√√ 
	Validador
√√ #
.
√√# $
ValidarNombre
√√$ 1
(
√√1 2
txtb_Nombre
√√2 =
.
√√= >
Text
√√> B
)
√√B C
;
√√C D
bool
ƒƒ 
primerApellido
ƒƒ 
=
ƒƒ  !
	Validador
ƒƒ" +
.
ƒƒ+ ,
ValidarNombre
ƒƒ, 9
(
ƒƒ9 :!
txtb_PrimerApellido
ƒƒ: M
.
ƒƒM N
Text
ƒƒN R
)
ƒƒR S
;
ƒƒS T
bool
≈≈ 
segundoApellido
≈≈  
=
≈≈! "
	Validador
≈≈# ,
.
≈≈, -$
ValidarSegundoApellido
≈≈- C
(
≈≈C D"
txtb_SegundoApellido
≈≈D X
.
≈≈X Y
Text
≈≈Y ]
)
≈≈] ^
;
≈≈^ _
bool
∆∆ 
correo
∆∆ 
=
∆∆ 
	Validador
∆∆ #
.
∆∆# $
ValidarCorreo
∆∆$ 1
(
∆∆1 2
txtb_Correo
∆∆2 =
.
∆∆= >
Text
∆∆> B
)
∆∆B C
;
∆∆C D
bool
«« 
usuario
«« 
=
«« 
	Validador
«« $
.
««$ %
ValidarUsuario
««% 3
(
««3 4
txtb_Usuario
««4 @
.
««@ A
Text
««A E
)
««E F
;
««F G
string
»» 
contrase√±a
»» 
=
»» 
isPasswordVisible
»»  1
?
»»2 3$
txt_Contrase√±aVisible
»»4 I
.
»»I J
Text
»»J N
:
»»O P
pwb_PasswordBox
»»Q `
.
»»` a
Password
»»a i
;
»»i j
bool
…… 
contrasenaValida
…… !
=
……" #
	Validador
……$ -
.
……- . 
ValidarContrase√±a
……. ?
(
……? @
contrase√±a
……@ J
)
……J K
;
……K L
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
nombre
ÀÀ 
)
ÀÀ 

brd_Nombre
ÀÀ #
.
ÀÀ# $
BorderBrush
ÀÀ$ /
=
ÀÀ0 1
Brushes
ÀÀ2 9
.
ÀÀ9 :
Red
ÀÀ: =
;
ÀÀ= >
if
ÃÃ 
(
ÃÃ 
!
ÃÃ 
primerApellido
ÃÃ 
)
ÃÃ   
brd_PrimerApellido
ÃÃ! 3
.
ÃÃ3 4
BorderBrush
ÃÃ4 ?
=
ÃÃ@ A
Brushes
ÃÃB I
.
ÃÃI J
Red
ÃÃJ M
;
ÃÃM N
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
segundoApellido
ÕÕ  
)
ÕÕ  !!
brd_SegundoApellido
ÕÕ" 5
.
ÕÕ5 6
BorderBrush
ÕÕ6 A
=
ÕÕB C
Brushes
ÕÕD K
.
ÕÕK L
Red
ÕÕL O
;
ÕÕO P
if
ŒŒ 
(
ŒŒ 
!
ŒŒ 
correo
ŒŒ 
)
ŒŒ 

brd_Correo
ŒŒ #
.
ŒŒ# $
BorderBrush
ŒŒ$ /
=
ŒŒ0 1
Brushes
ŒŒ2 9
.
ŒŒ9 :
Red
ŒŒ: =
;
ŒŒ= >
if
œœ 
(
œœ 
!
œœ 
usuario
œœ 
)
œœ 
brd_Usuario
œœ %
.
œœ% &
BorderBrush
œœ& 1
=
œœ2 3
Brushes
œœ4 ;
.
œœ; <
Red
œœ< ?
;
œœ? @
if
–– 
(
–– 
!
–– 
contrasenaValida
–– !
)
––! "
brd_Contrase√±a
––# 1
.
––1 2
BorderBrush
––2 =
=
––> ?
Brushes
––@ G
.
––G H
Red
––H K
;
––K L
return
““ 
nombre
““ 
&&
““ 
primerApellido
““ +
&&
““, .
segundoApellido
““/ >
&&
““? A
correo
““B H
&&
““I K
usuario
““L S
&&
““T V
contrasenaValida
““W g
;
““g h
}
”” 	
public
’’ 
bool
’’ !
ValidarCamposVacios
’’ '
(
’’' (
)
’’( )
{
÷÷ 	
bool
◊◊ 
nombre
◊◊ 
=
◊◊ 
!
◊◊ 
string
◊◊ !
.
◊◊! " 
IsNullOrWhiteSpace
◊◊" 4
(
◊◊4 5
txtb_Nombre
◊◊5 @
.
◊◊@ A
Text
◊◊A E
)
◊◊E F
;
◊◊F G
bool
ÿÿ 
primerApellido
ÿÿ 
=
ÿÿ  !
!
ÿÿ" #
string
ÿÿ# )
.
ÿÿ) * 
IsNullOrWhiteSpace
ÿÿ* <
(
ÿÿ< =!
txtb_PrimerApellido
ÿÿ= P
.
ÿÿP Q
Text
ÿÿQ U
)
ÿÿU V
;
ÿÿV W
bool
ŸŸ 
usuario
ŸŸ 
=
ŸŸ 
!
ŸŸ 
string
ŸŸ "
.
ŸŸ" # 
IsNullOrWhiteSpace
ŸŸ# 5
(
ŸŸ5 6
txtb_Usuario
ŸŸ6 B
.
ŸŸB C
Text
ŸŸC G
)
ŸŸG H
;
ŸŸH I
bool
⁄⁄ 
correo
⁄⁄ 
=
⁄⁄ 
!
⁄⁄ 
string
⁄⁄ !
.
⁄⁄! " 
IsNullOrWhiteSpace
⁄⁄" 4
(
⁄⁄4 5
txtb_Correo
⁄⁄5 @
.
⁄⁄@ A
Text
⁄⁄A E
)
⁄⁄E F
;
⁄⁄F G
string
‹‹ 
contrase√±a
‹‹ 
=
‹‹ 
isPasswordVisible
‹‹  1
?
‹‹2 3$
txt_Contrase√±aVisible
‹‹4 I
.
‹‹I J
Text
‹‹J N
:
‹‹O P
pwb_PasswordBox
‹‹Q `
.
‹‹` a
Password
‹‹a i
;
‹‹i j
bool
›› 
contrasenaValida
›› !
=
››" #
!
››$ %
string
››% +
.
››+ , 
IsNullOrWhiteSpace
››, >
(
››> ?
contrase√±a
››? I
)
››I J
;
››J K
bool
ﬂﬂ 
cmbNivelEducativo
ﬂﬂ "
=
ﬂﬂ# $ 
cmb_NivelEducativo
ﬂﬂ% 7
.
ﬂﬂ7 8
SelectedItem
ﬂﬂ8 D
!=
ﬂﬂE G
null
ﬂﬂH L
;
ﬂﬂL M
bool
‡‡ 
cmbInstitucion
‡‡ 
=
‡‡  !
cmb_Instituci√≥n
‡‡" 1
.
‡‡1 2
SelectedItem
‡‡2 >
!=
‡‡? A
null
‡‡B F
;
‡‡F G
if
‰‰ 
(
‰‰ 
!
‰‰ 
nombre
‰‰ 
)
‰‰ 

brd_Nombre
‰‰ #
.
‰‰# $
BorderBrush
‰‰$ /
=
‰‰0 1
Brushes
‰‰2 9
.
‰‰9 :
Red
‰‰: =
;
‰‰= >
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
primerApellido
ÂÂ 
)
ÂÂ   
brd_PrimerApellido
ÂÂ! 3
.
ÂÂ3 4
BorderBrush
ÂÂ4 ?
=
ÂÂ@ A
Brushes
ÂÂB I
.
ÂÂI J
Red
ÂÂJ M
;
ÂÂM N
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 
correo
ÊÊ 
)
ÊÊ 

brd_Correo
ÊÊ #
.
ÊÊ# $
BorderBrush
ÊÊ$ /
=
ÊÊ0 1
Brushes
ÊÊ2 9
.
ÊÊ9 :
Red
ÊÊ: =
;
ÊÊ= >
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
usuario
ÁÁ 
)
ÁÁ 
brd_Usuario
ÁÁ %
.
ÁÁ% &
BorderBrush
ÁÁ& 1
=
ÁÁ2 3
Brushes
ÁÁ4 ;
.
ÁÁ; <
Red
ÁÁ< ?
;
ÁÁ? @
if
ËË 
(
ËË 
!
ËË 
contrasenaValida
ËË !
)
ËË! "
brd_Contrase√±a
ËË# 1
.
ËË1 2
BorderBrush
ËË2 =
=
ËË> ?
Brushes
ËË@ G
.
ËËG H
Red
ËËH K
;
ËËK L
if
ÍÍ 
(
ÍÍ 
!
ÍÍ 
cmbNivelEducativo
ÍÍ "
)
ÍÍ" # 
brd_NivelEducativo
ÍÍ$ 6
.
ÍÍ6 7
BorderBrush
ÍÍ7 B
=
ÍÍC D
Brushes
ÍÍE L
.
ÍÍL M
Red
ÍÍM P
;
ÍÍP Q
if
ÎÎ 
(
ÎÎ 
!
ÎÎ 
cmbInstitucion
ÎÎ 
)
ÎÎ  
brd_Institucion
ÎÎ! 0
.
ÎÎ0 1
BorderBrush
ÎÎ1 <
=
ÎÎ= >
Brushes
ÎÎ? F
.
ÎÎF G
Red
ÎÎG J
;
ÎÎJ K
return
ÌÌ 
nombre
ÌÌ 
&&
ÌÌ 
primerApellido
ÌÌ +
&&
ÌÌ, .
correo
ÌÌ/ 5
&&
ÌÌ6 8
usuario
ÌÌ9 @
&&
ÌÌA C
contrasenaValida
ÌÌD T
&&
ÓÓ 
cmbNivelEducativo
ÓÓ  
&&
ÓÓ! #
cmbInstitucion
ÓÓ$ 2
;
ÓÓ2 3
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ %
RegresarAlMenuPrincipal
ÒÒ ,
(
ÒÒ, -
object
ÒÒ- 3
sender
ÒÒ4 :
,
ÒÒ: ;"
MouseButtonEventArgs
ÒÒ< P
e
ÒÒQ R
)
ÒÒR S
{
ÚÚ 	
MenuPrincipal
ÛÛ 
menuPrincipal
ÛÛ '
=
ÛÛ( )
new
ÛÛ* -
(
ÛÛ. /
)
ÛÛ/ 0
;
ÛÛ0 1
this
ÙÙ 
.
ÙÙ 
NavigationService
ÙÙ "
.
ÙÙ" #
Navigate
ÙÙ# +
(
ÙÙ+ ,
menuPrincipal
ÙÙ, 9
)
ÙÙ9 :
;
ÙÙ: ;
}
ıı 	
private
˜˜ 
void
˜˜ 
	IrAlLogin
˜˜ 
(
˜˜ 
object
˜˜ %
sender
˜˜& ,
,
˜˜, -"
MouseButtonEventArgs
˜˜. B
e
˜˜C D
)
˜˜D E
{
¯¯ 	
Login
˘˘ 
login
˘˘ 
=
˘˘ 
new
˘˘ 
(
˘˘ 
)
˘˘  
;
˘˘  !
this
˙˙ 
.
˙˙ 
NavigationService
˙˙ "
.
˙˙" #
Navigate
˙˙# +
(
˙˙+ ,
login
˙˙, 1
)
˙˙1 2
;
˙˙2 3
}
˚˚ 	
private
˝˝ 
void
˝˝ "
PasswordBox_GotFocus
˝˝ )
(
˝˝) *
object
˝˝* 0
sender
˝˝1 7
,
˝˝7 8
RoutedEventArgs
˝˝9 H
e
˝˝I J
)
˝˝J K
{
˛˛ 	
txtb_Contrase√±a
ˇˇ 
.
ˇˇ 

Visibility
ˇˇ &
=
ˇˇ' (

Visibility
ˇˇ) 3
.
ˇˇ3 4
	Collapsed
ˇˇ4 =
;
ˇˇ= >
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ #
PasswordBox_LostFocus
ÇÇ *
(
ÇÇ* +
object
ÇÇ+ 1
sender
ÇÇ2 8
,
ÇÇ8 9
RoutedEventArgs
ÇÇ: I
e
ÇÇJ K
)
ÇÇK L
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ  
IsNullOrWhiteSpace
ÑÑ )
(
ÑÑ) *
pwb_PasswordBox
ÑÑ* 9
.
ÑÑ9 :
Password
ÑÑ: B
)
ÑÑB C
)
ÑÑC D
{
ÖÖ 
txtb_Contrase√±a
ÜÜ 
.
ÜÜ  

Visibility
ÜÜ  *
=
ÜÜ+ ,

Visibility
ÜÜ- 7
.
ÜÜ7 8
Visible
ÜÜ8 ?
;
ÜÜ? @
}
áá 
}
àà 	
private
ää 
void
ää )
PasswordBox_PasswordChanged
ää 0
(
ää0 1
object
ää1 7
sender
ää8 >
,
ää> ?
RoutedEventArgs
ää@ O
e
ääP Q
)
ääQ R
{
ãã 	
txtb_Contrase√±a
åå 
.
åå 

Visibility
åå &
=
åå' (
string
åå) /
.
åå/ 0
IsNullOrEmpty
åå0 =
(
åå= >
pwb_PasswordBox
åå> M
.
ååM N
Password
ååN V
)
ååV W
?
ååX Y

Visibility
ååZ d
.
ååd e
Visible
ååe l
:
ååm n

Visibility
ååo y
.
ååy z
	Collapsedååz É
;ååÉ Ñ
}
çç 	
private
éé 
bool
éé 
isPasswordVisible
éé &
=
éé' (
false
éé) .
;
éé. /
private
êê 
void
êê *
ActivarDesactivarVisibilidad
êê 1
(
êê1 2
object
êê2 8
sender
êê9 ?
,
êê? @"
MouseButtonEventArgs
êêA U
e
êêV W
)
êêW X
{
ëë 	
isPasswordVisible
íí 
=
íí 
!
íí  !
isPasswordVisible
íí! 2
;
íí2 3
if
îî 
(
îî 
isPasswordVisible
îî !
)
îî! "
{
ïï $
txt_Contrase√±aVisible
ññ %
.
ññ% &
Text
ññ& *
=
ññ+ ,
pwb_PasswordBox
ññ- <
.
ññ< =
Password
ññ= E
;
ññE F$
txt_Contrase√±aVisible
óó %
.
óó% &

Visibility
óó& 0
=
óó1 2

Visibility
óó3 =
.
óó= >
Visible
óó> E
;
óóE F
pwb_PasswordBox
òò 
.
òò  

Visibility
òò  *
=
òò+ ,

Visibility
òò- 7
.
òò7 8
	Collapsed
òò8 A
;
òòA B
}
ôô 
else
öö 
{
õõ 
pwb_PasswordBox
úú 
.
úú  
Password
úú  (
=
úú) *$
txt_Contrase√±aVisible
úú+ @
.
úú@ A
Text
úúA E
;
úúE F
pwb_PasswordBox
ùù 
.
ùù  

Visibility
ùù  *
=
ùù+ ,

Visibility
ùù- 7
.
ùù7 8
Visible
ùù8 ?
;
ùù? @$
txt_Contrase√±aVisible
ûû %
.
ûû% &

Visibility
ûû& 0
=
ûû1 2

Visibility
ûû3 =
.
ûû= >
	Collapsed
ûû> G
;
ûûG H
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ )
VisiblePassword_TextChanged
¢¢ 0
(
¢¢0 1
object
¢¢1 7
sender
¢¢8 >
,
¢¢> ?"
TextChangedEventArgs
¢¢@ T
e
¢¢U V
)
¢¢V W
{
££ 	
if
§§ 
(
§§ 
isPasswordVisible
§§ !
)
§§! "
{
•• 
pwb_PasswordBox
¶¶ 
.
¶¶  
Password
¶¶  (
=
¶¶) *$
txt_Contrase√±aVisible
¶¶+ @
.
¶¶@ A
Text
¶¶A E
;
¶¶E F
}
ßß 
}
®® 	
}
™™ 
}´´ ≠õ
îC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\Perfil.xaml.cs
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
SegundoApellido	@@x á
}
@@á à
"
@@à â
;
@@â ä
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
)	MM Ä
;
MMÄ Å
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
ÄÄ 
=
ÄÄ 
$str
ÄÄ 9
,
ÄÄ9 :
Filter
ÅÅ 
=
ÅÅ 
$str
ÅÅ =
,
ÅÅ= >
Multiselect
ÇÇ 
=
ÇÇ 
false
ÇÇ #
}
ÉÉ 
;
ÉÉ 
bool
ÖÖ 
?
ÖÖ 
	resultado
ÖÖ 
=
ÖÖ 
dialogo
ÖÖ %
.
ÖÖ% &

ShowDialog
ÖÖ& 0
(
ÖÖ0 1
)
ÖÖ1 2
;
ÖÖ2 3
if
áá 
(
áá 
	resultado
áá 
==
áá 
true
áá !
)
áá! "
{
àà 
FileInfo
ââ 
archivo
ââ  
=
ââ! "
new
ââ# &
(
ââ& '
dialogo
ââ' .
.
ââ. /
FileName
ââ/ 7
)
ââ7 8
;
ââ8 9
if
ää 
(
ää 
archivo
ää 
.
ää 
Length
ää "
>
ää# $
$num
ää% '
*
ää( )
$num
ää* .
*
ää/ 0
$num
ää1 5
)
ää5 6
{
ãã )
MostrarMensajePersonalizado
åå /
(
åå/ 0
$str
åå0 h
,
ååh i

DialogType
ååj t
.
ååt u
Warning
ååu |
)
åå| }
;
åå} ~
return
çç 
;
çç 
}
éé 
try
êê 
{
ëë 
BitmapImage
íí 
nuevaImagen
íí  +
=
íí, -
new
íí. 1
(
íí1 2
)
íí2 3
;
íí3 4
nuevaImagen
ìì 
.
ìì  
	BeginInit
ìì  )
(
ìì) *
)
ìì* +
;
ìì+ ,
nuevaImagen
îî 
.
îî  
	UriSource
îî  )
=
îî* +
new
îî, /
Uri
îî0 3
(
îî3 4
archivo
îî4 ;
.
îî; <
FullName
îî< D
)
îîD E
;
îîE F
nuevaImagen
ïï 
.
ïï  
CacheOption
ïï  +
=
ïï, -
BitmapCacheOption
ïï. ?
.
ïï? @
OnLoad
ïï@ F
;
ïïF G
nuevaImagen
ññ 
.
ññ  
EndInit
ññ  '
(
ññ' (
)
ññ( )
;
ññ) *
byte
öö 
[
öö 
]
öö 
bytesImagen
öö &
=
öö' (
File
öö) -
.
öö- .
ReadAllBytes
öö. :
(
öö: ;
archivo
öö; B
.
ööB C
FullName
ööC K
)
ööK L
;
ööL M
if
õõ 
(
õõ 
!
õõ 
EsImagenValida
õõ '
(
õõ' (
bytesImagen
õõ( 3
)
õõ3 4
)
õõ4 5
{
úú )
MostrarMensajePersonalizado
ùù 3
(
ùù3 4
$str
ùù4 h
,
ùùh i

DialogType
ùùj t
.
ùùt u
Warning
ùùu |
)
ùù| }
;
ùù} ~
return
ûû 
;
ûû 
}
üü 
bool
†† 
exitoso
††  
=
††! "
await
††# ("
ActualizarFotoPerfil
††) =
(
††= >
bytesImagen
††> I
)
††I J
;
††J K
if
°° 
(
°° 
!
°° 
exitoso
°°  
)
°°  !
{
¢¢ 
return
££ 
;
££ 
}
§§ 
}
¶¶ 
catch
ßß 
(
ßß 
	Exception
ßß  
ex
ßß! #
)
ßß# $
{
®® )
MostrarMensajePersonalizado
©© /
(
©©/ 0
$str
©©0 i
,
©©i j

DialogType
©©k u
.
©©u v
Warning
©©v }
)
©©} ~
;
©©~ 
logger
™™ 
.
™™ 
LogFatal
™™ #
(
™™# $
ex
™™$ &
)
™™& '
;
™™' (
}
´´ 
}
¨¨ 
}
≠≠ 	
private
ØØ 
async
ØØ 
Task
ØØ 
<
ØØ 
bool
ØØ 
>
ØØ  "
ActualizarFotoPerfil
ØØ! 5
(
ØØ5 6
byte
ØØ6 :
[
ØØ: ;
]
ØØ; < 
nuevaImagenBinaria
ØØ= O
)
ØØO P
{
∞∞ 	
LoggerManager
±± 
logger
±±  
=
±±! "
new
±±# &
(
±±& '
this
±±' +
.
±±+ ,
GetType
±±, 3
(
±±3 4
)
±±4 5
)
±±5 6
;
±±6 7
var
≤≤ 
perfil
≤≤ 
=
≤≤ 
PerfilSingleton
≤≤ (
.
≤≤( )
Instance
≤≤) 1
;
≤≤1 2
var
≥≥ 
clienteGrpc
≥≥ 
=
≥≥ 
new
≥≥ !&
FileServiceClientHandler
≥≥" :
(
≥≥: ;
)
≥≥; <
;
≥≥< =
var
¥¥ 
imagenAnterior
¥¥ 
=
¥¥  
perfil
¥¥! '
.
¥¥' (
FotoPerfilBinaria
¥¥( 9
;
¥¥9 :
try
∂∂ 
{
∑∑ 
string
∏∏ 
nombreArchivo
∏∏ $
=
∏∏% &
$"
∏∏' )
$str
∏∏) 0
{
∏∏0 1
perfil
∏∏1 7
.
∏∏7 8
NombreUsuario
∏∏8 E
}
∏∏E F
$str
∏∏F G
{
∏∏G H
Guid
∏∏H L
.
∏∏L M
NewGuid
∏∏M T
(
∏∏T U
)
∏∏U V
}
∏∏V W
$str
∏∏W [
"
∏∏[ \
;
∏∏\ ]
var
ππ 

rutaImagen
ππ 
=
ππ  
await
ππ! &
clienteGrpc
ππ' 2
.
ππ2 3
UploadImageAsync
ππ3 C
(
ππC D
perfil
ππD J
.
ππJ K
NombreUsuario
ππK X
,
ππX Y
nombreArchivo
ππZ g
,
ππg h 
nuevaImagenBinaria
ππi {
)
ππ{ |
;
ππ| }
if
ªª 
(
ªª 
string
ªª 
.
ªª  
IsNullOrWhiteSpace
ªª -
(
ªª- .

rutaImagen
ªª. 8
)
ªª8 9
)
ªª9 :
{
ºº )
MostrarMensajePersonalizado
ΩΩ /
(
ΩΩ/ 0
$str
ΩΩ0 e
,
ΩΩe f

DialogType
ΩΩg q
.
ΩΩq r
Error
ΩΩr w
)
ΩΩw x
;
ΩΩx y
img_FotoPerfil
ææ "
.
ææ" #
ImageSource
ææ# .
=
ææ/ 0"
ConvertirFotoABitmap
ææ1 E
(
ææE F
imagenAnterior
ææF T
)
ææT U
;
ææU V
return
øø 
false
øø  
;
øø  !
}
¿¿ 
var
¬¬ 
resultadoApi
¬¬  
=
¬¬! "
await
¬¬# (
UsuarioServicio
¬¬) 8
.
¬¬8 9#
ActualizarAvatarAsync
¬¬9 N
(
¬¬N O
perfil
¬¬O U
.
¬¬U V
TokenJwt
¬¬V ^
,
¬¬^ _

rutaImagen
¬¬` j
)
¬¬j k
;
¬¬k l
switch
ƒƒ 
(
ƒƒ 
resultadoApi
ƒƒ $
.
ƒƒ$ %
Codigo
ƒƒ% +
)
ƒƒ+ ,
{
≈≈ 
case
∆∆ 
(
∆∆ 
int
∆∆ 
)
∆∆ 
HttpStatusCode
∆∆ ,
.
∆∆, -
OK
∆∆- /
:
∆∆/ 0
perfil
«« 
.
«« 
FotoPerfilBinaria
«« 0
=
««1 2 
nuevaImagenBinaria
««3 E
;
««E F
return
»» 
true
»» #
;
»»# $
case
   
(
   
int
   
)
   
HttpStatusCode
   ,
.
  , -
Unauthorized
  - 9
:
  9 :)
MostrarMensajePersonalizado
ÀÀ 3
(
ÀÀ3 4
$str
ÀÀ4 q
,
ÀÀq r

DialogType
ÀÀs }
.
ÀÀ} ~
ErrorÀÀ~ É
)ÀÀÉ Ñ
;ÀÀÑ Ö
NavigationService
ÃÃ )
.
ÃÃ) *
Navigate
ÃÃ* 2
(
ÃÃ2 3
new
ÃÃ3 6
Login
ÃÃ7 <
(
ÃÃ< =
)
ÃÃ= >
)
ÃÃ> ?
;
ÃÃ? @
PerfilSingleton
ÕÕ '
.
ÕÕ' (
Instance
ÕÕ( 0
.
ÕÕ0 1
Reset
ÕÕ1 6
(
ÕÕ6 7
)
ÕÕ7 8
;
ÕÕ8 9
break
ŒŒ 
;
ŒŒ 
default
–– 
:
–– 
perfil
—— 
.
—— 
FotoPerfilBinaria
—— 0
=
——1 2 
nuevaImagenBinaria
——3 E
;
——E F
break
““ 
;
““ 
}
”” 
img_FotoPerfil
’’ 
.
’’ 
ImageSource
’’ *
=
’’+ ,"
ConvertirFotoABitmap
’’- A
(
’’A B
imagenAnterior
’’B P
)
’’P Q
;
’’Q R
return
÷÷ 
false
÷÷ 
;
÷÷ 
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
	Exception
ÿÿ 
ex
ÿÿ 
)
ÿÿ  
{
ŸŸ )
MostrarMensajePersonalizado
⁄⁄ +
(
⁄⁄+ ,
$str
⁄⁄, `
,
⁄⁄` a

DialogType
⁄⁄b l
.
⁄⁄l m
Error
⁄⁄m r
)
⁄⁄r s
;
⁄⁄s t
img_FotoPerfil
€€ 
.
€€ 
ImageSource
€€ *
=
€€+ ,"
ConvertirFotoABitmap
€€- A
(
€€A B
imagenAnterior
€€B P
)
€€P Q
;
€€Q R
logger
‹‹ 
.
‹‹ 
LogFatal
‹‹ 
(
‹‹  
ex
‹‹  "
)
‹‹" #
;
‹‹# $
return
›› 
false
›› 
;
›› 
}
ﬁﬁ 
}
ﬂﬂ 	
private
‰‰ 
void
‰‰ 
Editar
‰‰ 
(
‰‰ 
object
‰‰ "
sender
‰‰# )
,
‰‰) *"
MouseButtonEventArgs
‰‰+ ?
e
‰‰@ A
)
‰‰A B
{
ÂÂ 	
_frame
ÊÊ 
.
ÊÊ 
Navigate
ÊÊ 
(
ÊÊ 
new
ÊÊ 
EditarPerfil
ÊÊ  ,
(
ÊÊ, -
_frame
ÊÊ- 3
)
ÊÊ3 4
)
ÊÊ4 5
;
ÊÊ5 6
}
ÁÁ 	
}
ËË 
}ÈÈ ¿‘
öC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\EditarPerfil.xaml.cs
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

DialogType	??w Å
.
??Å Ç
Error
??Ç á
)
??á à
;
??à â
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
cmb_Instituci√≥nFF 
.FF 
ItemsSourceFF '
=FF( )
nullFF* .
;FF. /
cmb_Instituci√≥nGG 
.GG 
ItemsGG !
.GG! "
ClearGG" '
(GG' (
)GG( )
;GG) *
cmb_Instituci√≥nHH 
.HH 
ItemsSourceHH '
=HH( )"
_todasLasInstitucionesHH* @
;HH@ A
cmb_Instituci√≥nII 
.II 
DisplayMemberPathII -
=II. /
$strII0 C
;IIC D
cmb_Instituci√≥nJJ 
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
cmb_Instituci√≥nNN 
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
cmb_Instituci√≥n__ 
.__  
ItemsSource__  +
=__, -
	filtradas__. 7
;__7 8
cmb_Instituci√≥n`` 
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
cmb_Instituci√≥nhh 
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
ÄÄ 
txtb_Nombre
ÄÄ 
.
ÄÄ 
Text
ÄÄ #
!=
ÄÄ$ &
perfil
ÄÄ' -
.
ÄÄ- .
Nombre
ÄÄ. 4
||
ÄÄ5 7!
txtb_PrimerApellido
ÅÅ &
.
ÅÅ& '
Text
ÅÅ' +
!=
ÅÅ, .
perfil
ÅÅ/ 5
.
ÅÅ5 6
PrimerApellido
ÅÅ6 D
||
ÅÅE G"
txtb_SegundoApellido
ÇÇ '
.
ÇÇ' (
Text
ÇÇ( ,
!=
ÇÇ- /
perfil
ÇÇ0 6
.
ÇÇ6 7
SegundoApellido
ÇÇ7 F
||
ÇÇG I
txtb_Correo
ÉÉ 
.
ÉÉ 
Text
ÉÉ #
!=
ÉÉ$ &
perfil
ÉÉ' -
.
ÉÉ- .
Correo
ÉÉ. 4
||
ÉÉ5 7
txtb_Usuario
ÑÑ 
.
ÑÑ  
Text
ÑÑ  $
!=
ÑÑ% '
perfil
ÑÑ( .
.
ÑÑ. /
NombreUsuario
ÑÑ/ <
||
ÑÑ= ?
(
ÖÖ  
cmb_NivelEducativo
ÖÖ &
.
ÖÖ& '
SelectedItem
ÖÖ' 3
as
ÖÖ4 6
string
ÖÖ7 =
)
ÖÖ= >
!=
ÖÖ? A
perfil
ÖÖB H
.
ÖÖH I
NivelEducativo
ÖÖI W
||
ÖÖX Z
(
ÜÜ 
(
ÜÜ 
Institucion
ÜÜ  
)
ÜÜ  !
cmb_Instituci√≥n
ÜÜ! 0
.
ÜÜ0 1
SelectedItem
ÜÜ1 =
)
ÜÜ= >
?
ÜÜ> ?
.
ÜÜ? @
IdInstitucion
ÜÜ@ M
!=
ÜÜN P
perfil
ÜÜQ W
.
ÜÜW X
IdInstitucion
ÜÜX e
;
ÜÜe f
}
áá 	
private
ââ 
void
ââ '
ActualizarPerfilSingleton
ââ .
(
ââ. /
)
ââ/ 0
{
ää 	
var
ãã 
perfil
ãã 
=
ãã 
PerfilSingleton
ãã (
.
ãã( )
Instance
ãã) 1
;
ãã1 2
perfil
çç 
.
çç 
Nombre
çç 
=
çç 
txtb_Nombre
çç '
.
çç' (
Text
çç( ,
;
çç, -
perfil
éé 
.
éé 
PrimerApellido
éé !
=
éé" #!
txtb_PrimerApellido
éé$ 7
.
éé7 8
Text
éé8 <
;
éé< =
perfil
èè 
.
èè 
SegundoApellido
èè "
=
èè# $"
txtb_SegundoApellido
èè% 9
.
èè9 :
Text
èè: >
;
èè> ?
perfil
êê 
.
êê 
Correo
êê 
=
êê 
txtb_Correo
êê '
.
êê' (
Text
êê( ,
;
êê, -
perfil
ëë 
.
ëë 
NombreUsuario
ëë  
=
ëë! "
txtb_Usuario
ëë# /
.
ëë/ 0
Text
ëë0 4
;
ëë4 5
perfil
íí 
.
íí 
NivelEducativo
íí !
=
íí" # 
cmb_NivelEducativo
íí$ 6
.
íí6 7
SelectedItem
íí7 C
as
ííD F
string
ííG M
;
ííM N
if
îî 
(
îî 
cmb_Instituci√≥n
îî 
.
îî  
SelectedItem
îî  ,
is
îî- /
Institucion
îî0 ;
institucion
îî< G
)
îîG H
{
ïï 
perfil
ññ 
.
ññ 
IdInstitucion
ññ $
=
ññ% &
institucion
ññ' 2
.
ññ2 3
IdInstitucion
ññ3 @
;
ññ@ A
}
óó 
}
òò 	
private
õõ 
void
õõ 
ActualizarPerfil
õõ %
(
õõ% &
object
õõ& ,
sender
õõ- 3
,
õõ3 4
RoutedEventArgs
õõ5 D
e
õõE F
)
õõF G
{
úú 	#
RegresarBordeOriginal
ûû !
(
ûû! "
)
ûû" #
;
ûû# $
if
üü 
(
üü !
ValidarCamposVacios
üü #
(
üü# $
)
üü$ %
)
üü% &
{
†† 
if
°° 
(
°° 
!
°° "
HayCambiosEnElPerfil
°° )
(
°°) *
)
°°* +
)
°°+ ,
{
¢¢ )
MostrarMensajePersonalizado
££ /
(
££/ 0
$str
££0 [
,
££[ \

DialogType
££] g
.
££g h
Warning
££h o
)
££o p
;
££p q
return
§§ 
;
§§ 
}
•• 
if
¶¶ 
(
¶¶ 
VerificarCampos
¶¶ #
(
¶¶# $
)
¶¶$ %
)
¶¶% &
{
ßß 
UsuarioRegistro
®® # 
usuarioActualizado
®®$ 6
=
®®7 8
CrearPerfil
®®9 D
(
®®D E
)
®®E F
;
®®F G
RespuestaDeLaAPI
©© $
(
©©$ % 
usuarioActualizado
©©% 7
)
©©7 8
;
©©8 9
}
™™ 
else
´´ 
{
¨¨ )
MostrarMensajePersonalizado
≠≠ /
(
≠≠/ 0
$str≠≠0 ã
,≠≠ã å

DialogType≠≠ç ó
.≠≠ó ò
Warning≠≠ò ü
)≠≠ü †
;≠≠† °
}
ÆÆ 
}
ØØ 
else
∞∞ 
{
±± )
MostrarMensajePersonalizado
≤≤ +
(
≤≤+ ,
$str
≤≤, `
,
≤≤` a

DialogType
≤≤b l
.
≤≤l m
Warning
≤≤m t
)
≤≤t u
;
≤≤u v
}
≥≥ 
}
¥¥ 	
private
∂∂ 
async
∂∂ 
void
∂∂ 
RespuestaDeLaAPI
∂∂ +
(
∂∂+ ,
UsuarioRegistro
∂∂, ; 
usuarioActualizado
∂∂< N
)
∂∂N O
{
∑∑ 	
var
∏∏ 
token
∏∏ 
=
∏∏ 
PerfilSingleton
∏∏ '
.
∏∏' (
Instance
∏∏( 0
.
∏∏0 1
TokenJwt
∏∏1 9
;
∏∏9 :
	Respuesta
ππ 
	respuesta
ππ 
=
ππ  !
await
ππ" '
UsuarioServicio
ππ( 7
.
ππ7 8
ActualizarPerfil
ππ8 H
(
ππH I
token
ππI N
,
ππN O 
usuarioActualizado
ππP b
)
ππb c
;
ππc d
switch
ªª 
(
ªª 
	respuesta
ªª 
.
ªª 
Codigo
ªª $
)
ªª$ %
{
ºº 
case
ΩΩ 
(
ΩΩ 
int
ΩΩ 
)
ΩΩ 
HttpStatusCode
ΩΩ (
.
ΩΩ( )
OK
ΩΩ) +
:
ΩΩ+ ,'
ActualizarPerfilSingleton
ææ -
(
ææ- .
)
ææ. /
;
ææ/ 0)
MostrarMensajePersonalizado
øø /
(
øø/ 0
$str
øø0 P
,
øøP Q

DialogType
øøR \
.
øø\ ]
Success
øø] d
)
øød e
;
øøe f
_frame
¿¿ 
.
¿¿ 
Navigate
¿¿ #
(
¿¿# $
new
¿¿$ '
Perfil
¿¿( .
(
¿¿. /
_frame
¿¿/ 5
)
¿¿5 6
)
¿¿6 7
;
¿¿7 8
break
¡¡ 
;
¡¡ 
case
√√ 
$num
√√ 
:
√√ )
MostrarMensajePersonalizado
ƒƒ /
(
ƒƒ/ 0
$str
ƒƒ0 m
,
ƒƒm n

DialogType
ƒƒo y
.
ƒƒy z
Warningƒƒz Å
)ƒƒÅ Ç
;ƒƒÇ É
break
≈≈ 
;
≈≈ 
case
∆∆ 
$num
∆∆ 
:
∆∆ )
MostrarMensajePersonalizado
«« /
(
««/ 0
$str
««0 _
,
««_ `

DialogType
««a k
.
««k l
Error
««l q
)
««q r
;
««r s
break
»» 
;
»» 
case
…… 
$num
…… 
:
…… )
MostrarMensajePersonalizado
   /
(
  / 0
$str
  0 g
,
  g h

DialogType
  i s
.
  s t
Warning
  t {
)
  { |
;
  | }
break
ÀÀ 
;
ÀÀ 
case
ÃÃ 
$num
ÃÃ 
:
ÃÃ )
MostrarMensajePersonalizado
ÕÕ /
(
ÕÕ/ 0
$str
ÕÕ0 u
,
ÕÕu v

DialogTypeÕÕw Å
.ÕÕÅ Ç
ErrorÕÕÇ á
)ÕÕá à
;ÕÕà â
break
ŒŒ 
;
ŒŒ 
case
œœ 
(
œœ 
int
œœ 
)
œœ 
HttpStatusCode
œœ (
.
œœ( )
Unauthorized
œœ) 5
:
œœ5 6)
MostrarMensajePersonalizado
–– /
(
––/ 0
$str
––0 m
,
––m n

DialogType
––o y
.
––y z
Error
––z 
)–– Ä
;––Ä Å
NavigationService
—— %
.
——% &
Navigate
——& .
(
——. /
new
——/ 2
Login
——3 8
(
——8 9
)
——9 :
)
——: ;
;
——; <
PerfilSingleton
““ #
.
““# $
Instance
““$ ,
.
““, -
Reset
““- 2
(
““2 3
)
““3 4
;
““4 5
break
”” 
;
”” 
default
‘‘ 
:
‘‘ )
MostrarMensajePersonalizado
’’ /
(
’’/ 0
$str
’’0 _
,
’’_ `

DialogType
’’a k
.
’’k l
Error
’’l q
)
’’q r
;
’’r s
break
÷÷ 
;
÷÷ 
}
ÿÿ 
}
ŸŸ 	
private
€€ 
UsuarioRegistro
€€ 
CrearPerfil
€€  +
(
€€+ ,
)
€€, -
{
‹‹ 	
UsuarioRegistro
ﬁﬁ 
datosActualizados
ﬁﬁ -
=
ﬁﬁ. /
new
ﬁﬁ0 3
(
ﬁﬁ3 4
)
ﬁﬁ4 5
{
ﬂﬂ 
Nombre
‡‡ 
=
‡‡ 
txtb_Nombre
‡‡ $
.
‡‡$ %
Text
‡‡% )
,
‡‡) *
PrimerApellido
·· 
=
··  !
txtb_PrimerApellido
··! 4
.
··4 5
Text
··5 9
,
··9 :
SegundoApellido
‚‚ 
=
‚‚  !"
txtb_SegundoApellido
‚‚" 6
.
‚‚6 7
Text
‚‚7 ;
,
‚‚; <
Correo
„„ 
=
„„ 
txtb_Correo
„„ $
.
„„$ %
Text
„„% )
,
„„) *
NombreUsuario
‰‰ 
=
‰‰ 
txtb_Usuario
‰‰  ,
.
‰‰, -
Text
‰‰- 1
,
‰‰1 2
IdInstitucion
ÂÂ 
=
ÂÂ 
(
ÂÂ  !
(
ÂÂ! "
Institucion
ÂÂ" -
)
ÂÂ- .
cmb_Instituci√≥n
ÂÂ. =
.
ÂÂ= >
SelectedItem
ÂÂ> J
)
ÂÂJ K
.
ÂÂK L
IdInstitucion
ÂÂL Y
}
ÊÊ 
;
ÊÊ 
return
ËË 
datosActualizados
ËË $
;
ËË$ %
}
ÈÈ 	
public
ÎÎ 
void
ÎÎ #
RegresarBordeOriginal
ÎÎ )
(
ÎÎ) *
)
ÎÎ* +
{
ÏÏ 	
SolidColorBrush
ÌÌ 
verde
ÌÌ !
=
ÌÌ" #
new
ÌÌ$ '
(
ÌÌ' (
(
ÌÌ( )
Color
ÌÌ) .
)
ÌÌ. /
ColorConverter
ÌÌ/ =
.
ÌÌ= >
ConvertFromString
ÌÌ> O
(
ÌÌO P
$str
ÌÌP Y
)
ÌÌY Z
)
ÌÌZ [
;
ÌÌ[ \

brd_Nombre
ÓÓ 
.
ÓÓ 
BorderBrush
ÓÓ "
=
ÓÓ# $
verde
ÓÓ% *
;
ÓÓ* + 
brd_PrimerApellido
ÔÔ 
.
ÔÔ 
BorderBrush
ÔÔ *
=
ÔÔ+ ,
verde
ÔÔ- 2
;
ÔÔ2 3!
brd_SegundoApellido
 
.
  
BorderBrush
  +
=
, -
verde
. 3
;
3 4

brd_Correo
ÒÒ 
.
ÒÒ 
BorderBrush
ÒÒ "
=
ÒÒ# $
verde
ÒÒ% *
;
ÒÒ* +
brd_Usuario
ÚÚ 
.
ÚÚ 
BorderBrush
ÚÚ #
=
ÚÚ$ %
verde
ÚÚ& +
;
ÚÚ+ , 
brd_NivelEducativo
ÛÛ 
.
ÛÛ 
BorderBrush
ÛÛ *
=
ÛÛ+ ,
verde
ÛÛ- 2
;
ÛÛ2 3
brd_Institucion
ÙÙ 
.
ÙÙ 
BorderBrush
ÙÙ '
=
ÙÙ( )
verde
ÙÙ* /
;
ÙÙ/ 0
}
ˆˆ 	
public
¯¯ 
bool
¯¯ 
VerificarCampos
¯¯ #
(
¯¯# $
)
¯¯$ %
{
˘˘ 	
bool
˙˙ 
nombre
˙˙ 
=
˙˙ 
	Validador
˙˙ #
.
˙˙# $
ValidarNombre
˙˙$ 1
(
˙˙1 2
txtb_Nombre
˙˙2 =
.
˙˙= >
Text
˙˙> B
)
˙˙B C
;
˙˙C D
bool
˚˚ 
primerApellido
˚˚ 
=
˚˚  !
	Validador
˚˚" +
.
˚˚+ ,
ValidarNombre
˚˚, 9
(
˚˚9 :!
txtb_PrimerApellido
˚˚: M
.
˚˚M N
Text
˚˚N R
)
˚˚R S
;
˚˚S T
bool
¸¸ 
segundoApellido
¸¸  
=
¸¸! "
	Validador
¸¸# ,
.
¸¸, -$
ValidarSegundoApellido
¸¸- C
(
¸¸C D"
txtb_SegundoApellido
¸¸D X
.
¸¸X Y
Text
¸¸Y ]
)
¸¸] ^
;
¸¸^ _
bool
˝˝ 
usuario
˝˝ 
=
˝˝ 
	Validador
˝˝ $
.
˝˝$ %
ValidarUsuario
˝˝% 3
(
˝˝3 4
txtb_Usuario
˝˝4 @
.
˝˝@ A
Text
˝˝A E
)
˝˝E F
;
˝˝F G
bool
˛˛ 
correo
˛˛ 
=
˛˛ 
	Validador
˛˛ #
.
˛˛# $
ValidarCorreo
˛˛$ 1
(
˛˛1 2
txtb_Correo
˛˛2 =
.
˛˛= >
Text
˛˛> B
)
˛˛B C
;
˛˛C D
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
nombre
ÄÄ 
)
ÄÄ 

brd_Nombre
ÄÄ #
.
ÄÄ# $
BorderBrush
ÄÄ$ /
=
ÄÄ0 1
Brushes
ÄÄ2 9
.
ÄÄ9 :
Red
ÄÄ: =
;
ÄÄ= >
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
primerApellido
ÅÅ 
)
ÅÅ   
brd_PrimerApellido
ÅÅ! 3
.
ÅÅ3 4
BorderBrush
ÅÅ4 ?
=
ÅÅ@ A
Brushes
ÅÅB I
.
ÅÅI J
Red
ÅÅJ M
;
ÅÅM N
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
segundoApellido
ÇÇ  
)
ÇÇ  !!
brd_SegundoApellido
ÇÇ" 5
.
ÇÇ5 6
BorderBrush
ÇÇ6 A
=
ÇÇB C
Brushes
ÇÇD K
.
ÇÇK L
Red
ÇÇL O
;
ÇÇO P
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
usuario
ÉÉ 
)
ÉÉ 
brd_Usuario
ÉÉ %
.
ÉÉ% &
BorderBrush
ÉÉ& 1
=
ÉÉ2 3
Brushes
ÉÉ4 ;
.
ÉÉ; <
Red
ÉÉ< ?
;
ÉÉ? @
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
correo
ÑÑ 
)
ÑÑ 

brd_Correo
ÑÑ #
.
ÑÑ# $
BorderBrush
ÑÑ$ /
=
ÑÑ0 1
Brushes
ÑÑ2 9
.
ÑÑ9 :
Red
ÑÑ: =
;
ÑÑ= >
return
ÜÜ 
nombre
ÜÜ 
&&
ÜÜ 
primerApellido
ÜÜ +
&&
ÜÜ, .
segundoApellido
ÜÜ/ >
&&
ÜÜ? A
correo
ÜÜB H
&&
ÜÜI K
usuario
ÜÜL S
;
ÜÜS T
}
áá 	
public
ââ 
bool
ââ !
ValidarCamposVacios
ââ '
(
ââ' (
)
ââ( )
{
ää 	
bool
ãã 
nombre
ãã 
=
ãã 
!
ãã 
string
ãã !
.
ãã! " 
IsNullOrWhiteSpace
ãã" 4
(
ãã4 5
txtb_Nombre
ãã5 @
.
ãã@ A
Text
ããA E
)
ããE F
;
ããF G
bool
åå 
primerApellido
åå 
=
åå  !
!
åå" #
string
åå# )
.
åå) * 
IsNullOrWhiteSpace
åå* <
(
åå< =!
txtb_PrimerApellido
åå= P
.
ååP Q
Text
ååQ U
)
ååU V
;
ååV W
bool
çç 
usuario
çç 
=
çç 
!
çç 
string
çç "
.
çç" # 
IsNullOrWhiteSpace
çç# 5
(
çç5 6
txtb_Usuario
çç6 B
.
ççB C
Text
ççC G
)
ççG H
;
ççH I
bool
éé 
correo
éé 
=
éé 
!
éé 
string
éé !
.
éé! " 
IsNullOrWhiteSpace
éé" 4
(
éé4 5
txtb_Correo
éé5 @
.
éé@ A
Text
ééA E
)
ééE F
;
ééF G
bool
êê 
cmbNivelEducativo
êê "
=
êê# $ 
cmb_NivelEducativo
êê% 7
.
êê7 8
SelectedItem
êê8 D
!=
êêE G
null
êêH L
;
êêL M
bool
ëë 
cmbInstitucion
ëë 
=
ëë  !
cmb_Instituci√≥n
ëë" 1
.
ëë1 2
SelectedItem
ëë2 >
!=
ëë? A
null
ëëB F
;
ëëF G
if
îî 
(
îî 
!
îî 
nombre
îî 
)
îî 

brd_Nombre
îî #
.
îî# $
BorderBrush
îî$ /
=
îî0 1
Brushes
îî2 9
.
îî9 :
Red
îî: =
;
îî= >
if
ïï 
(
ïï 
!
ïï 
primerApellido
ïï 
)
ïï   
brd_PrimerApellido
ïï! 3
.
ïï3 4
BorderBrush
ïï4 ?
=
ïï@ A
Brushes
ïïB I
.
ïïI J
Red
ïïJ M
;
ïïM N
if
ññ 
(
ññ 
!
ññ 
correo
ññ 
)
ññ 

brd_Correo
ññ #
.
ññ# $
BorderBrush
ññ$ /
=
ññ0 1
Brushes
ññ2 9
.
ññ9 :
Red
ññ: =
;
ññ= >
if
óó 
(
óó 
!
óó 
usuario
óó 
)
óó 
brd_Usuario
óó %
.
óó% &
BorderBrush
óó& 1
=
óó2 3
Brushes
óó4 ;
.
óó; <
Red
óó< ?
;
óó? @
if
ôô 
(
ôô 
!
ôô 
cmbNivelEducativo
ôô "
)
ôô" # 
brd_NivelEducativo
ôô$ 6
.
ôô6 7
BorderBrush
ôô7 B
=
ôôC D
Brushes
ôôE L
.
ôôL M
Red
ôôM P
;
ôôP Q
if
öö 
(
öö 
!
öö 
cmbInstitucion
öö 
)
öö  
brd_Institucion
öö! 0
.
öö0 1
BorderBrush
öö1 <
=
öö= >
Brushes
öö? F
.
ööF G
Red
ööG J
;
ööJ K
return
úú 
nombre
úú 
&&
úú 
primerApellido
úú +
&&
úú, .
correo
úú/ 5
&&
úú6 8
usuario
úú9 @
&&
ùù 
cmbNivelEducativo
ùù  
&&
ùù! #
cmbInstitucion
ùù$ 2
;
ùù2 3
}
ûû 	
}
üü 
}†† ∆
öC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\BuscarPerfil.xaml.cs
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
$str	TT< Å
,
TTÅ Ç

DialogType
TTÉ ç
.
TTç é
Error
TTé ì
)
TTì î
;
TTî ï
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
Error	kk} Ç
)
kkÇ É
;
kkÉ Ñ
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
Error	oo~ É
)
ooÉ Ñ
;
ooÑ Ö
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
ÄÄ 
void
ÄÄ 
TextBox_GotFocus
ÄÄ %
(
ÄÄ% &
object
ÄÄ& ,
sender
ÄÄ- 3
,
ÄÄ3 4
RoutedEventArgs
ÄÄ5 D
e
ÄÄE F
)
ÄÄF G
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ  
txtb_BuscarTextBox
ÇÇ "
.
ÇÇ" #
Text
ÇÇ# '
==
ÇÇ( *
$str
ÇÇ+ :
)
ÇÇ: ;
{
ÉÉ  
txtb_BuscarTextBox
ÑÑ "
.
ÑÑ" #
Text
ÑÑ# '
=
ÑÑ( )
$str
ÑÑ* ,
;
ÑÑ, - 
txtb_BuscarTextBox
ÖÖ "
.
ÖÖ" #

Foreground
ÖÖ# -
=
ÖÖ. /
Brushes
ÖÖ0 7
.
ÖÖ7 8
Black
ÖÖ8 =
;
ÖÖ= >
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ 
TextBox_LostFocus
ââ &
(
ââ& '
object
ââ' -
sender
ââ. 4
,
ââ4 5
RoutedEventArgs
ââ6 E
e
ââF G
)
ââG H
{
ää 	
if
ãã 
(
ãã 
string
ãã 
.
ãã  
IsNullOrWhiteSpace
ãã )
(
ãã) * 
txtb_BuscarTextBox
ãã* <
.
ãã< =
Text
ãã= A
)
ããA B
)
ããB C
{
åå  
txtb_BuscarTextBox
çç "
.
çç" #
Text
çç# '
=
çç( )
$str
çç* 9
;
çç9 : 
txtb_BuscarTextBox
éé "
.
éé" #

Foreground
éé# -
=
éé. /
Brushes
éé0 7
.
éé7 8
Gray
éé8 <
;
éé< =
}
èè 
}
êê 	
private
íí 
void
íí 
IrADetallesPerfil
íí &
(
íí& '
object
íí' -
sender
íí. 4
,
íí4 5
RoutedEventArgs
íí6 E
e
ííF G
)
ííG H
{
ìì 	
if
îî 
(
îî 
sender
îî 
is
îî 
Button
îî  
button
îî! '
&&
îî( *
button
îî+ 1
.
îî1 2
Tag
îî2 5
is
îî6 8
UsuarioPerfil
îî9 F
usuario
îîG N
)
îîN O
{
ïï 
_frame
ññ 
.
ññ 
Navigate
ññ 
(
ññ  
new
ññ  ##
VisualizarPerfilAmigo
ññ$ 9
(
ññ9 :
_frame
ññ: @
,
ññ@ A
usuario
ññB I
)
ññI J
)
ññJ K
;
ññK L
}
óó 
}
òò 	
private
öö 
void
öö &
BuscarPerfil_TextChanged
öö -
(
öö- .
object
öö. 4
sender
öö5 ;
,
öö; <"
TextChangedEventArgs
öö= Q
e
ööR S
)
ööS T
{
õõ 	
if
úú 
(
úú 
_todosLosPerfiles
úú !
==
úú" $
null
úú% )
||
úú* ,
_todosLosPerfiles
úú- >
.
úú> ?
Count
úú? D
==
úúE G
$num
úúH I
)
úúI J
return
ùù 
;
ùù 
var
üü 
texto
üü 
=
üü  
txtb_BuscarTextBox
üü *
.
üü* +
Text
üü+ /
?
üü/ 0
.
üü0 1
Trim
üü1 5
(
üü5 6
)
üü6 7
.
üü7 8
ToLower
üü8 ?
(
üü? @
)
üü@ A
??
üüB D
$str
üüE G
;
üüG H
if
°° 
(
°° 
string
°° 
.
°°  
IsNullOrWhiteSpace
°° )
(
°°) *
texto
°°* /
)
°°/ 0
||
°°1 3
texto
°°4 9
==
°°: <
$str
°°= L
)
°°L M
{
¢¢ 
ListaComentarios
££  
.
££  !
ItemsSource
££! ,
=
££- .
_todosLosPerfiles
££/ @
;
££@ A
return
§§ 
;
§§ 
}
•• 
var
ßß !
resultadosFiltrados
ßß #
=
ßß$ %
_todosLosPerfiles
ßß& 7
.
ßß7 8
Where
ßß8 =
(
ßß= >
p
ßß> ?
=>
ßß@ B
(
®® 
!
®® 
string
®® 
.
®®  
IsNullOrWhiteSpace
®® +
(
®®+ ,
p
®®, -
.
®®- .
Nombre
®®. 4
)
®®4 5
&&
®®6 8
p
®®9 :
.
®®: ;
Nombre
®®; A
.
®®A B
ToLower
®®B I
(
®®I J
)
®®J K
.
®®K L
Contains
®®L T
(
®®T U
texto
®®U Z
)
®®Z [
)
®®[ \
||
®®] _
(
©© 
!
©© 
string
©© 
.
©©  
IsNullOrWhiteSpace
©© +
(
©©+ ,
p
©©, -
.
©©- .
PrimerApellido
©©. <
)
©©< =
&&
©©> @
p
©©A B
.
©©B C
PrimerApellido
©©C Q
.
©©Q R
ToLower
©©R Y
(
©©Y Z
)
©©Z [
.
©©[ \
Contains
©©\ d
(
©©d e
texto
©©e j
)
©©j k
)
©©k l
||
©©m o
(
™™ 
!
™™ 
string
™™ 
.
™™  
IsNullOrWhiteSpace
™™ +
(
™™+ ,
p
™™, -
.
™™- .
SegundoApellido
™™. =
)
™™= >
&&
™™? A
p
™™B C
.
™™C D
SegundoApellido
™™D S
.
™™S T
ToLower
™™T [
(
™™[ \
)
™™\ ]
.
™™] ^
Contains
™™^ f
(
™™f g
texto
™™g l
)
™™l m
)
™™m n
||
™™o q
(
´´ 
!
´´ 
string
´´ 
.
´´  
IsNullOrWhiteSpace
´´ +
(
´´+ ,
p
´´, -
.
´´- .
NombreUsuario
´´. ;
)
´´; <
&&
´´= ?
p
´´@ A
.
´´A B
NombreUsuario
´´B O
.
´´O P
ToLower
´´P W
(
´´W X
)
´´X Y
.
´´Y Z
Contains
´´Z b
(
´´b c
texto
´´c h
)
´´h i
)
´´i j
)
¨¨ 
.
¨¨ 
ToList
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
ListaComentarios
ÆÆ 
.
ÆÆ 
ItemsSource
ÆÆ (
=
ÆÆ) *!
resultadosFiltrados
ÆÆ+ >
;
ÆÆ> ?
}
ØØ 	
public
≥≥ 
BitmapImage
≥≥ 
?
≥≥ 
ConvertirABitmap
≥≥ ,
(
≥≥, -
byte
≥≥- 1
[
≥≥1 2
]
≥≥2 3
datos
≥≥4 9
)
≥≥9 :
{
¥¥ 	
if
µµ 
(
µµ 
datos
µµ 
==
µµ 
null
µµ 
||
µµ  
datos
µµ! &
.
µµ& '
Length
µµ' -
==
µµ. 0
$num
µµ1 2
)
µµ2 3
return
µµ4 :
null
µµ; ?
;
µµ? @
using
∑∑ 
var
∑∑ 
stream
∑∑ 
=
∑∑ 
new
∑∑ "
MemoryStream
∑∑# /
(
∑∑/ 0
datos
∑∑0 5
)
∑∑5 6
;
∑∑6 7
var
∏∏ 
image
∏∏ 
=
∏∏ 
new
∏∏ 
BitmapImage
∏∏ '
(
∏∏' (
)
∏∏( )
;
∏∏) *
image
ππ 
.
ππ 
	BeginInit
ππ 
(
ππ 
)
ππ 
;
ππ 
image
∫∫ 
.
∫∫ 
CacheOption
∫∫ 
=
∫∫ 
BitmapCacheOption
∫∫  1
.
∫∫1 2
OnLoad
∫∫2 8
;
∫∫8 9
image
ªª 
.
ªª 
StreamSource
ªª 
=
ªª  
stream
ªª! '
;
ªª' (
image
ºº 
.
ºº 
EndInit
ºº 
(
ºº 
)
ºº 
;
ºº 
return
ΩΩ 
image
ΩΩ 
;
ΩΩ 
}
ææ 	
}
¿¿ 
}¡¡ Ôã
îC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloUsuario\Amigos.xaml.cs
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
$str	OO< Å
,
OOÅ Ç

DialogType
OOÉ ç
.
OOç é
Error
OOé ì
)
OOì î
;
OOî ï
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
Error	ee~ É
)
eeÉ Ñ
;
eeÑ Ö
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
Error	kk} Ç
)
kkÇ É
;
kkÉ Ñ
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
ÄÄ 
image
ÄÄ 
=
ÄÄ 
new
ÄÄ 
BitmapImage
ÄÄ '
(
ÄÄ' (
)
ÄÄ( )
;
ÄÄ) *
image
ÅÅ 
.
ÅÅ 
	BeginInit
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
image
ÇÇ 
.
ÇÇ 
CacheOption
ÇÇ 
=
ÇÇ 
BitmapCacheOption
ÇÇ  1
.
ÇÇ1 2
OnLoad
ÇÇ2 8
;
ÇÇ8 9
image
ÉÉ 
.
ÉÉ 
StreamSource
ÉÉ 
=
ÉÉ  
stream
ÉÉ! '
;
ÉÉ' (
image
ÑÑ 
.
ÑÑ 
EndInit
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
return
ÖÖ 
image
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
private
àà 
void
àà 
TextBox_GotFocus
àà %
(
àà% &
object
àà& ,
sender
àà- 3
,
àà3 4
RoutedEventArgs
àà5 D
e
ààE F
)
ààF G
{
ââ 	
if
ää 
(
ää  
txtb_BuscarTextBox
ää "
.
ää" #
Text
ää# '
==
ää( *
$str
ää+ :
)
ää: ;
{
ãã  
txtb_BuscarTextBox
åå "
.
åå" #
Text
åå# '
=
åå( )
$str
åå* ,
;
åå, - 
txtb_BuscarTextBox
çç "
.
çç" #

Foreground
çç# -
=
çç. /
Brushes
çç0 7
.
çç7 8
Black
çç8 =
;
çç= >
}
éé 
}
èè 	
private
ëë 
void
ëë 
TextBox_LostFocus
ëë &
(
ëë& '
object
ëë' -
sender
ëë. 4
,
ëë4 5
RoutedEventArgs
ëë6 E
e
ëëF G
)
ëëG H
{
íí 	
if
ìì 
(
ìì 
string
ìì 
.
ìì  
IsNullOrWhiteSpace
ìì )
(
ìì) * 
txtb_BuscarTextBox
ìì* <
.
ìì< =
Text
ìì= A
)
ììA B
)
ììB C
{
îî  
txtb_BuscarTextBox
ïï "
.
ïï" #
Text
ïï# '
=
ïï( )
$str
ïï* 9
;
ïï9 : 
txtb_BuscarTextBox
ññ "
.
ññ" #

Foreground
ññ# -
=
ññ. /
Brushes
ññ0 7
.
ññ7 8
Gray
ññ8 <
;
ññ< =
}
óó 
}
òò 	
private
öö 
void
öö &
BuscarPerfil_TextChanged
öö -
(
öö- .
object
öö. 4
sender
öö5 ;
,
öö; <"
TextChangedEventArgs
öö= Q
e
ööR S
)
ööS T
{
õõ 	
if
úú 
(
úú 
_todosLosPerfiles
úú !
==
úú" $
null
úú% )
||
úú* ,
_todosLosPerfiles
úú- >
.
úú> ?
Count
úú? D
==
úúE G
$num
úúH I
)
úúI J
return
ùù 
;
ùù 
var
üü 
texto
üü 
=
üü  
txtb_BuscarTextBox
üü *
.
üü* +
Text
üü+ /
?
üü/ 0
.
üü0 1
Trim
üü1 5
(
üü5 6
)
üü6 7
.
üü7 8
ToLower
üü8 ?
(
üü? @
)
üü@ A
??
üüB D
$str
üüE G
;
üüG H
if
°° 
(
°° 
string
°° 
.
°°  
IsNullOrWhiteSpace
°° )
(
°°) *
texto
°°* /
)
°°/ 0
||
°°1 3
texto
°°4 9
==
°°: <
$str
°°= L
)
°°L M
{
¢¢ 
ListaComentarios
££  
.
££  !
ItemsSource
££! ,
=
££- .
_todosLosPerfiles
££/ @
;
££@ A
return
§§ 
;
§§ 
}
•• 
var
ßß !
resultadosFiltrados
ßß #
=
ßß$ %
_todosLosPerfiles
ßß& 7
.
ßß7 8
Where
ßß8 =
(
ßß= >
p
ßß> ?
=>
ßß@ B
(
®® 
!
®® 
string
®® 
.
®®  
IsNullOrWhiteSpace
®® +
(
®®+ ,
p
®®, -
.
®®- .
Nombre
®®. 4
)
®®4 5
&&
®®6 8
p
®®9 :
.
®®: ;
Nombre
®®; A
.
®®A B
ToLower
®®B I
(
®®I J
)
®®J K
.
®®K L
Contains
®®L T
(
®®T U
texto
®®U Z
)
®®Z [
)
®®[ \
||
®®] _
(
©© 
!
©© 
string
©© 
.
©©  
IsNullOrWhiteSpace
©© +
(
©©+ ,
p
©©, -
.
©©- .
PrimerApellido
©©. <
)
©©< =
&&
©©> @
p
©©A B
.
©©B C
PrimerApellido
©©C Q
.
©©Q R
ToLower
©©R Y
(
©©Y Z
)
©©Z [
.
©©[ \
Contains
©©\ d
(
©©d e
texto
©©e j
)
©©j k
)
©©k l
||
©©m o
(
™™ 
!
™™ 
string
™™ 
.
™™  
IsNullOrWhiteSpace
™™ +
(
™™+ ,
p
™™, -
.
™™- .
SegundoApellido
™™. =
)
™™= >
&&
™™? A
p
™™B C
.
™™C D
SegundoApellido
™™D S
.
™™S T
ToLower
™™T [
(
™™[ \
)
™™\ ]
.
™™] ^
Contains
™™^ f
(
™™f g
texto
™™g l
)
™™l m
)
™™m n
||
™™o q
(
´´ 
!
´´ 
string
´´ 
.
´´  
IsNullOrWhiteSpace
´´ +
(
´´+ ,
p
´´, -
.
´´- .
NombreUsuario
´´. ;
)
´´; <
&&
´´= ?
p
´´@ A
.
´´A B
NombreUsuario
´´B O
.
´´O P
ToLower
´´P W
(
´´W X
)
´´X Y
.
´´Y Z
Contains
´´Z b
(
´´b c
texto
´´c h
)
´´h i
)
´´i j
)
¨¨ 
.
¨¨ 
ToList
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
ListaComentarios
ÆÆ 
.
ÆÆ 
ItemsSource
ÆÆ (
=
ÆÆ) *!
resultadosFiltrados
ÆÆ+ >
;
ÆÆ> ?
}
ØØ 	
private
±± 
async
±± 
void
±± 
DejarDeSeguir
±± (
(
±±( )
object
±±) /
sender
±±0 6
,
±±6 7
RoutedEventArgs
±±8 G
e
±±H I
)
±±I J
{
≤≤ 	
if
≥≥ 
(
≥≥ 
sender
≥≥ 
is
≥≥ 
Button
≥≥  
boton
≥≥! &
&&
≥≥' )
boton
≥≥* /
.
≥≥/ 0
Tag
≥≥0 3
is
≥≥4 6
UsuarioPerfil
≥≥7 D
perfil
≥≥E K
)
≥≥K L
{
¥¥ 
try
µµ 
{
∂∂ 
string
∑∑ 
token
∑∑  
=
∑∑! "
PerfilSingleton
∑∑# 2
.
∑∑2 3
Instance
∑∑3 ;
.
∑∑; <
TokenJwt
∑∑< D
;
∑∑D E
var
ππ 
	respuesta
ππ !
=
ππ" #
await
ππ$ )
PerfilServicio
ππ* 8
.
ππ8 9"
DejarDeSeguirUsuario
ππ9 M
(
ππM N
perfil
ππN T
.
ππT U!
IdUsuarioRegistrado
ππU h
,
ππh i
token
ππj o
)
ππo p
;
ππp q
if
ªª 
(
ªª 
	respuesta
ªª !
.
ªª! "
Estado
ªª" (
==
ªª) +
$num
ªª, /
)
ªª/ 0
{
ºº )
MostrarMensajePersonalizado
ΩΩ 3
(
ΩΩ3 4
$str
ΩΩ4 Z
,
ΩΩZ [

DialogType
ΩΩ\ f
.
ΩΩf g
Success
ΩΩg n
)
ΩΩn o
;
ΩΩo p
_todosLosPerfiles
øø )
.
øø) *
Remove
øø* 0
(
øø0 1
perfil
øø1 7
)
øø7 8
;
øø8 9
ListaComentarios
¿¿ (
.
¿¿( )
ItemsSource
¿¿) 4
=
¿¿5 6
null
¿¿7 ;
;
¿¿; <
ListaComentarios
¡¡ (
.
¡¡( )
ItemsSource
¡¡) 4
=
¡¡5 6
_todosLosPerfiles
¡¡7 H
;
¡¡H I
}
¬¬ 
else
√√ 
{
ƒƒ )
MostrarMensajePersonalizado
≈≈ 3
(
≈≈3 4
$"
≈≈4 6
$str
≈≈6 =
{
≈≈= >
	respuesta
≈≈> G
.
≈≈G H
Mensaje
≈≈H O
}
≈≈O P
"
≈≈P Q
,
≈≈Q R

DialogType
≈≈S ]
.
≈≈] ^
Warning
≈≈^ e
)
≈≈e f
;
≈≈f g
}
∆∆ 
}
«« 
catch
»» 
(
»» 
	Exception
»»  
ex
»»! #
)
»»# $
{
…… 
_logger
   
.
   
LogError
   $
(
  $ %
ex
  % '
)
  ' (
;
  ( ))
MostrarMensajePersonalizado
ÀÀ /
(
ÀÀ/ 0
$str
ÀÀ0 a
,
ÀÀa b

DialogType
ÀÀc m
.
ÀÀm n
Error
ÀÀn s
)
ÀÀs t
;
ÀÀt u
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 	
}
—— 
}““ Ù©
¢C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloLogin\RestablecerContrase√±a.xaml.cs
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
RestablecerContrase√±a .
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
RestablecerContrase√±a $
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
contrase√±a11 
=11 
pwb_Contrase√±a11  .
.11. /
Password11/ 7
;117 8
string22  
confirmarContrase√±a22 &
=22' ($
pwb_ConfirmarContrase√±a22) @
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
contrase√±a66* 4
)664 5
||666 8
string669 ?
.66? @
IsNullOrWhiteSpace66@ R
(66R S 
confirmarContrase√±a66S f
)66f g
)66h i
{77 '
MostrarMensajePersonalizado88 +
(88+ ,
$str88, p
,88p q

DialogType88r |
.88| }
Warning	88} Ñ
)
88Ñ Ö
;
88Ö Ü
esValido99 
=99 
false99  
;99  !
}:: 
else;; 
if;; 
(;; 
contrase√±a;; 
!=;;  " 
confirmarContrase√±a;;# 6
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
ValidarContrase√±a@@  1
(@@1 2
contrase√±a@@2 <
)@@< =
)@@= >
{AA '
MostrarMensajePersonalizadoBB +
(BB+ ,
$strBB, l
,BBl m

DialogTypeBBn x
.BBx y
Warning	BBy Ä
)
BBÄ Å
;
BBÅ Ç
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

DialogType	GG â
.
GGâ ä
Warning
GGä ë
)
GGë í
;
GGí ì
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
CambiarContrase√±aNN ,
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
txt_Contrase√±aVisibleRR; P
.RRP Q
TextRRQ U
:RRV W
pwb_Contrase√±aRRX f
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
,	aa Ä

DialogType
aaÅ ã
.
aaã å
Warning
aaå ì
)
aaì î
;
aaî ï
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

DialogType	ff| Ü
.
ffÜ á
Warning
ffá é
)
ffé è
;
ffè ê
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

DialogType	oo â
.
ooâ ä
Error
ooä è
)
ooè ê
;
ooê ë
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
ÄÄ 
void
ÄÄ %
UserIdTextBox_LostFocus
ÄÄ ,
(
ÄÄ, -
object
ÄÄ- 3
sender
ÄÄ4 :
,
ÄÄ: ;
RoutedEventArgs
ÄÄ< K
e
ÄÄL M
)
ÄÄM N
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
string
ÇÇ 
.
ÇÇ  
IsNullOrWhiteSpace
ÇÇ )
(
ÇÇ) *
txtb_Codigo
ÇÇ* 5
.
ÇÇ5 6
Text
ÇÇ6 :
)
ÇÇ: ;
)
ÇÇ; <
{
ÉÉ 
txtb_Codigo
ÑÑ 
.
ÑÑ 
Text
ÑÑ  
=
ÑÑ! "
$str
ÑÑ# ;
;
ÑÑ; <
txtb_Codigo
ÖÖ 
.
ÖÖ 

Foreground
ÖÖ &
=
ÖÖ' (
Brushes
ÖÖ) 0
.
ÖÖ0 1
Gray
ÖÖ1 5
;
ÖÖ5 6
}
ÜÜ 
}
áá 	
private
ää 
void
ää %
RegresarAlMenuPrincipal
ää ,
(
ää, -
object
ää- 3
sender
ää4 :
,
ää: ;"
MouseButtonEventArgs
ää< P
e
ääQ R
)
ääR S
{
ãã 	
MenuPrincipal
åå 
menuPrincipal
åå '
=
åå( )
new
åå* -
(
åå. /
)
åå/ 0
;
åå0 1
this
çç 
.
çç 
NavigationService
çç "
.
çç" #
Navigate
çç# +
(
çç+ ,
menuPrincipal
çç, 9
)
çç9 :
;
çç: ;
}
éé 	
private
êê 
void
êê 
RegresarLogin
êê "
(
êê" #
object
êê# )
sender
êê* 0
,
êê0 1"
MouseButtonEventArgs
êê2 F
e
êêG H
)
êêH I
{
ëë 	
Login
íí 
login
íí 
=
íí 
new
íí 
(
íí 
)
íí  
;
íí  !
this
ìì 
.
ìì 
NavigationService
ìì "
.
ìì" #
Navigate
ìì# +
(
ìì+ ,
login
ìì, 1
)
ìì1 2
;
ìì2 3
}
îî 	
private
óó 
void
óó "
PasswordBoxGotFocus1
óó )
(
óó) *
object
óó* 0
sender
óó1 7
,
óó7 8
RoutedEventArgs
óó9 H
e
óóI J
)
óóJ K
{
òò 	
txtb_Contrase√±a
ôô 
.
ôô 

Visibility
ôô &
=
ôô' (

Visibility
ôô) 3
.
ôô3 4
	Collapsed
ôô4 =
;
ôô= >
}
öö 	
private
úú 
void
úú #
PasswordBoxLostFocus1
úú *
(
úú* +
object
úú+ 1
sender
úú2 8
,
úú8 9
RoutedEventArgs
úú: I
e
úúJ K
)
úúK L
{
ùù 	
if
ûû 
(
ûû 
string
ûû 
.
ûû  
IsNullOrWhiteSpace
ûû )
(
ûû) *
pwb_Contrase√±a
ûû* 8
.
ûû8 9
Password
ûû9 A
)
ûûA B
)
ûûB C
{
üü 
txtb_Contrase√±a
†† 
.
††  

Visibility
††  *
=
††+ ,

Visibility
††- 7
.
††7 8
Visible
††8 ?
;
††? @
}
°° 
}
¢¢ 	
private
§§ 
void
§§ "
PasswordBoxGotFocus2
§§ )
(
§§) *
object
§§* 0
sender
§§1 7
,
§§7 8
RoutedEventArgs
§§9 H
e
§§I J
)
§§J K
{
•• 	'
txtb_ConfirmarContrase√±a
¶¶ $
.
¶¶$ %

Visibility
¶¶% /
=
¶¶0 1

Visibility
¶¶2 <
.
¶¶< =
	Collapsed
¶¶= F
;
¶¶F G
}
ßß 	
private
©© 
void
©© #
PasswordBoxLostFocus2
©© *
(
©©* +
object
©©+ 1
sender
©©2 8
,
©©8 9
RoutedEventArgs
©©: I
e
©©J K
)
©©K L
{
™™ 	
if
´´ 
(
´´ 
string
´´ 
.
´´  
IsNullOrWhiteSpace
´´ )
(
´´) *&
pwb_ConfirmarContrase√±a
´´* A
.
´´A B
Password
´´B J
)
´´J K
)
´´K L
{
¨¨ '
txtb_ConfirmarContrase√±a
≠≠ (
.
≠≠( )

Visibility
≠≠) 3
=
≠≠4 5

Visibility
≠≠6 @
.
≠≠@ A
Visible
≠≠A H
;
≠≠H I
}
ÆÆ 
}
ØØ 	
private
±± 
void
±± "
Contrase√±aCambiada1
±± (
(
±±( )
object
±±) /
sender
±±0 6
,
±±6 7
RoutedEventArgs
±±8 G
e
±±H I
)
±±I J
{
≤≤ 	
txtb_Contrase√±a
≥≥ 
.
≥≥ 

Visibility
≥≥ &
=
≥≥' (
string
≥≥) /
.
≥≥/ 0
IsNullOrEmpty
≥≥0 =
(
≥≥= >
pwb_Contrase√±a
≥≥> L
.
≥≥L M
Password
≥≥M U
)
≥≥U V
?
≥≥W X

Visibility
≥≥Y c
.
≥≥c d
Visible
≥≥d k
:
≥≥l m

Visibility
≥≥n x
.
≥≥x y
	Collapsed≥≥y Ç
;≥≥Ç É
}
¥¥ 	
private
∑∑ 
void
∑∑ "
Contrase√±aCambiada2
∑∑ (
(
∑∑( )
object
∑∑) /
sender
∑∑0 6
,
∑∑6 7
RoutedEventArgs
∑∑8 G
e
∑∑H I
)
∑∑I J
{
∏∏ 	'
txtb_ConfirmarContrase√±a
ππ $
.
ππ$ %

Visibility
ππ% /
=
ππ0 1
string
ππ2 8
.
ππ8 9
IsNullOrEmpty
ππ9 F
(
ππF G&
pwb_ConfirmarContrase√±a
ππG ^
.
ππ^ _
Password
ππ_ g
)
ππg h
?
ππi j

Visibility
ππk u
.
ππu v
Visible
ππv }
:
ππ~ 

VisibilityππÄ ä
.ππä ã
	Collapsedππã î
;ππî ï
}
∫∫ 	
private
ºº 
void
ºº +
ActivarDesactivarVisibilidad1
ºº 2
(
ºº2 3
object
ºº3 9
sender
ºº: @
,
ºº@ A"
MouseButtonEventArgs
ººB V
e
ººW X
)
ººX Y
{
ΩΩ 	!
_isPasswordVisible1
ææ 
=
ææ  !
!
ææ" #!
_isPasswordVisible1
ææ# 6
;
ææ6 7
if
¿¿ 
(
¿¿ !
_isPasswordVisible1
¿¿ #
)
¿¿# $
{
¡¡ $
txt_Contrase√±aVisible
¬¬ %
.
¬¬% &
Text
¬¬& *
=
¬¬+ ,
pwb_Contrase√±a
¬¬- ;
.
¬¬; <
Password
¬¬< D
;
¬¬D E$
txt_Contrase√±aVisible
√√ %
.
√√% &

Visibility
√√& 0
=
√√1 2

Visibility
√√3 =
.
√√= >
Visible
√√> E
;
√√E F
pwb_Contrase√±a
ƒƒ 
.
ƒƒ 

Visibility
ƒƒ )
=
ƒƒ* +

Visibility
ƒƒ, 6
.
ƒƒ6 7
	Collapsed
ƒƒ7 @
;
ƒƒ@ A
}
≈≈ 
else
∆∆ 
{
«« 
pwb_Contrase√±a
»» 
.
»» 
Password
»» '
=
»»( )$
txt_Contrase√±aVisible
»»* ?
.
»»? @
Text
»»@ D
;
»»D E
pwb_Contrase√±a
…… 
.
…… 

Visibility
…… )
=
……* +

Visibility
……, 6
.
……6 7
Visible
……7 >
;
……> ?$
txt_Contrase√±aVisible
   %
.
  % &

Visibility
  & 0
=
  1 2

Visibility
  3 =
.
  = >
	Collapsed
  > G
;
  G H
}
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ +
ActivarDesactivarVisibilidad2
ŒŒ 2
(
ŒŒ2 3
object
ŒŒ3 9
sender
ŒŒ: @
,
ŒŒ@ A"
MouseButtonEventArgs
ŒŒB V
e
ŒŒW X
)
ŒŒX Y
{
œœ 	!
_isPasswordVisible2
–– 
=
––  !
!
––" #!
_isPasswordVisible2
––# 6
;
––6 7
if
““ 
(
““ !
_isPasswordVisible2
““ #
)
““# $
{
”” -
txt_ConfirmarContrase√±aVisible
‘‘ .
.
‘‘. /
Text
‘‘/ 3
=
‘‘4 5&
pwb_ConfirmarContrase√±a
‘‘6 M
.
‘‘M N
Password
‘‘N V
;
‘‘V W-
txt_ConfirmarContrase√±aVisible
’’ .
.
’’. /

Visibility
’’/ 9
=
’’: ;

Visibility
’’< F
.
’’F G
Visible
’’G N
;
’’N O&
pwb_ConfirmarContrase√±a
÷÷ '
.
÷÷' (

Visibility
÷÷( 2
=
÷÷3 4

Visibility
÷÷5 ?
.
÷÷? @
	Collapsed
÷÷@ I
;
÷÷I J
}
◊◊ 
else
ÿÿ 
{
ŸŸ &
pwb_ConfirmarContrase√±a
⁄⁄ '
.
⁄⁄' (
Password
⁄⁄( 0
=
⁄⁄1 2-
txt_ConfirmarContrase√±aVisible
⁄⁄3 Q
.
⁄⁄Q R
Text
⁄⁄R V
;
⁄⁄V W&
pwb_ConfirmarContrase√±a
€€ '
.
€€' (

Visibility
€€( 2
=
€€3 4

Visibility
€€5 ?
.
€€? @
Visible
€€@ G
;
€€G H-
txt_ConfirmarContrase√±aVisible
‹‹ .
.
‹‹. /

Visibility
‹‹/ 9
=
‹‹: ;

Visibility
‹‹< F
.
‹‹F G
	Collapsed
‹‹G P
;
‹‹P Q
}
›› 
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ )
VisiblePasswordTextChanged1
‡‡ 0
(
‡‡0 1
object
‡‡1 7
sender
‡‡8 >
,
‡‡> ?"
TextChangedEventArgs
‡‡@ T
e
‡‡U V
)
‡‡V W
{
·· 	
if
‚‚ 
(
‚‚ !
_isPasswordVisible1
‚‚ #
)
‚‚# $
{
„„ 
pwb_Contrase√±a
‰‰ 
.
‰‰ 
Password
‰‰ '
=
‰‰( )$
txt_Contrase√±aVisible
‰‰* ?
.
‰‰? @
Text
‰‰@ D
;
‰‰D E
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË )
VisiblePasswordTextChanged2
ËË 0
(
ËË0 1
object
ËË1 7
sender
ËË8 >
,
ËË> ?"
TextChangedEventArgs
ËË@ T
e
ËËU V
)
ËËV W
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ !
_isPasswordVisible2
ÍÍ #
)
ÍÍ# $
{
ÎÎ &
pwb_ConfirmarContrase√±a
ÏÏ '
.
ÏÏ' (
Password
ÏÏ( 0
=
ÏÏ1 2-
txt_ConfirmarContrase√±aVisible
ÏÏ3 Q
.
ÏÏQ R
Text
ÏÏR V
;
ÏÏV W
}
ÌÌ 
}
ÓÓ 	
private
 
void
 $
CodigoPreviewTextInput
 +
(
+ ,
object
, 2
sender
3 9
,
9 :&
TextCompositionEventArgs
; S
e
T U
)
U V
{
ÒÒ 	
e
ÚÚ 
.
ÚÚ 
Handled
ÚÚ 
=
ÚÚ 
!
ÚÚ 
Regex
ÚÚ 
.
ÚÚ 
IsMatch
ÚÚ &
(
ÚÚ& '
e
ÚÚ' (
.
ÚÚ( )
Text
ÚÚ) -
,
ÚÚ- .
$str
ÚÚ/ 9
)
ÚÚ9 :
;
ÚÚ: ;
}
ÛÛ 	
private
ıı 
void
ıı "
CodigoPreviewKeyDown
ıı )
(
ıı) *
object
ıı* 0
sender
ıı1 7
,
ıı7 8
KeyEventArgs
ıı9 E
e
ııF G
)
ııG H
{
ˆˆ 	
TextBox
˜˜ 
textBox
˜˜ 
=
˜˜ 
sender
˜˜ $
as
˜˜% '
TextBox
˜˜( /
;
˜˜/ 0
if
˘˘ 
(
˘˘ 
e
˘˘ 
.
˘˘ 
Key
˘˘ 
==
˘˘ 
Key
˘˘ 
.
˘˘ 
Space
˘˘ "
||
˘˘# %
(
˙˙ 
e
˙˙ 
.
˙˙ 
Key
˙˙ 
==
˙˙ 
Key
˙˙ 
.
˙˙ 
V
˙˙ 
&&
˙˙  "
Keyboard
˙˙# +
.
˙˙+ ,
	Modifiers
˙˙, 5
==
˙˙6 8
ModifierKeys
˙˙9 E
.
˙˙E F
Control
˙˙F M
)
˙˙M N
||
˙˙O Q
(
˚˚ 
e
˚˚ 
.
˚˚ 
Key
˚˚ 
==
˚˚ 
Key
˚˚ 
.
˚˚ 
C
˚˚ 
&&
˚˚  "
Keyboard
˚˚# +
.
˚˚+ ,
	Modifiers
˚˚, 5
==
˚˚6 8
ModifierKeys
˚˚9 E
.
˚˚E F
Control
˚˚F M
)
˚˚M N
||
˚˚O Q
(
¸¸ 
e
¸¸ 
.
¸¸ 
Key
¸¸ 
==
¸¸ 
Key
¸¸ 
.
¸¸ 
X
¸¸ 
&&
¸¸  "
Keyboard
¸¸# +
.
¸¸+ ,
	Modifiers
¸¸, 5
==
¸¸6 8
ModifierKeys
¸¸9 E
.
¸¸E F
Control
¸¸F M
)
¸¸M N
)
¸¸N O
{
˝˝ 
e
˛˛ 
.
˛˛ 
Handled
˛˛ 
=
˛˛ 
true
˛˛  
;
˛˛  !
}
ˇˇ 
}
ÄÄ 	
}
ÇÇ 
}ÉÉ À<
†C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloLogin\RecuperarContrase√±a.xaml.cs
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
RecuperarContrase√±a ,
:- .
Page/ 3
{ 
public  
RecuperarContrase√±a "
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

DialogType	[[w Å
.
[[Å Ç
Success
[[Ç â
)
[[â ä
;
[[ä ã
NavigationService\\ %
.\\% &
Navigate\\& .
(\\. /
new\\/ 2"
RestablecerContrase√±a\\3 H
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
$str	__1 Ç
,
__Ç É

DialogType
__Ñ é
.
__é è
Warning
__è ñ
)
__ñ ó
;
__ó ò
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

DialogType	bb{ Ö
.
bbÖ Ü
Error
bbÜ ã
)
bbã å
;
bbå ç
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
}zz Ã®
ëC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloLogin\Login.xaml.cs
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
IrARecuperarContrase√±a:: +
(::+ ,
object::, 2
sender::3 9
,::9 :
RoutedEventArgs::; J
e::K L
)::L M
{;; 	 
RecuperarContrase√±a<<  
recuperarContrase√±a<<  3
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
recuperarContrase√±a==, ?
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
txtb_Contrase√±aTT 
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
txtb_Contrase√±a[[ 
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
txtb_Contrase√±aaa 
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
	Collapsed	aaz É
;
aaÉ Ñ
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
txt_Contrase√±aVisiblekk %
.kk% &
Textkk& *
=kk+ ,
pwb_PasswordBoxkk- <
.kk< =
Passwordkk= E
;kkE F"
txt_Contrase√±aVisiblell %
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
txt_Contrase√±aVisibleqq+ @
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
txt_Contrase√±aVisibless %
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
txt_Contrase√±aVisible{{+ @
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
ÄÄ 	
bool
ÅÅ 
usuario
ÅÅ 
=
ÅÅ 
!
ÅÅ 
string
ÅÅ "
.
ÅÅ" # 
IsNullOrWhiteSpace
ÅÅ# 5
(
ÅÅ5 6
txtb_Usuario
ÅÅ6 B
.
ÅÅB C
Text
ÅÅC G
)
ÅÅG H
&&
ÅÅI K
txtb_Usuario
ÅÅL X
.
ÅÅX Y
Text
ÅÅY ]
!=
ÅÅ^ `
$str
ÅÅa ~
;
ÅÅ~ 
string
ÉÉ 
contrase√±a
ÉÉ 
=
ÉÉ 
isPasswordVisible
ÉÉ  1
?
ÉÉ2 3$
txt_Contrase√±aVisible
ÉÉ4 I
.
ÉÉI J
Text
ÉÉJ N
:
ÉÉO P
pwb_PasswordBox
ÉÉQ `
.
ÉÉ` a
Password
ÉÉa i
;
ÉÉi j
bool
ÑÑ 
contrasenaValida
ÑÑ !
=
ÑÑ" #
!
ÑÑ$ %
string
ÑÑ% +
.
ÑÑ+ , 
IsNullOrWhiteSpace
ÑÑ, >
(
ÑÑ> ?
contrase√±a
ÑÑ? I
)
ÑÑI J
&&
ÑÑK M
txtb_Contrase√±a
ÑÑN ]
.
ÑÑ] ^
Text
ÑÑ^ b
==
ÑÑc e
$str
ÑÑf }
;
ÑÑ} ~
if
ÜÜ 
(
ÜÜ 
!
ÜÜ 
usuario
ÜÜ 
)
ÜÜ 
brd_Usuario
ÜÜ %
.
ÜÜ% &
BorderBrush
ÜÜ& 1
=
ÜÜ2 3
Brushes
ÜÜ4 ;
.
ÜÜ; <
Red
ÜÜ< ?
;
ÜÜ? @
if
áá 
(
áá 
!
áá 
contrasenaValida
áá !
)
áá! "
brd_Contrase√±a
áá# 1
.
áá1 2
BorderBrush
áá2 =
=
áá> ?
Brushes
áá@ G
.
ááG H
Red
ááH K
;
ááK L
return
ââ 
usuario
ââ 
&&
ââ 
contrasenaValida
ââ .
;
ââ. /
}
ää 	
private
åå 
void
åå !
RegresarBordeNormal
åå (
(
åå( )
)
åå) *
{
çç 	
SolidColorBrush
éé 
verde
éé !
=
éé" #
new
éé$ '
(
éé' (
(
éé( )
Color
éé) .
)
éé. /
ColorConverter
éé/ =
.
éé= >
ConvertFromString
éé> O
(
ééO P
$str
ééP Y
)
ééY Z
)
ééZ [
;
éé[ \
brd_Usuario
èè 
.
èè 
BorderBrush
èè #
=
èè$ %
verde
èè& +
;
èè+ ,
brd_Contrase√±a
êê 
.
êê 
BorderBrush
êê &
=
êê& '
verde
êê( -
;
êê- .
}
ëë 	
private
ìì 
void
ìì 
BtnLoginClick
ìì "
(
ìì" #
object
ìì# )
sender
ìì* 0
,
ìì0 1
RoutedEventArgs
ìì2 A
e
ììB C
)
ììC D
{
îî 	!
RegresarBordeNormal
ïï 
(
ïï  
)
ïï  !
;
ïï! "
if
óó 
(
óó 
VerificarCampos
óó 
(
óó  
)
óó  !
)
óó! "
{
òò 
string
ôô 
usuario
ôô 
=
ôô  
txtb_Usuario
ôô! -
.
ôô- .
Text
ôô. 2
;
ôô2 3
string
öö 
contrasenia
öö "
=
öö# $
isPasswordVisible
öö% 6
?
öö7 8$
txt_Contrase√±aVisible
öö9 N
.
ööN O
Text
ööO S
:
ööT U
pwb_PasswordBox
ööV e
.
ööe f
Password
ööf n
;
öön o
string
õõ 
contraseniaHashed
õõ (
=
õõ) *
Hasher
õõ+ 1
.
õõ1 2

HashToSHA2
õõ2 <
(
õõ< =
contrasenia
õõ= H
)
õõH I
;
õõI J
var
ùù 
credenciales
ùù  
=
ùù! "
new
ùù# &
UsuarioLogin
ùù' 3
{
ùù4 5

Identifier
ùù6 @
=
ùùA B
usuario
ùùC J
,
ùùJ K
Contrasenia
ùùL W
=
ùùX Y
contraseniaHashed
ùùZ k
}
ùùl m
;
ùùm n
RespuestaLogin
üü 
(
üü 
credenciales
üü +
)
üü+ ,
;
üü, -
}
†† 
else
°° 
{
¢¢ )
MostrarMensajePersonalizado
££ +
(
££+ ,
$str
££, d
,
££d e

DialogType
££f p
.
££p q
Warning
££q x
)
££x y
;
££y z
}
•• 
}
ßß 	
private
©© 
async
©© 
void
©© 
RespuestaLogin
©© )
(
©©) *
UsuarioLogin
©©* 6
login
©©7 <
)
©©< =
{
™™ 	
	btn_Login
´´ 
.
´´ 
	IsEnabled
´´ 
=
´´  !
false
´´" '
;
´´' (
img_Loading
¨¨ 
.
¨¨ 

Visibility
¨¨ "
=
¨¨# $

Visibility
¨¨% /
.
¨¨/ 0
Visible
¨¨0 7
;
¨¨7 8
try
ÆÆ 
{
ØØ 
var
∞∞ 
	respuesta
∞∞ 
=
∞∞ 
await
∞∞  %
UsuarioServicio
∞∞& 5
.
∞∞5 6 
IniciarSesionAsync
∞∞6 H
(
∞∞H I
login
∞∞I N
)
∞∞N O
;
∞∞O P
switch
≤≤ 
(
≤≤ 
	respuesta
≤≤ !
.
≤≤! "
Estado
≤≤" (
)
≤≤( )
{
≥≥ 
case
¥¥ 
(
¥¥ 
int
¥¥ 
)
¥¥ 
HttpStatusCode
¥¥ ,
.
¥¥, -
OK
¥¥- /
:
¥¥/ 0
await
µµ '
CrearPerfilSingletonAsync
µµ 7
(
µµ7 8
	respuesta
µµ8 A
.
µµA B
Datos
µµB G
,
µµG H
	respuesta
µµI R
.
µµR S
Token
µµS X
)
µµX Y
;
µµY Z
DesplegarMenu
∂∂ %
(
∂∂% &
	respuesta
∂∂& /
.
∂∂/ 0
Datos
∂∂0 5
.
∂∂5 6

TipoAcceso
∂∂6 @
)
∂∂@ A
;
∂∂A B
await
∑∑ 
App
∑∑ !
.
∑∑! ""
SocketNotificaciones
∑∑" 6
.
∑∑6 7
ConectarAsync
∑∑7 D
(
∑∑D E
PerfilSingleton
∑∑E T
.
∑∑T U
Instance
∑∑U ]
.
∑∑] ^!
IdUsuarioRegistrado
∑∑^ q
.
∑∑q r
ToString
∑∑r z
(
∑∑z {
)
∑∑{ |
)
∑∑| }
;
∑∑} ~
break
∏∏ 
;
∏∏ 
case
ππ 
(
ππ 
int
ππ 
)
ππ 
HttpStatusCode
ππ ,
.
ππ, -
Unauthorized
ππ- 9
:
ππ9 :
case
∫∫ 
(
∫∫ 
int
∫∫ 
)
∫∫ 
HttpStatusCode
∫∫ ,
.
∫∫, -

BadRequest
∫∫- 7
:
∫∫7 8)
MostrarMensajePersonalizado
ªª 3
(
ªª3 4
$str
ªª4 p
,
ªªp q

DialogType
ªªr |
.
ªª| }
Warningªª} Ñ
)ªªÑ Ö
;ªªÖ Ü
break
ºº 
;
ºº 
case
ΩΩ 
(
ΩΩ 
int
ΩΩ 
)
ΩΩ 
HttpStatusCode
ΩΩ ,
.
ΩΩ, -
	Forbidden
ΩΩ- 6
:
ΩΩ6 7)
MostrarMensajePersonalizado
ææ 3
(
ææ3 4
$strææ4 õ
,ææõ ú

DialogTypeææù ß
.ææß ®
Warningææ® Ø
)ææØ ∞
;ææ∞ ±
break
øø 
;
øø 
case
¿¿ 
(
¿¿ 
int
¿¿ 
)
¿¿ 
HttpStatusCode
¿¿ ,
.
¿¿, -!
InternalServerError
¿¿- @
:
¿¿@ A)
MostrarMensajePersonalizado
¡¡ 3
(
¡¡3 4
$str
¡¡4 f
,
¡¡f g

DialogType
¡¡h r
.
¡¡r s
Error
¡¡s x
)
¡¡x y
;
¡¡y z
break
¬¬ 
;
¬¬ 
}
√√ 
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
	Exception
≈≈ 
ex
≈≈ 
)
≈≈  
{
∆∆ )
MostrarMensajePersonalizado
«« +
(
««+ ,
$str
««, K
+
««L M
ex
««N P
.
««P Q
Message
««Q X
,
««X Y

DialogType
««Z d
.
««d e
Error
««e j
)
««j k
;
««k l
}
»» 
finally
…… 
{
   
	btn_Login
ÀÀ 
.
ÀÀ 
	IsEnabled
ÀÀ #
=
ÀÀ$ %
true
ÀÀ& *
;
ÀÀ* +
img_Loading
ÃÃ 
.
ÃÃ 

Visibility
ÃÃ &
=
ÃÃ' (

Visibility
ÃÃ) 3
.
ÃÃ3 4
	Collapsed
ÃÃ4 =
;
ÃÃ= >
}
ÕÕ 
}
ŒŒ 	
private
”” 
async
”” 
Task
”” '
CrearPerfilSingletonAsync
”” 4
(
””4 5
DatosUsuario
””5 A
datos
””B G
,
””G H
string
””I O
token
””P U
)
””U V
{
‘‘ 	
BusquedaSingleton
’’ 
.
’’ 
Instance
’’ &
.
’’& '
LimpiarBusqueda
’’' 6
(
’’6 7
)
’’7 8
;
’’8 9
var
÷÷ 
perfil
÷÷ 
=
÷÷ 
PerfilSingleton
÷÷ (
.
÷÷( )
Instance
÷÷) 1
;
÷÷1 2
perfil
◊◊ 
.
◊◊ !
IdUsuarioRegistrado
◊◊ &
=
◊◊' (
datos
◊◊) .
.
◊◊. /
	IdUsuario
◊◊/ 8
;
◊◊8 9
perfil
ÿÿ 
.
ÿÿ 
Nombre
ÿÿ 
=
ÿÿ 
datos
ÿÿ !
.
ÿÿ! "
Nombre
ÿÿ" (
;
ÿÿ( )
perfil
ŸŸ 
.
ŸŸ 
PrimerApellido
ŸŸ !
=
ŸŸ" #
datos
ŸŸ$ )
.
ŸŸ) *
PrimerApellido
ŸŸ* 8
;
ŸŸ8 9
perfil
⁄⁄ 
.
⁄⁄ 
SegundoApellido
⁄⁄ "
=
⁄⁄# $
datos
⁄⁄% *
.
⁄⁄* +
SegundoApellido
⁄⁄+ :
;
⁄⁄: ;
perfil
€€ 
.
€€ 
NombreUsuario
€€  
=
€€! "
datos
€€# (
.
€€( )
NombreUsuario
€€) 6
;
€€6 7
perfil
‹‹ 
.
‹‹ 
Correo
‹‹ 
=
‹‹ 
datos
‹‹ !
.
‹‹! "
Correo
‹‹" (
;
‹‹( )
perfil
›› 
.
›› 
TokenJwt
›› 
=
›› 
token
›› #
;
››# $
if
ﬂﬂ 
(
ﬂﬂ 
!
ﬂﬂ 
string
ﬂﬂ 
.
ﬂﬂ 
IsNullOrEmpty
ﬂﬂ %
(
ﬂﬂ% &
datos
ﬂﬂ& +
.
ﬂﬂ+ ,

FotoPerfil
ﬂﬂ, 6
)
ﬂﬂ6 7
)
ﬂﬂ7 8
{
‡‡ 
try
·· 
{
‚‚ 
var
„„ 

grpcClient
„„ "
=
„„# $
new
„„% (&
FileServiceClientHandler
„„) A
(
„„A B
)
„„B C
;
„„C D
var
‰‰ 
(
‰‰ 
fotoBinaria
‰‰ $
,
‰‰$ %
_
‰‰& '
)
‰‰' (
=
‰‰) *
await
‰‰+ 0

grpcClient
‰‰1 ;
.
‰‰; < 
DownloadImageAsync
‰‰< N
(
‰‰N O
datos
‰‰O T
.
‰‰T U

FotoPerfil
‰‰U _
)
‰‰_ `
;
‰‰` a
perfil
ÊÊ 
.
ÊÊ 
FotoPerfilBinaria
ÊÊ ,
=
ÊÊ- .
fotoBinaria
ÊÊ/ :
??
ÊÊ; =
Array
ÊÊ> C
.
ÊÊC D
Empty
ÊÊD I
<
ÊÊI J
byte
ÊÊJ N
>
ÊÊN O
(
ÊÊO P
)
ÊÊP Q
;
ÊÊQ R
}
ÁÁ 
catch
ËË 
(
ËË 
	Exception
ËË  
ex
ËË! #
)
ËË# $
{
ÈÈ 
perfil
ÍÍ 
.
ÍÍ 
FotoPerfilBinaria
ÍÍ ,
=
ÍÍ- .
Array
ÍÍ/ 4
.
ÍÍ4 5
Empty
ÍÍ5 :
<
ÍÍ: ;
byte
ÍÍ; ?
>
ÍÍ? @
(
ÍÍ@ A
)
ÍÍA B
;
ÍÍB C
_logger
ÏÏ 
.
ÏÏ 
LogFatal
ÏÏ $
(
ÏÏ$ %
ex
ÏÏ% '
)
ÏÏ' (
;
ÏÏ( ))
MostrarMensajePersonalizado
ÌÌ /
(
ÌÌ/ 0
$str
ÌÌ0 t
,
ÌÌt u

DialogTypeÌÌv Ä
.ÌÌÄ Å
WarningÌÌÅ à
)ÌÌà â
;ÌÌâ ä
}
ÓÓ 
}
ÔÔ 
}
 	
private
ÙÙ 
void
ÙÙ 
DesplegarMenu
ÙÙ "
(
ÙÙ" #
string
ÙÙ# )
role
ÙÙ* .
)
ÙÙ. /
{
ıı 	
switch
ˆˆ 
(
ˆˆ 
role
ˆˆ 
)
ˆˆ 
{
˜˜ 
case
¯¯ 
$str
¯¯ !
:
¯¯! "
NavigationService
˘˘ %
.
˘˘% &
Navigate
˘˘& .
(
˘˘. /
new
˘˘/ 2
MenuPrincipal
˘˘3 @
(
˘˘@ A
)
˘˘A B
)
˘˘B C
;
˘˘C D
break
˙˙ 
;
˙˙ 
case
¸¸ 
$str
¸¸ $
:
¸¸$ %
NavigationService
˝˝ %
.
˝˝% &
Navigate
˝˝& .
(
˝˝. /
new
˝˝/ 2
MenuAdministrador
˝˝3 D
(
˝˝D E
)
˝˝E F
)
˝˝F G
;
˝˝G H
break
˛˛ 
;
˛˛ 
}
ˇˇ 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ¿”
§C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\VisualizarDocumento.xaml.cs
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
)	MM Ä
;
MMÄ Å
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
Error	xx~ É
)
xxÉ Ñ
;
xxÑ Ö
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
ÅÅ 
:
ÅÅ )
MostrarMensajePersonalizado
ÇÇ 3
(
ÇÇ3 4
$"
ÇÇ4 6
$str
ÇÇ6 =
{
ÇÇ= >
	respuesta
ÇÇ> G
.
ÇÇG H
Mensaje
ÇÇH O
}
ÇÇO P
"
ÇÇP Q
,
ÇÇQ R

DialogType
ÇÇS ]
.
ÇÇ] ^
Warning
ÇÇ^ e
)
ÇÇe f
;
ÇÇf g
break
ÉÉ 
;
ÉÉ 
}
ÑÑ 
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
	Exception
ÜÜ 
ex
ÜÜ 
)
ÜÜ  
{
áá 
_logger
àà 
.
àà 
LogFatal
àà  
(
àà  !
ex
àà! #
)
àà# $
;
àà$ %)
MostrarMensajePersonalizado
ââ +
(
ââ+ ,
$str
ââ, b
,
ââb c

DialogType
ââd n
.
âân o
Error
ââo t
)
âât u
;
ââu v
}
ää 
}
ãã 	
public
çç 
BitmapImage
çç 
?
çç 
ConvertirABitmap
çç ,
(
çç, -
byte
çç- 1
[
çç1 2
]
çç2 3
datos
çç4 9
)
çç9 :
{
éé 	
if
èè 
(
èè 
datos
èè 
==
èè 
null
èè 
||
èè  
datos
èè! &
.
èè& '
Length
èè' -
==
èè. 0
$num
èè1 2
)
èè2 3
return
èè4 :
null
èè; ?
;
èè? @
using
ëë 
var
ëë 
stream
ëë 
=
ëë 
new
ëë "
MemoryStream
ëë# /
(
ëë/ 0
datos
ëë0 5
)
ëë5 6
;
ëë6 7
var
íí 
image
íí 
=
íí 
new
íí 
BitmapImage
íí '
(
íí' (
)
íí( )
;
íí) *
image
ìì 
.
ìì 
	BeginInit
ìì 
(
ìì 
)
ìì 
;
ìì 
image
îî 
.
îî 
CacheOption
îî 
=
îî 
BitmapCacheOption
îî  1
.
îî1 2
OnLoad
îî2 8
;
îî8 9
image
ïï 
.
ïï 
StreamSource
ïï 
=
ïï  
stream
ïï! '
;
ïï' (
image
ññ 
.
ññ 
EndInit
ññ 
(
ññ 
)
ññ 
;
ññ 
return
óó 
image
óó 
;
óó 
}
òò 	
private
úú 
async
úú 
void
úú 
RegistrarVista
úú )
(
úú) *
)
úú* +
{
ùù 	
string
üü 
token
üü 
=
üü 
PerfilSingleton
üü *
.
üü* +
Instance
üü+ 3
.
üü3 4
TokenJwt
üü4 <
;
üü< =
int
†† 
id
†† 
=
††  
_publicacionActual
†† '
.
††' (
IdPublicacion
††( 5
;
††5 6
var
°° 
	respuesta
°° 
=
°° 
await
°° !!
PublicacionServicio
°°" 5
.
°°5 6)
RegistrarVisualizacionAsync
°°6 Q
(
°°Q R
id
°°R T
)
°°T U
;
°°U V
switch
££ 
(
££ 
	respuesta
££ 
.
££ 
	Resultado
££ '
)
££' (
{
§§ 
case
•• 
(
•• 
int
•• 
)
•• 
HttpStatusCode
•• (
.
••( )
OK
••) +
:
••+ , 
_publicacionActual
¶¶ &
.
¶¶& '
Vistas
¶¶' -
++
¶¶- /
;
¶¶/ 0
txtb_Vistas
ßß 
.
ßß  
Text
ßß  $
=
ßß% & 
_publicacionActual
ßß' 9
.
ßß9 :
Vistas
ßß: @
.
ßß@ A
ToString
ßßA I
(
ßßI J
)
ßßJ K
;
ßßK L
break
®® 
;
®® 
}
¨¨ 
}
≠≠ 	
private
ÆÆ 
async
ÆÆ 
void
ÆÆ 
VerificarLiker
ÆÆ )
(
ÆÆ) *
)
ÆÆ* +
{
ØØ 	
string
∞∞ 
token
∞∞ 
=
∞∞ 
PerfilSingleton
∞∞ *
.
∞∞* +
Instance
∞∞+ 3
.
∞∞3 4
TokenJwt
∞∞4 <
;
∞∞< =
int
±± 
id
±± 
=
±±  
_publicacionActual
±± '
.
±±' (
IdPublicacion
±±( 5
;
±±5 6
var
≤≤ 
	respuesta
≤≤ 
=
≤≤ 
await
≤≤ !!
PublicacionServicio
≤≤" 5
.
≤≤5 6 
VerificarLikeAsync
≤≤6 H
(
≤≤H I
token
≤≤I N
,
≤≤N O
id
≤≤P R
)
≤≤R S
;
≤≤S T!
_cargandoEstadoLike
¥¥ 
=
¥¥  !
true
¥¥" &
;
¥¥& '
switch
∂∂ 
(
∂∂ 
	respuesta
∂∂ 
.
∂∂ 
	Resultado
∂∂ '
)
∂∂' (
{
∑∑ 
case
∏∏ 
(
∏∏ 
int
∏∏ 
)
∏∏ 
HttpStatusCode
∏∏ (
.
∏∏( )
OK
∏∏) +
:
∏∏+ ,
btn_Like
∫∫ 
.
∫∫ 
	IsChecked
∫∫ &
=
∫∫' (
true
∫∫) -
;
∫∫- .

_yaDioLike
ªª 
=
ªª  
true
ªª! %
;
ªª% &
btn_Like
ºº 
.
ºº 

Visibility
ºº '
=
ºº( )

Visibility
ºº* 4
.
ºº4 5
Visible
ºº5 <
;
ºº< =
break
ΩΩ 
;
ΩΩ 
default
øø 
:
øø 
btn_Like
¿¿ 
.
¿¿ 
	IsChecked
¿¿ &
=
¿¿' (
false
¿¿) .
;
¿¿. /

_yaDioLike
¡¡ 
=
¡¡  
false
¡¡! &
;
¡¡& '
btn_Like
¬¬ 
.
¬¬ 

Visibility
¬¬ '
=
¬¬( )

Visibility
¬¬* 4
.
¬¬4 5
Visible
¬¬5 <
;
¬¬< =
break
√√ 
;
√√ 
}
ƒƒ !
_cargandoEstadoLike
∆∆ 
=
∆∆  !
false
∆∆" '
;
∆∆' (
}
«« 	
private
   
async
   
void
   
btn_Like_Click
   )
(
  ) *
object
  * 0
sender
  1 7
,
  7 8
RoutedEventArgs
  9 H
e
  I J
)
  J K
{
ÀÀ 	
if
ÃÃ 
(
ÃÃ !
_cargandoEstadoLike
ÃÃ #
||
ÃÃ$ & 
_publicacionActual
ÃÃ' 9
==
ÃÃ: <
null
ÃÃ= A
)
ÃÃA B
return
ÃÃC I
;
ÃÃI J
string
ŒŒ 
token
ŒŒ 
=
ŒŒ 
PerfilSingleton
ŒŒ *
.
ŒŒ* +
Instance
ŒŒ+ 3
.
ŒŒ3 4
TokenJwt
ŒŒ4 <
;
ŒŒ< =
int
œœ 
id
œœ 
=
œœ  
_publicacionActual
œœ '
.
œœ' (
IdPublicacion
œœ( 5
;
œœ5 6
if
—— 
(
—— 

_yaDioLike
—— 
)
—— 
{
““ 
var
”” 
	respuesta
”” 
=
”” 
await
””  %!
PublicacionServicio
””& 9
.
””9 :
QuitarLikeAsync
””: I
(
””I J
token
””J O
,
””O P
id
””Q S
)
””S T
;
””T U
if
‘‘ 
(
‘‘ 
	respuesta
‘‘ 
.
‘‘ 
	Resultado
‘‘ '
==
‘‘( *
(
‘‘+ ,
int
‘‘, /
)
‘‘/ 0
HttpStatusCode
‘‘0 >
.
‘‘> ?
OK
‘‘? A
)
‘‘A B
{
’’ 

_yaDioLike
÷÷ 
=
÷÷  
false
÷÷! &
;
÷÷& ' 
_publicacionActual
◊◊ &
.
◊◊& '
Likes
◊◊' ,
--
◊◊, .
;
◊◊. /

txtb_Likes
ÿÿ 
.
ÿÿ 
Text
ÿÿ #
=
ÿÿ$ % 
_publicacionActual
ÿÿ& 8
.
ÿÿ8 9
Likes
ÿÿ9 >
.
ÿÿ> ?
ToString
ÿÿ? G
(
ÿÿG H
)
ÿÿH I
;
ÿÿI J
}
ŸŸ 
}
⁄⁄ 
else
€€ 
{
‹‹ 
var
›› 
	respuesta
›› 
=
›› 
await
››  %!
PublicacionServicio
››& 9
.
››9 :
DarLikeAsync
››: F
(
››F G
token
››G L
,
››L M
id
››N P
)
››P Q
;
››Q R
if
ﬁﬁ 
(
ﬁﬁ 
	respuesta
ﬁﬁ 
.
ﬁﬁ 
	Resultado
ﬁﬁ '
==
ﬁﬁ( *
(
ﬁﬁ+ ,
int
ﬁﬁ, /
)
ﬁﬁ/ 0
HttpStatusCode
ﬁﬁ0 >
.
ﬁﬁ> ?
OK
ﬁﬁ? A
)
ﬁﬁA B
{
ﬂﬂ 

_yaDioLike
‡‡ 
=
‡‡  
true
‡‡! %
;
‡‡% & 
_publicacionActual
·· &
.
··& '
Likes
··' ,
++
··, .
;
··. /

txtb_Likes
‚‚ 
.
‚‚ 
Text
‚‚ #
=
‚‚$ % 
_publicacionActual
‚‚& 8
.
‚‚8 9
Likes
‚‚9 >
.
‚‚> ?
ToString
‚‚? G
(
‚‚G H
)
‚‚H I
;
‚‚I J
}
„„ 
}
‰‰ 
}
ÂÂ 	
private
ÈÈ 
void
ÈÈ )
MostrarMensajePersonalizado
ÈÈ 0
(
ÈÈ0 1
string
ÈÈ1 7
message
ÈÈ8 ?
,
ÈÈ? @

DialogType
ÈÈA K
type
ÈÈL P
)
ÈÈP Q
{
ÍÍ 	
var
ÎÎ 
dialog
ÎÎ 
=
ÎÎ 
new
ÎÎ +
VentanaEmergentePersonalizada
ÎÎ :
(
ÎÎ: ;
message
ÎÎ; B
,
ÎÎB C
type
ÎÎD H
)
ÎÎH I
{
ÏÏ 
Owner
ÌÌ 
=
ÌÌ 
Window
ÌÌ 
.
ÌÌ 
	GetWindow
ÌÌ (
(
ÌÌ( )
this
ÌÌ) -
)
ÌÌ- .
}
ÓÓ 
;
ÓÓ 
dialog
ÔÔ 
.
ÔÔ 

ShowDialog
ÔÔ 
(
ÔÔ 
)
ÔÔ 
;
ÔÔ  
}
 	
private
ÚÚ 
void
ÚÚ $
CargarDatosPublicacion
ÚÚ +
(
ÚÚ+ ,
)
ÚÚ, -
{
ÛÛ 	
if
ÙÙ 
(
ÙÙ  
_publicacionActual
ÙÙ "
==
ÙÙ# %
null
ÙÙ& *
)
ÙÙ* +
return
ÙÙ, 2
;
ÙÙ2 3

txtb_Likes
ıı 
.
ıı 
Text
ıı 
=
ıı  
_publicacionActual
ıı 0
.
ıı0 1
Likes
ıı1 6
.
ıı6 7
ToString
ıı7 ?
(
ıı? @
)
ıı@ A
;
ııA B
txtb_Vistas
ˆˆ 
.
ˆˆ 
Text
ˆˆ 
=
ˆˆ  
_publicacionActual
ˆˆ 1
.
ˆˆ1 2
Vistas
ˆˆ2 8
.
ˆˆ8 9
ToString
ˆˆ9 A
(
ˆˆA B
)
ˆˆB C
;
ˆˆC D
txtb_Descargas
˜˜ 
.
˜˜ 
Text
˜˜ 
=
˜˜  ! 
_publicacionActual
˜˜" 4
.
˜˜4 5
	Descargas
˜˜5 >
.
˜˜> ?
ToString
˜˜? G
(
˜˜G H
)
˜˜H I
;
˜˜I J
txtb_Titulo
¯¯ 
.
¯¯ 
Text
¯¯ 
=
¯¯  
_publicacionActual
¯¯ 1
.
¯¯1 2
Titulo
¯¯2 8
;
¯¯8 9
txtb_Resumen
˘˘ 
.
˘˘ 
Text
˘˘ 
=
˘˘  
_publicacionActual
˘˘  2
.
˘˘2 3
Descripcion
˘˘3 >
;
˘˘> ?

txtb_Autor
˙˙ 
.
˙˙ 
Text
˙˙ 
=
˙˙  
_publicacionActual
˙˙ 0
.
˙˙0 1
Autor
˙˙1 6
;
˙˙6 7

txtb_Fecha
˚˚ 
.
˚˚ 
Text
˚˚ 
=
˚˚  
_publicacionActual
˚˚ 0
.
˚˚0 1
Fecha
˚˚1 6
;
˚˚6 7
}
¸¸ 	
private
˛˛ 
void
˛˛ %
VerificarSiInicioSesion
˛˛ ,
(
˛˛, -
object
˛˛- 3
sender
˛˛4 :
,
˛˛: ;
RoutedEventArgs
˛˛< K
e
˛˛L M
)
˛˛M N
{
ˇˇ 	
var
ÄÄ 
perfil
ÄÄ 
=
ÄÄ 
PerfilSingleton
ÄÄ (
.
ÄÄ( )
Instance
ÄÄ) 1
;
ÄÄ1 2
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
string
ÇÇ 
.
ÇÇ 
IsNullOrEmpty
ÇÇ %
(
ÇÇ% &
perfil
ÇÇ& ,
.
ÇÇ, -
Correo
ÇÇ- 3
)
ÇÇ3 4
)
ÇÇ4 5
{
ÉÉ 

txtb_Frase
ÖÖ 
.
ÖÖ 

Visibility
ÖÖ %
=
ÖÖ& '

Visibility
ÖÖ( 2
.
ÖÖ2 3
	Collapsed
ÖÖ3 <
;
ÖÖ< =
img_Visualizar
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ )
=
ÜÜ* +

Visibility
ÜÜ, 6
.
ÜÜ6 7
	Collapsed
ÜÜ7 @
;
ÜÜ@ A

PdfWebView
áá 
.
áá 

Visibility
áá %
=
áá& '

Visibility
áá( 2
.
áá2 3
Visible
áá3 :
;
áá: ;
stckp_Accesorios
àà  
.
àà  !

Visibility
àà! +
=
àà, -

Visibility
àà. 8
.
àà8 9
Visible
àà9 @
;
àà@ A

elp_Perfil
ää 
.
ää 

Visibility
ää %
=
ää& '

Visibility
ää( 2
.
ää2 3
Visible
ää3 :
;
ää: ;
brd_Comentarios
ãã 
.
ãã  

Visibility
ãã  *
=
ãã+ ,

Visibility
ãã- 7
.
ãã7 8
Visible
ãã8 ?
;
ãã? @
SolidColorBrush
çç 
verde
çç  %
=
çç& '
new
çç( +
(
çç+ ,
(
çç, -
Color
çç- 2
)
çç2 3
ColorConverter
çç3 A
.
ççA B
ConvertFromString
ççB S
(
ççS T
$str
ççT ]
)
çç] ^
)
çç^ _
;
çç_ `
brd_Descargar
éé 
.
éé 

Background
éé (
=
éé) *
verde
éé+ 0
;
éé0 1
btn_Descargar
èè 
.
èè 
	IsEnabled
èè '
=
èè( )
true
èè* .
;
èè. /
brd_Descargar
êê 
.
êê 
Cursor
êê $
=
êê% &
Cursors
êê' .
.
êê. /
Hand
êê/ 3
;
êê3 4
}
ëë 
}
íí 	
private
îî 
async
îî 
Task
îî 
CargarPdfAsync
îî )
(
îî) *
)
îî* +
{
ïï 	
if
ññ 
(
ññ  
_publicacionActual
ññ "
==
ññ# %
null
ññ& *
||
ññ+ -
string
ññ. 4
.
ññ4 5
IsNullOrEmpty
ññ5 B
(
ññB C 
_publicacionActual
ññC U
.
ññU V
Ruta
ññV Z
)
ññZ [
)
ññ[ \
{
óó )
MostrarMensajePersonalizado
òò +
(
òò+ ,
$str
òò, S
,
òòS T

DialogType
òòU _
.
òò_ `
Warning
òò` g
)
òòg h
;
òòh i
return
ôô 
;
ôô 
}
öö 
try
úú 
{
ùù 

PdfWebView
ûû 
.
ûû 

Visibility
ûû %
=
ûû& '

Visibility
ûû( 2
.
ûû2 3
	Collapsed
ûû3 <
;
ûû< =
var
üü 
grpc
üü 
=
üü 
new
üü &
FileServiceClientHandler
üü 7
(
üü7 8
)
üü8 9
;
üü9 :
var
†† 
(
†† 

pdfBinario
†† 
,
††  
nombreArchivo
††! .
)
††. /
=
††0 1
await
††2 7
grpc
††8 <
.
††< =
DownloadPdfAsync
††= M
(
††M N 
_publicacionActual
††N `
.
††` a
Ruta
††a e
)
††e f
;
††f g
if
¢¢ 
(
¢¢ 

pdfBinario
¢¢ 
!=
¢¢ !
null
¢¢" &
&&
¢¢' )

pdfBinario
¢¢* 4
.
¢¢4 5
Length
¢¢5 ;
>
¢¢< =
$num
¢¢> ?
)
¢¢? @
{
££ 
string
§§ 
tempPath
§§ #
=
§§$ %
System
§§& ,
.
§§, -
IO
§§- /
.
§§/ 0
Path
§§0 4
.
§§4 5
GetTempPath
§§5 @
(
§§@ A
)
§§A B
;
§§B C
_rutaPdfTemporal
•• $
=
••% &
System
••' -
.
••- .
IO
••. 0
.
••0 1
Path
••1 5
.
••5 6
Combine
••6 =
(
••= >
tempPath
••> F
,
••F G
$"
••H J
{
••J K 
_publicacionActual
••K ]
.
••] ^
IdPublicacion
••^ k
}
••k l
$str
••l m
{
••m n
nombreArchivo
••n {
}
••{ |
"
••| }
)
••} ~
;
••~ 
await
ßß 
File
ßß 
.
ßß  
WriteAllBytesAsync
ßß 1
(
ßß1 2
_rutaPdfTemporal
ßß2 B
,
ßßB C

pdfBinario
ßßD N
)
ßßN O
;
ßßO P
await
©© &
InicializarWebView2Async
©© 2
(
©©2 3
)
©©3 4
;
©©4 5
}
™™ 
else
´´ 
{
¨¨ )
MostrarMensajePersonalizado
≠≠ /
(
≠≠/ 0
$str
≠≠0 T
,
≠≠T U

DialogType
≠≠V `
.
≠≠` a
Error
≠≠a f
)
≠≠f g
;
≠≠g h
}
ÆÆ 
}
ØØ 
catch
∞∞ 
(
∞∞ 
	Exception
∞∞ 
ex
∞∞ 
)
∞∞  
{
±± 
_logger
≤≤ 
.
≤≤ 
LogError
≤≤  
(
≤≤  !
ex
≤≤! #
)
≤≤# $
;
≤≤$ %)
MostrarMensajePersonalizado
≥≥ +
(
≥≥+ ,
$str
≥≥, K
,
≥≥K L

DialogType
≥≥M W
.
≥≥W X
Error
≥≥X ]
)
≥≥] ^
;
≥≥^ _
}
¥¥ 
}
µµ 	
private
∑∑ 
async
∑∑ 
Task
∑∑ &
InicializarWebView2Async
∑∑ 3
(
∑∑3 4
)
∑∑4 5
{
∏∏ 	
try
ππ 
{
∫∫ 
if
ªª 
(
ªª 

PdfWebView
ªª 
.
ªª 
CoreWebView2
ªª +
==
ªª, .
null
ªª/ 3
)
ªª3 4
await
ºº 

PdfWebView
ºº $
.
ºº$ %%
EnsureCoreWebView2Async
ºº% <
(
ºº< =
)
ºº= >
;
ºº> ?
var
ææ 
settings
ææ 
=
ææ 

PdfWebView
ææ )
.
ææ) *
CoreWebView2
ææ* 6
.
ææ6 7
Settings
ææ7 ?
;
ææ? @
settings
øø 
.
øø 
IsScriptEnabled
øø (
=
øø) *
false
øø+ 0
;
øø0 1
settings
¿¿ 
.
¿¿  
AreDevToolsEnabled
¿¿ +
=
¿¿, -
false
¿¿. 3
;
¿¿3 4
settings
¡¡ 
.
¡¡ "
IsZoomControlEnabled
¡¡ -
=
¡¡. /
true
¡¡0 4
;
¡¡4 5
settings
¬¬ 
.
¬¬ +
AreDefaultContextMenusEnabled
¬¬ 6
=
¬¬7 8
false
¬¬9 >
;
¬¬> ?
settings
√√ 
.
√√ '
IsBuiltInErrorPageEnabled
√√ 2
=
√√3 4
false
√√5 :
;
√√: ;

PdfWebView
≈≈ 
.
≈≈  
NavigationStarting
≈≈ -
+=
≈≈. 0
(
≈≈1 2
s
≈≈2 3
,
≈≈3 4
e
≈≈5 6
)
≈≈6 7
=>
≈≈8 :
{
∆∆ 
if
«« 
(
«« 
!
«« 
e
«« 
.
«« 
Uri
«« 
.
«« 
Contains
«« '
(
««' (
$str
««( .
)
««. /
&&
««0 2
!
««3 4
e
««4 5
.
««5 6
Uri
««6 9
.
««9 :

StartsWith
««: D
(
««D E
$str
««E N
)
««N O
)
««O P
{
»» 
e
…… 
.
…… 
Cancel
……  
=
……! "
true
……# '
;
……' (
}
   
}
ÀÀ 
;
ÀÀ 

PdfWebView
ÕÕ 
.
ÕÕ !
NavigationCompleted
ÕÕ .
+=
ÕÕ/ 1
(
ÕÕ2 3
s
ÕÕ3 4
,
ÕÕ4 5
e
ÕÕ6 7
)
ÕÕ7 8
=>
ÕÕ9 ;
{
ŒŒ 
if
œœ 
(
œœ 
e
œœ 
.
œœ 
	IsSuccess
œœ #
)
œœ# $
{
–– 

PdfWebView
—— "
.
——" #

Visibility
——# -
=
——. /

Visibility
——0 :
.
——: ;
Visible
——; B
;
——B C
}
““ 
else
”” 
{
‘‘ )
MostrarMensajePersonalizado
’’ 3
(
’’3 4
$str
’’4 W
,
’’W X

DialogType
’’Y c
.
’’c d
Error
’’d i
)
’’i j
;
’’j k
}
÷÷ 
}
◊◊ 
;
◊◊ 
if
ŸŸ 
(
ŸŸ 
!
ŸŸ 
string
ŸŸ 
.
ŸŸ 
IsNullOrEmpty
ŸŸ )
(
ŸŸ) *
_rutaPdfTemporal
ŸŸ* :
)
ŸŸ: ;
&&
ŸŸ< >
File
ŸŸ? C
.
ŸŸC D
Exists
ŸŸD J
(
ŸŸJ K
_rutaPdfTemporal
ŸŸK [
)
ŸŸ[ \
)
ŸŸ\ ]
{
⁄⁄ 

PdfWebView
€€ 
.
€€ 
Source
€€ %
=
€€& '
new
€€( +
Uri
€€, /
(
€€/ 0
_rutaPdfTemporal
€€0 @
)
€€@ A
;
€€A B
}
‹‹ 
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
	Exception
ﬁﬁ 
ex
ﬁﬁ 
)
ﬁﬁ  
{
ﬂﬂ 
_logger
‡‡ 
.
‡‡ 
LogError
‡‡  
(
‡‡  !
ex
‡‡! #
)
‡‡# $
;
‡‡$ %)
MostrarMensajePersonalizado
·· +
(
··+ ,
$str
··, S
,
··S T

DialogType
··U _
.
··_ `
Error
··` e
)
··e f
;
··f g
}
‚‚ 
}
„„ 	
private
ÂÂ 
async
ÂÂ 
void
ÂÂ &
DescargarDocumento_Click
ÂÂ 3
(
ÂÂ3 4
object
ÂÂ4 :
sender
ÂÂ; A
,
ÂÂA B
RoutedEventArgs
ÂÂC R
e
ÂÂS T
)
ÂÂT U
{
ÊÊ 	
if
ÁÁ 
(
ÁÁ  
_publicacionActual
ÁÁ "
==
ÁÁ# %
null
ÁÁ& *
)
ÁÁ* +
return
ÁÁ, 2
;
ÁÁ2 3
try
ÈÈ 
{
ÍÍ 
var
ÎÎ 
saveFileDialog
ÎÎ "
=
ÎÎ# $
new
ÎÎ% (
	Microsoft
ÎÎ) 2
.
ÎÎ2 3
Win32
ÎÎ3 8
.
ÎÎ8 9
SaveFileDialog
ÎÎ9 G
{
ÏÏ 
FileName
ÌÌ 
=
ÌÌ 
$"
ÌÌ !
{
ÌÌ! " 
_publicacionActual
ÌÌ" 4
.
ÌÌ4 5
Titulo
ÌÌ5 ;
}
ÌÌ; <
$str
ÌÌ< @
"
ÌÌ@ A
,
ÌÌA B

DefaultExt
ÓÓ 
=
ÓÓ  
$str
ÓÓ! '
,
ÓÓ' (
Filter
ÔÔ 
=
ÔÔ 
$str
ÔÔ 6
}
 
;
 
if
ÚÚ 
(
ÚÚ 
saveFileDialog
ÚÚ "
.
ÚÚ" #

ShowDialog
ÚÚ# -
(
ÚÚ- .
)
ÚÚ. /
==
ÚÚ0 2
true
ÚÚ3 7
)
ÚÚ7 8
{
ÛÛ 
if
ÙÙ 
(
ÙÙ 
!
ÙÙ 
string
ÙÙ 
.
ÙÙ  
IsNullOrEmpty
ÙÙ  -
(
ÙÙ- .
_rutaPdfTemporal
ÙÙ. >
)
ÙÙ> ?
&&
ÙÙ@ B
File
ÙÙC G
.
ÙÙG H
Exists
ÙÙH N
(
ÙÙN O
_rutaPdfTemporal
ÙÙO _
)
ÙÙ_ `
)
ÙÙ` a
{
ıı 
File
ˆˆ 
.
ˆˆ 
Copy
ˆˆ !
(
ˆˆ! "
_rutaPdfTemporal
ˆˆ" 2
,
ˆˆ2 3
saveFileDialog
ˆˆ4 B
.
ˆˆB C
FileName
ˆˆC K
,
ˆˆK L
true
ˆˆM Q
)
ˆˆQ R
;
ˆˆR S)
MostrarMensajePersonalizado
˜˜ 3
(
˜˜3 4
$str
˜˜4 X
,
˜˜X Y

DialogType
˜˜Z d
.
˜˜d e
Success
˜˜e l
)
˜˜l m
;
˜˜m n
await
¯¯ $
RegistrarDescargaAsync
¯¯ 4
(
¯¯4 5
)
¯¯5 6
;
¯¯6 7
}
˘˘ 
else
˙˙ 
{
˚˚ )
MostrarMensajePersonalizado
¸¸ 3
(
¸¸3 4
$str
¸¸4 f
,
¸¸f g

DialogType
¸¸h r
.
¸¸r s
Error
¸¸s x
)
¸¸x y
;
¸¸y z
}
˝˝ 
}
˛˛ 
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ 
ex
ÄÄ 
)
ÄÄ  
{
ÅÅ 
_logger
ÇÇ 
.
ÇÇ 
LogError
ÇÇ  
(
ÇÇ  !
ex
ÇÇ! #
)
ÇÇ# $
;
ÇÇ$ %)
MostrarMensajePersonalizado
ÉÉ +
(
ÉÉ+ ,
$str
ÉÉ, N
,
ÉÉN O

DialogType
ÉÉP Z
.
ÉÉZ [
Error
ÉÉ[ `
)
ÉÉ` a
;
ÉÉa b
}
ÑÑ 
}
ÖÖ 	
private
áá 
async
áá 
Task
áá $
RegistrarDescargaAsync
áá 1
(
áá1 2
)
áá2 3
{
àà 	
string
ââ 
token
ââ 
=
ââ 
PerfilSingleton
ââ *
.
ââ* +
Instance
ââ+ 3
.
ââ3 4
TokenJwt
ââ4 <
;
ââ< =
int
ää 
id
ää 
=
ää  
_publicacionActual
ää '
.
ää' (
IdPublicacion
ää( 5
;
ää5 6
var
ãã 
	respuesta
ãã 
=
ãã 
await
ãã !!
PublicacionServicio
ãã" 5
.
ãã5 6$
RegistrarDescargaAsync
ãã6 L
(
ããL M
token
ããM R
,
ããR S
id
ããS U
)
ããU V
;
ããV W
switch
çç 
(
çç 
	respuesta
çç 
.
çç 
	Resultado
çç '
)
çç' (
{
éé 
case
èè 
(
èè 
int
èè 
)
èè 
HttpStatusCode
èè (
.
èè( )
OK
èè) +
:
èè+ , 
_publicacionActual
êê &
.
êê& '
	Descargas
êê' 0
++
êê0 2
;
êê2 3
txtb_Descargas
ëë "
.
ëë" #
Text
ëë# '
=
ëë( ) 
_publicacionActual
ëë* <
.
ëë< =
	Descargas
ëë= F
.
ëëF G
ToString
ëëG O
(
ëëO P
)
ëëP Q
;
ëëQ R
break
íí 
;
íí 
}
ññ 
}
óó 	
private
öö 
async
öö 
void
öö %
AgregarComentario_Click
öö 2
(
öö2 3
object
öö3 9
sender
öö: @
,
öö@ A
RoutedEventArgs
ööB Q
e
ööR S
)
ööS T
{
õõ 	
if
úú 
(
úú 
!
úú 
string
úú 
.
úú  
IsNullOrWhiteSpace
úú *
(
úú* +"
txtb_NuevoComentario
úú+ ?
.
úú? @
Text
úú@ D
)
úúD E
)
úúE F
{
ùù 
string
ûû 
token
ûû 
=
ûû 
PerfilSingleton
ûû .
.
ûû. /
Instance
ûû/ 7
.
ûû7 8
TokenJwt
ûû8 @
;
ûû@ A$
CrearComentarioRequest
†† &

comentario
††' 1
=
††2 3
new
††4 7
(
††7 8
)
††8 9
;
††9 :

comentario
°° 
.
°° 
IdPublicacion
°° (
=
°°) * 
_publicacionActual
°°+ =
.
°°= >
IdPublicacion
°°> K
;
°°K L

comentario
¢¢ 
.
¢¢ 
	Contenido
¢¢ $
=
¢¢% &"
txtb_NuevoComentario
¢¢' ;
.
¢¢; <
Text
¢¢< @
;
¢¢@ A
var
§§ 
	respuesta
§§ 
=
§§ 
await
§§  % 
ComentarioServicio
§§& 8
.
§§8 9"
CrearComentarioAsync
§§9 M
(
§§M N
token
§§N S
,
§§S T

comentario
§§U _
)
§§_ `
;
§§` a
switch
ßß 
(
ßß 
	respuesta
ßß !
.
ßß! "
	Resultado
ßß" +
)
ßß+ ,
{
®® 
case
©© 
(
©© 
int
©© 
)
©© 
HttpStatusCode
©© ,
.
©©, -
OK
©©- /
:
©©/ 0"
txtb_NuevoComentario
™™ ,
.
™™, -
Text
™™- 1
=
™™2 3
string
™™4 :
.
™™: ;
Empty
™™; @
;
™™@ A
CargarComentarios
´´ )
(
´´) *
)
´´* +
;
´´+ ,
break
≠≠ 
;
≠≠ 
default
ØØ 
:
ØØ "
txtb_NuevoComentario
∞∞ ,
.
∞∞, -
Text
∞∞- 1
=
∞∞2 3
string
∞∞4 :
.
∞∞: ;
Empty
∞∞; @
;
∞∞@ A
break
±± 
;
±± 
}
≤≤ 
}
µµ 
}
∂∂ 	
private
∏∏ 
void
∏∏ 
EnviarComentario
∏∏ %
(
∏∏% &
object
∏∏& ,
sender
∏∏- 3
,
∏∏3 4"
MouseButtonEventArgs
∏∏5 I
e
∏∏J K
)
∏∏K L
{
ππ 	%
AgregarComentario_Click
∫∫ #
(
∫∫# $
sender
∫∫$ *
,
∫∫* +
e
∫∫, -
)
∫∫- .
;
∫∫. /
}
ªª 	
private
ææ 
void
ææ !
TxtbNuevoComentario
ææ (
(
ææ( )
object
ææ) /
sender
ææ0 6
,
ææ6 7"
TextChangedEventArgs
ææ8 L
e
ææM N
)
ææN O
{
øø 	
if
¿¿ 
(
¿¿ 
!
¿¿ 
string
¿¿ 
.
¿¿  
IsNullOrWhiteSpace
¿¿ *
(
¿¿* +"
txtb_NuevoComentario
¿¿+ ?
.
¿¿? @
Text
¿¿@ D
)
¿¿D E
)
¿¿E F
{
¡¡ "
img_EnviarComentario
¬¬ $
.
¬¬$ %
Source
¬¬% +
=
¬¬, -
new
¬¬. 1
BitmapImage
¬¬2 =
(
¬¬= >
new
¬¬> A
Uri
¬¬B E
(
¬¬E F
$str
¬¬F r
,
¬¬r s
UriKind
¬¬t {
.
¬¬{ |
Relative¬¬| Ñ
)¬¬Ñ Ö
)¬¬Ö Ü
;¬¬Ü á"
img_EnviarComentario
√√ $
.
√√$ %
Cursor
√√% +
=
√√, -
Cursors
√√. 5
.
√√5 6
Hand
√√6 :
;
√√: ;
}
ƒƒ 
else
≈≈ 
{
∆∆ "
img_EnviarComentario
«« $
.
««$ %
Source
««% +
=
««, -
new
««. 1
BitmapImage
««2 =
(
««= >
new
««> A
Uri
««B E
(
««E F
$str
««F u
,
««u v
UriKind
««w ~
.
««~ 
Relative«« á
)««á à
)««à â
;««â ä"
img_EnviarComentario
»» $
.
»»$ %
Cursor
»»% +
=
»», -
Cursors
»». 5
.
»»5 6
No
»»6 8
;
»»8 9
}
…… 
}
   	
private
ÃÃ 
async
ÃÃ 
void
ÃÃ  
EliminarComentario
ÃÃ -
(
ÃÃ- .
object
ÃÃ. 4
sender
ÃÃ5 ;
,
ÃÃ; <
RoutedEventArgs
ÃÃ= L
e
ÃÃM N
)
ÃÃN O
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 
sender
ŒŒ 
is
ŒŒ 
Button
ŒŒ  
btn
ŒŒ! $
&&
ŒŒ% '
btn
ŒŒ( +
.
ŒŒ+ ,
Tag
ŒŒ, /
is
ŒŒ0 2
ComentarioVista
ŒŒ3 B
comentarioUI
ŒŒC O
)
ŒŒO P
{
œœ 
var
––  
comentarioOriginal
–– &
=
––' (
await
––) . 
ComentarioServicio
––/ A
.
––A B3
%ObtenerComentariosPorPublicacionAsync
––B g
(
––g h 
_publicacionActual
––h z
.
––z {
IdPublicacion––{ à
)––à â
;––â ä
var
““ !
comentarioAEliminar
““ '
=
““( ) 
comentarioOriginal
““* <
.
““< =
Datos
““= B
.
““B C
FirstOrDefault
““C Q
(
““Q R
c
““R S
=>
““T V
c
”” 
.
”” 
NombreUsuario
”” #
==
””$ &
comentarioUI
””' 3
.
””3 4
Usuario
””4 ;
&&
””< >
c
””? @
.
””@ A
	Contenido
””A J
==
””K M
comentarioUI
””N Z
.
””Z [
Texto
””[ `
)
””` a
;
””a b
if
’’ 
(
’’ !
comentarioAEliminar
’’ '
!=
’’( *
null
’’+ /
)
’’/ 0
{
÷÷ 
var
◊◊ 
token
◊◊ 
=
◊◊ 
PerfilSingleton
◊◊  /
.
◊◊/ 0
Instance
◊◊0 8
.
◊◊8 9
TokenJwt
◊◊9 A
;
◊◊A B
var
⁄⁄ 
	resultado
⁄⁄ %
=
⁄⁄& '
await
⁄⁄( - 
ComentarioServicio
⁄⁄. @
.
⁄⁄@ A%
EliminarComentarioAsync
⁄⁄A X
(
⁄⁄X Y
token
⁄⁄Y ^
,
⁄⁄^ _!
comentarioAEliminar
⁄⁄` s
.
⁄⁄s t
IdComentario⁄⁄t Ä
)⁄⁄Ä Å
;⁄⁄Å Ç
if
€€ 
(
€€ 
	resultado
€€ %
.
€€% &
	Resultado
€€& /
==
€€0 2
$num
€€3 6
)
€€6 7
{
‹‹ 
CargarComentarios
›› )
(
››) *
)
››* +
;
››+ ,
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ )
MostrarMensajePersonalizado
·· 7
(
··7 8
$str
··8 U
,
··U V

DialogType
··W a
.
··a b
Error
··b g
)
··g h
;
··h i
}
‚‚ 
}
‰‰ 
}
ÂÂ 
}
ÊÊ 	
private
ÈÈ 
void
ÈÈ $
Perfil_PropertyChanged
ÈÈ +
(
ÈÈ+ ,
)
ÈÈ, -
{
ÍÍ 	
var
ÎÎ 
foto
ÎÎ 
=
ÎÎ 
PerfilSingleton
ÎÎ .
.
ÎÎ. /
Instance
ÎÎ/ 7
.
ÎÎ7 8
FotoPerfilBinaria
ÎÎ8 I
;
ÎÎI J
var
ÏÏ 
bitmap
ÏÏ 
=
ÏÏ  "
ConvertirFotoABitmap
ÏÏ! 5
(
ÏÏ5 6
foto
ÏÏ6 :
)
ÏÏ: ;
;
ÏÏ; <
img_FotoPerfil
ÌÌ &
.
ÌÌ& '
ImageSource
ÌÌ' 2
=
ÌÌ3 4
bitmap
ÌÌ5 ;
;
ÌÌ; <
}
ÓÓ 	
public
 
ImageSource
 "
ConvertirFotoABitmap
 /
(
/ 0
byte
0 4
[
4 5
]
5 6
binario
7 >
)
> ?
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
binario
ÚÚ 
==
ÚÚ 
null
ÚÚ 
||
ÚÚ  "
binario
ÚÚ# *
.
ÚÚ* +
Length
ÚÚ+ 1
==
ÚÚ2 4
$num
ÚÚ5 6
)
ÚÚ6 7
return
ÚÚ8 >
null
ÚÚ? C
;
ÚÚC D
using
ÙÙ 
var
ÙÙ 
ms
ÙÙ 
=
ÙÙ 
new
ÙÙ 
MemoryStream
ÙÙ +
(
ÙÙ+ ,
binario
ÙÙ, 3
)
ÙÙ3 4
;
ÙÙ4 5
var
ıı 
bitmap
ıı 
=
ıı 
new
ıı 
BitmapImage
ıı (
(
ıı( )
)
ıı) *
;
ıı* +
bitmap
ˆˆ 
.
ˆˆ 
	BeginInit
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ 
bitmap
˜˜ 
.
˜˜ 
CacheOption
˜˜ 
=
˜˜  
BitmapCacheOption
˜˜! 2
.
˜˜2 3
OnLoad
˜˜3 9
;
˜˜9 :
bitmap
¯¯ 
.
¯¯ 
StreamSource
¯¯ 
=
¯¯  !
ms
¯¯" $
;
¯¯$ %
bitmap
˘˘ 
.
˘˘ 
EndInit
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
return
˙˙ 
bitmap
˙˙ 
;
˙˙ 
}
˚˚ 	
}
˛˛ 
}ˇˇ èÚ
üC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\SubirDocumento.xaml.cs
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

DialogType	==w Å
.
==Å Ç
Error
==Ç á
)
==á à
;
==à â
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
)	bb Ä
;
bbÄ Å
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
ÄÄ #
CrearPublicacionAsync
ÄÄ '
(
ÄÄ' (
idDocumento
ÄÄ( 3
.
ÄÄ3 4
Value
ÄÄ4 9
)
ÄÄ9 :
;
ÄÄ: ;
}
ÅÅ 	
private
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
int
ÉÉ 
?
ÉÉ 
>
ÉÉ  !
CrearDocumentoAsync
ÉÉ! 4
(
ÉÉ4 5
string
ÉÉ5 ;
filePath
ÉÉ< D
)
ÉÉD E
{
ÑÑ 	
string
ÖÖ 
token
ÖÖ 
=
ÖÖ 
PerfilSingleton
ÖÖ *
.
ÖÖ* +
Instance
ÖÖ+ 3
.
ÖÖ3 4
TokenJwt
ÖÖ4 <
;
ÖÖ< =
var
áá 
	respuesta
áá 
=
áá 
await
áá !!
PublicacionServicio
áá" 5
.
áá5 6!
CrearDocumentoAsync
áá6 I
(
ááI J
token
ááJ O
,
ááO P
txtb_Titulo
ááQ \
.
áá\ ]
Text
áá] a
.
ááa b
Trim
ááb f
(
ááf g
)
áág h
,
ááh i
_rutaDocumento
ááj x
)
ááx y
;
ááy z
if
ää 
(
ää 
	respuesta
ää 
.
ää 
	Resultado
ää #
==
ää$ &
(
ää' (
int
ää( +
)
ää+ ,
HttpStatusCode
ää, :
.
ää: ;
Unauthorized
ää; G
)
ääG H
{
ãã )
MostrarMensajePersonalizado
åå /
(
åå/ 0
$str
åå0 m
,
ååm n

DialogType
ååo y
.
ååy z
Error
ååz 
)åå Ä
;ååÄ Å
NavigationService
çç %
.
çç% &
Navigate
çç& .
(
çç. /
new
çç/ 2
Login
çç3 8
(
çç8 9
)
çç9 :
)
çç: ;
;
çç; <
PerfilSingleton
éé #
.
éé# $
Instance
éé$ ,
.
éé, -
Reset
éé- 2
(
éé2 3
)
éé3 4
;
éé4 5
return
èè 
null
èè 
;
èè  
}
êê 
if
ëë 
(
ëë 
	respuesta
ëë 
.
ëë 
	Resultado
ëë #
!=
ëë$ &
(
ëë' (
int
ëë( +
)
ëë+ ,
HttpStatusCode
ëë, :
.
ëë: ;
Created
ëë; B
)
ëëB C
{
íí )
MostrarMensajePersonalizado
ìì +
(
ìì+ ,
$str
ìì, [
,
ìì[ \

DialogType
ìì] g
.
ììg h
Error
ììh m
)
ììm n
;
ììn o
return
îî 
null
îî 
;
îî 
}
ïï 
return
óó 
	respuesta
óó 
.
óó 
IdDocumento
óó (
;
óó( )
}
òò 	
private
öö 
async
öö 
Task
öö #
CrearPublicacionAsync
öö 0
(
öö0 1
int
öö1 4
idDocumento
öö5 @
)
öö@ A
{
õõ 	
var
úú 
publicacion
úú 
=
úú 
new
úú !
Publicacion
úú" -
{
ùù 
ResuContenido
ûû 
=
ûû 
txtb_Contenido
ûû  .
.
ûû. /
Text
ûû/ 3
.
ûû3 4
Trim
ûû4 8
(
ûû8 9
)
ûû9 :
,
ûû: ;
IdDocumento
üü 
=
üü 
idDocumento
üü )
,
üü) *
IdMateriaYRama
†† 
=
††  
(
††! "
int
††" %
)
††% &
cmb_Materia
††& 1
.
††1 2
SelectedValue
††2 ?
,
††? @
IdCategoria
°° 
=
°° 
(
°° 
int
°° "
)
°°" #
cmb_Categoria
°°# 0
.
°°0 1
SelectedValue
°°1 >
,
°°> ?
NivelEducativo
¢¢ 
=
¢¢   
cmb_NivelEducativo
¢¢! 3
.
¢¢3 4
Text
¢¢4 8
}
££ 
;
££ 
string
•• 
token
•• 
=
•• 
PerfilSingleton
•• *
.
••* +
Instance
••+ 3
.
••3 4
TokenJwt
••4 <
;
••< =
var
¶¶ 
	respuesta
¶¶ 
=
¶¶ 
await
¶¶ !!
PublicacionServicio
¶¶" 5
.
¶¶5 6#
CrearPublicacionAsync
¶¶6 K
(
¶¶K L
token
¶¶L Q
,
¶¶Q R
publicacion
¶¶S ^
)
¶¶^ _
;
¶¶_ `
switch
®® 
(
®® 
	respuesta
®® 
.
®® 
	Resultado
®® '
)
®®' (
{
©© 
case
™™ 
(
™™ 
int
™™ 
)
™™ 
HttpStatusCode
™™ (
.
™™( )
Created
™™) 0
:
™™0 1)
MostrarMensajePersonalizado
´´ /
(
´´/ 0
$str
´´0 L
,
´´L M

DialogType
´´N X
.
´´X Y
Success
´´Y `
)
´´` a
;
´´a b
_frame
¨¨ 
.
¨¨ 
Navigate
¨¨ #
(
¨¨# $
new
¨¨$ '
MisDocumentos
¨¨( 5
(
¨¨5 6
_frame
¨¨6 <
)
¨¨< =
)
¨¨= >
;
¨¨> ?
break
≠≠ 
;
≠≠ 
case
ÆÆ 
(
ÆÆ 
int
ÆÆ 
)
ÆÆ 
HttpStatusCode
ÆÆ (
.
ÆÆ( )
Unauthorized
ÆÆ) 5
:
ÆÆ5 6)
MostrarMensajePersonalizado
ØØ /
(
ØØ/ 0
$str
ØØ0 m
,
ØØm n

DialogType
ØØo y
.
ØØy z
Error
ØØz 
)ØØ Ä
;ØØÄ Å
NavigationService
∞∞ %
.
∞∞% &
Navigate
∞∞& .
(
∞∞. /
new
∞∞/ 2
Login
∞∞3 8
(
∞∞8 9
)
∞∞9 :
)
∞∞: ;
;
∞∞; <
PerfilSingleton
±± #
.
±±# $
Instance
±±$ ,
.
±±, -
Reset
±±- 2
(
±±2 3
)
±±3 4
;
±±4 5
break
≤≤ 
;
≤≤ 
case
≥≥ 
$num
≥≥ 
:
≥≥ )
MostrarMensajePersonalizado
¥¥ /
(
¥¥/ 0
$str
¥¥0 Z
,
¥¥Z [

DialogType
¥¥\ f
.
¥¥f g
Error
¥¥g l
)
¥¥l m
;
¥¥m n
break
µµ 
;
µµ 
default
∑∑ 
:
∑∑ )
MostrarMensajePersonalizado
∏∏ /
(
∏∏/ 0
$str
∏∏0 Q
,
∏∏Q R

DialogType
∏∏S ]
.
∏∏] ^
Error
∏∏^ c
)
∏∏c d
;
∏∏d e
break
ππ 
;
ππ 
}
∫∫ 
}
ªª 	
private
øø 
async
øø 
Task
øø "
SubirArchivoPDFAsync
øø /
(
øø/ 0
string
øø0 6
rutaPDF
øø7 >
)
øø> ?
{
¿¿ 	
try
¡¡ 
{
¬¬ 
byte
√√ 
[
√√ 
]
√√ 
pdfBytes
√√ 
=
√√  !
File
√√" &
.
√√& '
ReadAllBytes
√√' 3
(
√√3 4
rutaPDF
√√4 ;
)
√√; <
;
√√< =
if
≈≈ 
(
≈≈ 
!
≈≈ 
EsPDFValido
≈≈  
(
≈≈  !
pdfBytes
≈≈! )
)
≈≈) *
)
≈≈* +
{
∆∆ )
MostrarMensajePersonalizado
«« /
(
««/ 0
$str
««0 W
,
««W X

DialogType
««Y c
.
««c d
Error
««d i
)
««i j
;
««j k
return
»» 
;
»» 
}
…… 
string
ÀÀ 
usuario
ÀÀ 
=
ÀÀ  
PerfilSingleton
ÀÀ! 0
.
ÀÀ0 1
Instance
ÀÀ1 9
.
ÀÀ9 :
NombreUsuario
ÀÀ: G
;
ÀÀG H
string
ÃÃ 
nombreArchivo
ÃÃ $
=
ÃÃ% &
System
ÃÃ' -
.
ÃÃ- .
IO
ÃÃ. 0
.
ÃÃ0 1
Path
ÃÃ1 5
.
ÃÃ5 6
GetFileName
ÃÃ6 A
(
ÃÃA B
rutaPDF
ÃÃB I
)
ÃÃI J
;
ÃÃJ K
var
ŒŒ 
grpc
ŒŒ 
=
ŒŒ 
new
ŒŒ &
FileServiceClientHandler
ŒŒ 7
(
ŒŒ7 8
)
ŒŒ8 9
;
ŒŒ9 :
var
œœ 
	resultado
œœ 
=
œœ 
await
œœ  %
grpc
œœ& *
.
œœ* +
UploadPdfAsync
œœ+ 9
(
œœ9 :
usuario
œœ: A
,
œœA B
nombreArchivo
œœC P
,
œœP Q
pdfBytes
œœR Z
)
œœZ [
;
œœ[ \
if
—— 
(
—— 
string
—— 
.
——  
IsNullOrWhiteSpace
—— -
(
——- .
	resultado
——. 7
.
——7 8
filePath
——8 @
)
——@ A
||
——B D
string
——E K
.
——K L 
IsNullOrWhiteSpace
——L ^
(
——^ _
	resultado
——_ h
.
——h i
	coverPath
——i r
)
——r s
)
——s t
{
““ )
MostrarMensajePersonalizado
”” /
(
””/ 0
$str
””0 L
,
””L M

DialogType
””N X
.
””X Y
Error
””Y ^
)
””^ _
;
””_ `
return
‘‘ 
;
‘‘ 
}
’’ 
_rutaDocumento
÷÷ 
=
÷÷  
	resultado
÷÷! *
.
÷÷* +
filePath
÷÷+ 3
;
÷÷3 4%
MostrarPreviewDesdeRuta
◊◊ '
(
◊◊' (
	resultado
◊◊( 1
.
◊◊1 2
	coverPath
◊◊2 ;
)
◊◊; <
;
◊◊< =
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
Grpc
⁄⁄ 
.
⁄⁄ 
Core
⁄⁄ 
.
⁄⁄ 
RpcException
⁄⁄ )
ex
⁄⁄* ,
)
⁄⁄, -
{
€€ 
_logger
‹‹ 
.
‹‹ 
LogFatal
‹‹  
(
‹‹  !
ex
‹‹! #
)
‹‹# $
;
‹‹$ %)
MostrarMensajePersonalizado
›› +
(
››+ ,
$str
››, l
,
››l m

DialogType
››n x
.
››x y
Error
››y ~
)
››~ 
;›› Ä
LimpiarPreview
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ  
;
ﬁﬁ  !
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 
	Exception
‡‡ 
ex
‡‡ 
)
‡‡  
{
·· 
_logger
‚‚ 
.
‚‚ 
LogFatal
‚‚  
(
‚‚  !
ex
‚‚! #
)
‚‚# $
;
‚‚$ %)
MostrarMensajePersonalizado
„„ +
(
„„+ ,
$str
„„, S
,
„„S T

DialogType
„„U _
.
„„_ `
Error
„„` e
)
„„e f
;
„„f g
LimpiarPreview
‰‰ 
(
‰‰ 
)
‰‰  
;
‰‰  !
}
ÂÂ 
}
ÊÊ 	
private
ËË 
bool
ËË 
EsPDFValido
ËË  
(
ËË  !
byte
ËË! %
[
ËË% &
]
ËË& '
bytes
ËË( -
)
ËË- .
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
bytes
ÍÍ 
==
ÍÍ 
null
ÍÍ 
||
ÍÍ  
bytes
ÍÍ! &
.
ÍÍ& '
Length
ÍÍ' -
<
ÍÍ. /
$num
ÍÍ0 1
)
ÍÍ1 2
return
ÎÎ 
false
ÎÎ 
;
ÎÎ 
return
ÌÌ 
bytes
ÌÌ 
[
ÌÌ 
$num
ÌÌ 
]
ÌÌ 
==
ÌÌ 
$num
ÌÌ #
&&
ÌÌ$ &
bytes
ÌÌ' ,
[
ÌÌ, -
$num
ÌÌ- .
]
ÌÌ. /
==
ÌÌ0 2
$num
ÌÌ3 7
&&
ÌÌ8 :
bytes
ÌÌ; @
[
ÌÌ@ A
$num
ÌÌA B
]
ÌÌB C
==
ÌÌD F
$num
ÌÌG K
&&
ÌÌL N
bytes
ÌÌO T
[
ÌÌT U
$num
ÌÌU V
]
ÌÌV W
==
ÌÌX Z
$num
ÌÌ[ _
;
ÌÌ_ `
}
ÓÓ 	
public
ÒÒ 
void
ÒÒ #
RegresarBordeOriginal
ÒÒ )
(
ÒÒ) *
)
ÒÒ* +
{
ÚÚ 	
SolidColorBrush
ÛÛ 
verde
ÛÛ !
=
ÛÛ" #
new
ÛÛ$ '
(
ÛÛ' (
(
ÛÛ( )
Color
ÛÛ) .
)
ÛÛ. /
ColorConverter
ÛÛ/ =
.
ÛÛ= >
ConvertFromString
ÛÛ> O
(
ÛÛO P
$str
ÛÛP Y
)
ÛÛY Z
)
ÛÛZ [
;
ÛÛ[ \

brd_Titulo
ÙÙ 
.
ÙÙ 
BorderBrush
ÙÙ "
=
ÙÙ# $
verde
ÙÙ% *
;
ÙÙ* +
brd_Contenido
ıı 
.
ıı 
BorderBrush
ıı %
=
ıı& '
verde
ıı( -
;
ıı- .
brd_Categoria
ˆˆ 
.
ˆˆ 
BorderBrush
ˆˆ %
=
ˆˆ& '
verde
ˆˆ( -
;
ˆˆ- . 
brd_NivelEducativo
˜˜ 
.
˜˜ 
BorderBrush
˜˜ *
=
˜˜+ ,
verde
˜˜- 2
;
˜˜2 3
brd_Rama
¯¯ 
.
¯¯ 
BorderBrush
¯¯  
=
¯¯! "
verde
¯¯# (
;
¯¯( )
brd_Materia
˘˘ 
.
˘˘ 
BorderBrush
˘˘ #
=
˘˘$ %
verde
˘˘& +
;
˘˘+ ,
brd_DropArea
˙˙ 
.
˙˙ 
BorderBrush
˙˙ $
=
˙˙% &
verde
˙˙' ,
;
˙˙, -
}
˚˚ 	
public
˝˝ 
bool
˝˝ !
ValidarCamposVacios
˝˝ '
(
˝˝' (
)
˝˝( )
{
˛˛ 	
bool
ˇˇ 
titulo
ˇˇ 
=
ˇˇ 
!
ˇˇ 
string
ˇˇ !
.
ˇˇ! " 
IsNullOrWhiteSpace
ˇˇ" 4
(
ˇˇ4 5
txtb_Titulo
ˇˇ5 @
.
ˇˇ@ A
Text
ˇˇA E
)
ˇˇE F
&&
ˇˇG I
txtb_Titulo
ˇˇJ U
.
ˇˇU V
Text
ˇˇV Z
!=
ˇˇ[ ]
$str
ˇˇ^ q
;
ˇˇq r
bool
ÅÅ 
	contenido
ÅÅ 
=
ÅÅ 
!
ÅÅ 
string
ÅÅ $
.
ÅÅ$ % 
IsNullOrWhiteSpace
ÅÅ% 7
(
ÅÅ7 8
txtb_Contenido
ÅÅ8 F
.
ÅÅF G
Text
ÅÅG K
)
ÅÅK L
&&
ÅÅM O
txtb_Contenido
ÅÅP ^
.
ÅÅ^ _
Text
ÅÅ_ c
!=
ÅÅd f
$strÅÅg è
;ÅÅè ê
bool
ÉÉ 
cmbNivelEducativo
ÉÉ "
=
ÉÉ# $ 
cmb_NivelEducativo
ÉÉ% 7
.
ÉÉ7 8
SelectedItem
ÉÉ8 D
!=
ÉÉE G
null
ÉÉH L
;
ÉÉL M
bool
ÑÑ 
cmbCategoria
ÑÑ 
=
ÑÑ 
cmb_Categoria
ÑÑ  -
.
ÑÑ- .
SelectedItem
ÑÑ. :
!=
ÑÑ; =
null
ÑÑ> B
;
ÑÑB C
bool
ÖÖ 

cmbMateria
ÖÖ 
=
ÖÖ 
cmb_Materia
ÖÖ )
.
ÖÖ) *
SelectedItem
ÖÖ* 6
!=
ÖÖ7 9
null
ÖÖ: >
;
ÖÖ> ?
bool
ÜÜ 
cmbRama
ÜÜ 
=
ÜÜ 
cmb_Rama
ÜÜ #
.
ÜÜ# $
SelectedItem
ÜÜ$ 0
!=
ÜÜ1 3
null
ÜÜ4 8
;
ÜÜ8 9
if
àà 
(
àà 
!
àà 
titulo
àà 
)
àà 

brd_Titulo
àà #
.
àà# $
BorderBrush
àà$ /
=
àà0 1
Brushes
àà2 9
.
àà9 :
Red
àà: =
;
àà= >
if
ââ 
(
ââ 
!
ââ 
	contenido
ââ 
)
ââ 
brd_Contenido
ââ )
.
ââ) *
BorderBrush
ââ* 5
=
ââ6 7
Brushes
ââ8 ?
.
ââ? @
Red
ââ@ C
;
ââC D
if
ãã 
(
ãã 
!
ãã 
cmbNivelEducativo
ãã "
)
ãã" # 
brd_NivelEducativo
ãã$ 6
.
ãã6 7
BorderBrush
ãã7 B
=
ããC D
Brushes
ããE L
.
ããL M
Red
ããM P
;
ããP Q
if
åå 
(
åå 
!
åå 
cmbCategoria
åå 
)
åå 
brd_Categoria
åå ,
.
åå, -
BorderBrush
åå- 8
=
åå9 :
Brushes
åå; B
.
ååB C
Red
ååC F
;
ååF G
if
çç 
(
çç 
!
çç 

cmbMateria
çç 
)
çç 
brd_Materia
çç (
.
çç( )
BorderBrush
çç) 4
=
çç5 6
Brushes
çç7 >
.
çç> ?
Red
çç? B
;
ççB C
if
éé 
(
éé 
!
éé 
cmbRama
éé 
)
éé 
brd_Rama
éé "
.
éé" #
BorderBrush
éé# .
=
éé/ 0
Brushes
éé1 8
.
éé8 9
Red
éé9 <
;
éé< =
if
èè 
(
èè 
!
èè 
_pdfCargado
èè 
)
èè 
brd_DropArea
èè *
.
èè* +
BorderBrush
èè+ 6
=
èè7 8
Brushes
èè9 @
.
èè@ A
Red
èèA D
;
èèD E
return
ëë 
titulo
ëë 
&&
ëë 
	contenido
ëë &
&&
ëë' )
cmbNivelEducativo
ëë* ;
&&
ëë< >
cmbCategoria
ëë? K
&&
íí 

cmbMateria
íí 
&&
íí 
cmbRama
íí $
&&
íí% '
_pdfCargado
íí( 3
;
íí3 4
}
ìì 	
private
ïï 
void
ïï 
ResumenGotFocus
ïï $
(
ïï$ %
object
ïï% +
sender
ïï, 2
,
ïï2 3
RoutedEventArgs
ïï4 C
e
ïïD E
)
ïïE F
{
ññ 	
if
óó 
(
óó 
txtb_Contenido
óó 
.
óó 
Text
óó #
==
óó$ &
$stróó' œ
)óóœ –
{
òò 
txtb_Contenido
ôô 
.
ôô 
Text
ôô #
=
ôô$ %
$str
ôô& (
;
ôô( )
txtb_Contenido
öö 
.
öö 

Foreground
öö )
=
öö* +
Brushes
öö, 3
.
öö3 4
Black
öö4 9
;
öö9 :
}
õõ 
}
úú 	
private
ûû 
void
ûû 
ResumenLostFocus
ûû %
(
ûû% &
object
ûû& ,
sender
ûû- 3
,
ûû3 4
RoutedEventArgs
ûû5 D
e
ûûE F
)
ûûF G
{
üü 	
if
†† 
(
†† 
string
†† 
.
††  
IsNullOrWhiteSpace
†† )
(
††) *
txtb_Contenido
††* 8
.
††8 9
Text
††9 =
)
††= >
)
††> ?
{
°° 
txtb_Contenido
¢¢ 
.
¢¢ 
Text
¢¢ #
=
¢¢$ %
$str¢¢& Œ
;¢¢Œ œ
txtb_Contenido
££ 
.
££ 

Foreground
££ )
=
££* +
Brushes
££, 3
.
££3 4
Gray
££4 8
;
££8 9
}
§§ 
}
•• 	
private
ßß 
void
ßß 
TituloGotFocus
ßß #
(
ßß# $
object
ßß$ *
sender
ßß+ 1
,
ßß1 2
RoutedEventArgs
ßß3 B
e
ßßC D
)
ßßD E
{
®® 	
if
©© 
(
©© 
txtb_Titulo
©© 
.
©© 
Text
©©  
==
©©! #
$str
©©$ 7
)
©©7 8
{
™™ 
txtb_Titulo
´´ 
.
´´ 
Text
´´  
=
´´! "
$str
´´# %
;
´´% &
txtb_Titulo
¨¨ 
.
¨¨ 

Foreground
¨¨ &
=
¨¨' (
Brushes
¨¨) 0
.
¨¨0 1
Black
¨¨1 6
;
¨¨6 7
}
≠≠ 
}
ÆÆ 	
private
∞∞ 
void
∞∞ 
TituloLostFocus
∞∞ $
(
∞∞$ %
object
∞∞% +
sender
∞∞, 2
,
∞∞2 3
RoutedEventArgs
∞∞4 C
e
∞∞D E
)
∞∞E F
{
±± 	
if
≤≤ 
(
≤≤ 
string
≤≤ 
.
≤≤  
IsNullOrWhiteSpace
≤≤ )
(
≤≤) *
txtb_Contenido
≤≤* 8
.
≤≤8 9
Text
≤≤9 =
)
≤≤= >
)
≤≤> ?
{
≥≥ 
txtb_Titulo
¥¥ 
.
¥¥ 
Text
¥¥  
=
¥¥! "
$str
¥¥# 6
;
¥¥6 7
txtb_Titulo
µµ 
.
µµ 

Foreground
µµ &
=
µµ' (
Brushes
µµ) 0
.
µµ0 1
Gray
µµ1 5
;
µµ5 6
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ 
AbrirExplorador
ππ $
(
ππ$ %
object
ππ% +
sender
ππ, 2
,
ππ2 3"
MouseButtonEventArgs
ππ4 H
e
ππI J
)
ππJ K
{
∫∫ 	
if
ªª 
(
ªª 
!
ªª 
_pdfCargado
ªª 
)
ªª 
{
ºº 
AbrirExplorador
ΩΩ 
(
ΩΩ  
)
ΩΩ  !
;
ΩΩ! "
}
ææ 
}
øø 	
private
¡¡ 
void
¡¡ 
DropAreaDragEnter
¡¡ &
(
¡¡& '
object
¡¡' -
sender
¡¡. 4
,
¡¡4 5
DragEventArgs
¡¡6 C
e
¡¡D E
)
¡¡E F
{
¬¬ 	
if
√√ 
(
√√ 
_pdfCargado
√√ 
)
√√ 
{
ƒƒ 
e
≈≈ 
.
≈≈ 
Effects
≈≈ 
=
≈≈ 
DragDropEffects
≈≈ +
.
≈≈+ ,
None
≈≈, 0
;
≈≈0 1
e
∆∆ 
.
∆∆ 
Handled
∆∆ 
=
∆∆ 
true
∆∆  
;
∆∆  !
return
«« 
;
«« 
}
»» 
if
   
(
   
e
   
.
   
Data
   
.
   
GetDataPresent
   %
(
  % &
DataFormats
  & 1
.
  1 2
FileDrop
  2 :
)
  : ;
)
  ; <
brd_DropArea
ÀÀ 
.
ÀÀ 

Background
ÀÀ '
=
ÀÀ( )
new
ÀÀ* -
SolidColorBrush
ÀÀ. =
(
ÀÀ= >
Color
ÀÀ> C
.
ÀÀC D
FromRgb
ÀÀD K
(
ÀÀK L
$num
ÀÀL O
,
ÀÀO P
$num
ÀÀQ T
,
ÀÀT U
$num
ÀÀV Y
)
ÀÀY Z
)
ÀÀZ [
;
ÀÀ[ \
}
ÃÃ 	
private
œœ 
void
œœ 
DropAreaDragLeave
œœ &
(
œœ& '
object
œœ' -
sender
œœ. 4
,
œœ4 5
DragEventArgs
œœ6 C
e
œœD E
)
œœE F
{
–– 	
brd_DropArea
—— 
.
—— 

Background
—— #
=
——$ %
new
——& )
SolidColorBrush
——* 9
(
——9 :
Color
——: ?
.
——? @
FromRgb
——@ G
(
——G H
$num
——H K
,
——K L
$num
——M P
,
——P Q
$num
——R U
)
——U V
)
——V W
;
——W X
}
““ 	
private
‘‘ 
void
‘‘ 
DropAreaDrop
‘‘ !
(
‘‘! "
object
‘‘" (
sender
‘‘) /
,
‘‘/ 0
DragEventArgs
‘‘1 >
e
‘‘? @
)
‘‘@ A
{
’’ 	
if
÷÷ 
(
÷÷ 
_pdfCargado
÷÷ 
)
÷÷ 
return
◊◊ 
;
◊◊ 
brd_DropArea
ŸŸ 
.
ŸŸ 

Background
ŸŸ #
=
ŸŸ$ %
new
ŸŸ& )
SolidColorBrush
ŸŸ* 9
(
ŸŸ9 :
Color
ŸŸ: ?
.
ŸŸ? @
FromRgb
ŸŸ@ G
(
ŸŸG H
$num
ŸŸH K
,
ŸŸK L
$num
ŸŸM P
,
ŸŸP Q
$num
ŸŸR U
)
ŸŸU V
)
ŸŸV W
;
ŸŸW X
if
⁄⁄ 
(
⁄⁄ 
e
⁄⁄ 
.
⁄⁄ 
Data
⁄⁄ 
.
⁄⁄ 
GetDataPresent
⁄⁄ %
(
⁄⁄% &
DataFormats
⁄⁄& 1
.
⁄⁄1 2
FileDrop
⁄⁄2 :
)
⁄⁄: ;
)
⁄⁄; <
{
€€ 
string
‹‹ 
[
‹‹ 
]
‹‹ 
files
‹‹ 
=
‹‹  
(
‹‹! "
string
‹‹" (
[
‹‹( )
]
‹‹) *
)
‹‹* +
e
‹‹+ ,
.
‹‹, -
Data
‹‹- 1
.
‹‹1 2
GetData
‹‹2 9
(
‹‹9 :
DataFormats
‹‹: E
.
‹‹E F
FileDrop
‹‹F N
)
‹‹N O
;
‹‹O P
if
›› 
(
›› 
files
›› 
.
›› 
Length
››  
>
››! "
$num
››# $
&&
››% '
System
››( .
.
››. /
IO
››/ 1
.
››1 2
Path
››2 6
.
››6 7
GetExtension
››7 C
(
››C D
files
››D I
[
››I J
$num
››J K
]
››K L
)
››L M
.
››M N
ToLower
››N U
(
››U V
)
››V W
==
››X Z
$str
››[ a
)
››a b
{
ﬁﬁ 
ProcesarPDF
ﬂﬂ 
(
ﬂﬂ  
files
ﬂﬂ  %
[
ﬂﬂ% &
$num
ﬂﬂ& '
]
ﬂﬂ' (
)
ﬂﬂ( )
;
ﬂﬂ) *
}
‡‡ 
}
·· 
}
‚‚ 	
private
ÂÂ 
void
ÂÂ 
AbrirExplorador
ÂÂ $
(
ÂÂ$ %
)
ÂÂ% &
{
ÊÊ 	
OpenFileDialog
ÁÁ 
dlg
ÁÁ 
=
ÁÁ  
new
ÁÁ! $
OpenFileDialog
ÁÁ% 3
{
ËË 
Filter
ÈÈ 
=
ÈÈ 
$str
ÈÈ 5
}
ÍÍ 
;
ÍÍ 
if
ÏÏ 
(
ÏÏ 
dlg
ÏÏ 
.
ÏÏ 

ShowDialog
ÏÏ 
(
ÏÏ 
)
ÏÏ  
==
ÏÏ! #
true
ÏÏ$ (
)
ÏÏ( )
{
ÌÌ 
ProcesarPDF
ÓÓ 
(
ÓÓ 
dlg
ÓÓ 
.
ÓÓ  
FileName
ÓÓ  (
)
ÓÓ( )
;
ÓÓ) *
}
ÔÔ 
}
 	
private
ÚÚ 
async
ÚÚ 
void
ÚÚ 
ProcesarPDF
ÚÚ &
(
ÚÚ& '
string
ÚÚ' -
ruta
ÚÚ. 2
)
ÚÚ2 3
{
ÛÛ 	
FileInfo
ÙÙ 
fileInfo
ÙÙ 
=
ÙÙ 
new
ÙÙ  #
FileInfo
ÙÙ$ ,
(
ÙÙ, -
ruta
ÙÙ- 1
)
ÙÙ1 2
;
ÙÙ2 3
long
ıı 
sizeInBytes
ıı 
=
ıı 
fileInfo
ıı '
.
ıı' (
Length
ıı( .
;
ıı. /
long
ˆˆ 
maxSizeInBytes
ˆˆ 
=
ˆˆ  !
$num
ˆˆ" $
*
ˆˆ% &
$num
ˆˆ' +
*
ˆˆ, -
$num
ˆˆ. 2
;
ˆˆ2 3
if
¯¯ 
(
¯¯ 
sizeInBytes
¯¯ 
>
¯¯ 
maxSizeInBytes
¯¯ ,
)
¯¯, -
{
˘˘ )
MostrarMensajePersonalizado
˙˙ +
(
˙˙+ ,
$str
˙˙, h
,
˙˙h i

DialogType
˙˙j t
.
˙˙t u
Warning
˙˙u |
)
˙˙| }
;
˙˙} ~
return
˚˚ 
;
˚˚ 
}
¸¸ 
_rutaPDF
˛˛ 
=
˛˛ 
ruta
˛˛ 
;
˛˛ 
string
ÄÄ 
nombreArchivo
ÄÄ  
=
ÄÄ! "
System
ÄÄ# )
.
ÄÄ) *
IO
ÄÄ* ,
.
ÄÄ, -
Path
ÄÄ- 1
.
ÄÄ1 2)
GetFileNameWithoutExtension
ÄÄ2 M
(
ÄÄM N
ruta
ÄÄN R
)
ÄÄR S
;
ÄÄS T
nombreArchivo
ÅÅ 
=
ÅÅ $
SanitizarNombreArchivo
ÅÅ 2
(
ÅÅ2 3
nombreArchivo
ÅÅ3 @
)
ÅÅ@ A
;
ÅÅA B
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ  
IsNullOrWhiteSpace
ÑÑ )
(
ÑÑ) *
txtb_Titulo
ÑÑ* 5
.
ÑÑ5 6
Text
ÑÑ6 :
)
ÑÑ: ;
||
ÑÑ< >
txtb_Titulo
ÑÑ? J
.
ÑÑJ K
Text
ÑÑK O
==
ÑÑP R
$str
ÑÑS f
)
ÑÑf g
{
ÖÖ 
txtb_Titulo
ÜÜ 
.
ÜÜ 
Text
ÜÜ  
=
ÜÜ! "
nombreArchivo
ÜÜ# 0
;
ÜÜ0 1
txtb_Titulo
áá 
.
áá 

Foreground
áá &
=
áá' (
Brushes
áá) 0
.
áá0 1
Black
áá1 6
;
áá6 7
}
àà 
await
ää "
SubirArchivoPDFAsync
ää &
(
ää& '
ruta
ää' +
)
ää+ ,
;
ää, -
}
ãã 	
private
çç 
string
çç $
SanitizarNombreArchivo
çç -
(
çç- .
string
çç. 4
nombre
çç5 ;
)
çç; <
{
éé 	
string
èè 
limpio
èè 
=
èè 
nombre
èè "
.
èè" #
Replace
èè# *
(
èè* +
$char
èè+ .
,
èè. /
$char
èè0 3
)
èè3 4
;
èè4 5
limpio
ëë 
=
ëë 
new
ëë 
string
ëë 
(
ëë  
limpio
ëë  &
.
íí 
Where
íí 
(
íí 
c
íí 
=>
íí 
char
íí  
.
íí  !
IsLetterOrDigit
íí! 0
(
íí0 1
c
íí1 2
)
íí2 3
||
íí4 6
c
íí7 8
==
íí9 ;
$char
íí< ?
)
íí? @
.
ìì 
ToArray
ìì 
(
ìì 
)
ìì 
)
ìì 
;
ìì 
if
ïï 
(
ïï 
limpio
ïï 
.
ïï 
Length
ïï 
>
ïï 
$num
ïï  #
)
ïï# $
limpio
ññ 
=
ññ 
limpio
ññ 
.
ññ  
	Substring
ññ  )
(
ññ) *
$num
ññ* +
,
ññ+ ,
$num
ññ- 0
)
ññ0 1
;
ññ1 2
return
òò 
limpio
òò 
;
òò 
}
ôô 	
private
úú 
async
úú 
void
úú %
MostrarPreviewDesdeRuta
úú 2
(
úú2 3
string
úú3 9!
portadaRelativePath
úú: M
)
úúM N
{
ùù 	
try
ûû 
{
üü 
_pdfCargado
†† 
=
†† 
true
†† "
;
††" #
brd_DropArea
°° 
.
°° 
Cursor
°° #
=
°°$ %
Cursors
°°& -
.
°°- .
Arrow
°°. 3
;
°°3 4
brd_DropArea
¢¢ 
.
¢¢ 

Background
¢¢ '
=
¢¢( )
Brushes
¢¢* 1
.
¢¢1 2
White
¢¢2 7
;
¢¢7 8
grd_DropContent
££ 
.
££  
Children
££  (
.
££( )
Clear
££) .
(
££. /
)
££/ 0
;
££0 1&
FileServiceClientHandler
•• (
grpcHandler
••) 4
=
••5 6
new
••7 :
(
••: ;
)
••; <
;
••< =
var
¶¶ 
(
¶¶ 
bytes
¶¶ 
,
¶¶ 
_
¶¶ 
)
¶¶ 
=
¶¶  
await
¶¶! &
grpcHandler
¶¶' 2
.
¶¶2 3 
DownloadCoverAsync
¶¶3 E
(
¶¶E F!
portadaRelativePath
¶¶F Y
)
¶¶Y Z
;
¶¶Z [
if
®® 
(
®® 
bytes
®® 
==
®® 
null
®® !
)
®®! "
{
©© )
MostrarMensajePersonalizado
™™ /
(
™™/ 0
$str
™™0 ]
,
™™] ^

DialogType
™™_ i
.
™™i j
Warning
™™j q
)
™™q r
;
™™r s
return
´´ 
;
´´ 
}
¨¨ 
var
ÆÆ 
portadaImage
ÆÆ  
=
ÆÆ! "
new
ÆÆ# &
BitmapImage
ÆÆ' 2
(
ÆÆ2 3
)
ÆÆ3 4
;
ÆÆ4 5
using
ØØ 
(
ØØ 
var
ØØ 
stream
ØØ !
=
ØØ" #
new
ØØ$ '
MemoryStream
ØØ( 4
(
ØØ4 5
bytes
ØØ5 :
)
ØØ: ;
)
ØØ; <
{
∞∞ 
portadaImage
±±  
.
±±  !
	BeginInit
±±! *
(
±±* +
)
±±+ ,
;
±±, -
portadaImage
≤≤  
.
≤≤  !
CacheOption
≤≤! ,
=
≤≤- .
BitmapCacheOption
≤≤/ @
.
≤≤@ A
OnLoad
≤≤A G
;
≤≤G H
portadaImage
≥≥  
.
≥≥  !
StreamSource
≥≥! -
=
≥≥. /
stream
≥≥0 6
;
≥≥6 7
portadaImage
¥¥  
.
¥¥  !
EndInit
¥¥! (
(
¥¥( )
)
¥¥) *
;
¥¥* +
}
µµ 
var
∑∑ 
preview
∑∑ 
=
∑∑ 
new
∑∑ !
Image
∑∑" '
{
∏∏ 
Source
ππ 
=
ππ 
portadaImage
ππ )
,
ππ) *
Width
∫∫ 
=
∫∫ 
$num
∫∫ 
,
∫∫  
Height
ªª 
=
ªª 
$num
ªª  
,
ªª  !
Margin
ºº 
=
ºº 
new
ºº  
	Thickness
ºº! *
(
ºº* +
$num
ºº+ ,
)
ºº, -
,
ºº- .
Stretch
ΩΩ 
=
ΩΩ 
Stretch
ΩΩ %
.
ΩΩ% &
Uniform
ΩΩ& -
,
ΩΩ- .!
HorizontalAlignment
ææ '
=
ææ( )!
HorizontalAlignment
ææ* =
.
ææ= >
Center
ææ> D
,
ææD E
VerticalAlignment
øø %
=
øø& '
VerticalAlignment
øø( 9
.
øø9 :
Center
øø: @
,
øø@ A
}
¿¿ 
;
¿¿ 
var
¬¬ 

deleteIcon
¬¬ 
=
¬¬  
new
¬¬! $
Button
¬¬% +
{
√√ 
Content
ƒƒ 
=
ƒƒ 
$str
ƒƒ "
,
ƒƒ" #
Width
≈≈ 
=
≈≈ 
$num
≈≈ 
,
≈≈ 
Height
∆∆ 
=
∆∆ 
$num
∆∆ 
,
∆∆  

Background
«« 
=
««  
Brushes
««! (
.
««( )
Transparent
««) 4
,
««4 5

Foreground
»» 
=
»»  
Brushes
»»! (
.
»»( )
Red
»») ,
,
»», -
BorderThickness
…… #
=
……$ %
new
……& )
	Thickness
……* 3
(
……3 4
$num
……4 5
)
……5 6
,
……6 7
FontSize
   
=
   
$num
   !
,
  ! "!
HorizontalAlignment
ÀÀ '
=
ÀÀ( )!
HorizontalAlignment
ÀÀ* =
.
ÀÀ= >
Right
ÀÀ> C
,
ÀÀC D
VerticalAlignment
ÃÃ %
=
ÃÃ& '
VerticalAlignment
ÃÃ( 9
.
ÃÃ9 :
Top
ÃÃ: =
,
ÃÃ= >
Cursor
ÕÕ 
=
ÕÕ 
Cursors
ÕÕ $
.
ÕÕ$ %
Hand
ÕÕ% )
,
ÕÕ) *
ToolTip
ŒŒ 
=
ŒŒ 
$str
ŒŒ 0
}
œœ 
;
œœ 

deleteIcon
—— 
.
—— 
Click
——  
+=
——! #
(
——$ %
s
——% &
,
——& '
e
——( )
)
——) *
=>
——+ -
LimpiarPreview
——. <
(
——< =
)
——= >
;
——> ?
var
”” 
panel
”” 
=
”” 
new
”” 
Grid
””  $
(
””$ %
)
””% &
;
””& '
panel
‘‘ 
.
‘‘ 
Children
‘‘ 
.
‘‘ 
Add
‘‘ "
(
‘‘" #
preview
‘‘# *
)
‘‘* +
;
‘‘+ ,
panel
’’ 
.
’’ 
Children
’’ 
.
’’ 
Add
’’ "
(
’’" #

deleteIcon
’’# -
)
’’- .
;
’’. /
grd_DropContent
◊◊ 
.
◊◊  
Children
◊◊  (
.
◊◊( )
Add
◊◊) ,
(
◊◊, -
panel
◊◊- 2
)
◊◊2 3
;
◊◊3 4
}
ÿÿ 
catch
ŸŸ 
{
⁄⁄ )
MostrarMensajePersonalizado
€€ +
(
€€+ ,
$str
€€, R
,
€€R S

DialogType
€€T ^
.
€€^ _
Error
€€_ d
)
€€d e
;
€€e f
}
‹‹ 
}
›› 	
private
‡‡ 
void
‡‡ 
LimpiarPreview
‡‡ #
(
‡‡# $
)
‡‡$ %
{
·· 	
_rutaPDF
‚‚ 
=
‚‚ 
null
‚‚ 
;
‚‚ 
_pdfCargado
„„ 
=
„„ 
false
„„ 
;
„„  
_rutaDocumento
‰‰ 
=
‰‰ 
null
‰‰ !
;
‰‰! "
txtb_Titulo
ÂÂ 
.
ÂÂ 
Text
ÂÂ 
=
ÂÂ 
$str
ÂÂ 2
;
ÂÂ2 3
txtb_Titulo
ÊÊ 
.
ÊÊ 

Foreground
ÊÊ "
=
ÊÊ# $
Brushes
ÊÊ% ,
.
ÊÊ, -
Gray
ÊÊ- 1
;
ÊÊ1 2
SolidColorBrush
ËË 
gris
ËË  
=
ËË! "
new
ËË# &
(
ËË& '
(
ËË' (
Color
ËË( -
)
ËË- .
ColorConverter
ËË. <
.
ËË< =
ConvertFromString
ËË= N
(
ËËN O
$str
ËËO X
)
ËËX Y
)
ËËY Z
;
ËËZ [
brd_DropArea
ÈÈ 
.
ÈÈ 

Background
ÈÈ #
=
ÈÈ$ %
gris
ÈÈ& *
;
ÈÈ* +
brd_DropArea
ÍÍ 
.
ÍÍ 
Cursor
ÍÍ 
=
ÍÍ  !
Cursors
ÍÍ" )
.
ÍÍ) *
Hand
ÍÍ* .
;
ÍÍ. /
grd_DropContent
ÏÏ 
.
ÏÏ 
Children
ÏÏ $
.
ÏÏ$ %
Clear
ÏÏ% *
(
ÏÏ* +
)
ÏÏ+ ,
;
ÏÏ, -
var
ÓÓ 
sp
ÓÓ 
=
ÓÓ 
new
ÓÓ 

StackPanel
ÓÓ #
{
ÓÓ$ %!
HorizontalAlignment
ÓÓ& 9
=
ÓÓ: ;!
HorizontalAlignment
ÓÓ< O
.
ÓÓO P
Center
ÓÓP V
,
ÓÓV W
VerticalAlignment
ÓÓX i
=
ÓÓj k
VerticalAlignment
ÓÓl }
.
ÓÓ} ~
CenterÓÓ~ Ñ
}ÓÓÖ Ü
;ÓÓÜ á
sp
ÔÔ 
.
ÔÔ 
Children
ÔÔ 
.
ÔÔ 
Add
ÔÔ 
(
ÔÔ 
new
ÔÔ 
Image
ÔÔ  %
{
 
Source
ÒÒ 
=
ÒÒ 
new
ÒÒ 
BitmapImage
ÒÒ (
(
ÒÒ( )
new
ÒÒ) ,
Uri
ÒÒ- 0
(
ÒÒ0 1
$str
ÒÒ1 W
,
ÒÒW X
UriKind
ÒÒY `
.
ÒÒ` a
Relative
ÒÒa i
)
ÒÒi j
)
ÒÒj k
,
ÒÒk l
Width
ÚÚ 
=
ÚÚ 
$num
ÚÚ 
,
ÚÚ 
Height
ÛÛ 
=
ÛÛ 
$num
ÛÛ 
,
ÛÛ 
Opacity
ÙÙ 
=
ÙÙ 
$num
ÙÙ 
}
ıı 
)
ıı 
;
ıı 
sp
ˆˆ 
.
ˆˆ 
Children
ˆˆ 
.
ˆˆ 
Add
ˆˆ 
(
ˆˆ 
new
ˆˆ 
	TextBlock
ˆˆ  )
{
˜˜ 
Text
¯¯ 
=
¯¯ 
$str
¯¯ C
,
¯¯C D

FontFamily
˘˘ 
=
˘˘ 
new
˘˘  

FontFamily
˘˘! +
(
˘˘+ ,
$str
˘˘, 5
)
˘˘5 6
,
˘˘6 7
FontSize
˙˙ 
=
˙˙ 
$num
˙˙ 
,
˙˙ 

Foreground
˚˚ 
=
˚˚ 
Brushes
˚˚ $
.
˚˚$ %
Gray
˚˚% )
,
˚˚) *
TextAlignment
¸¸ 
=
¸¸ 
TextAlignment
¸¸  -
.
¸¸- .
Center
¸¸. 4
,
¸¸4 5
Margin
˝˝ 
=
˝˝ 
new
˝˝ 
	Thickness
˝˝ &
(
˝˝& '
$num
˝˝' )
)
˝˝) *
,
˝˝* +
TextWrapping
˛˛ 
=
˛˛ 
TextWrapping
˛˛ +
.
˛˛+ ,
Wrap
˛˛, 0
}
ˇˇ 
)
ˇˇ 
;
ˇˇ 
grd_DropContent
ÅÅ 
.
ÅÅ 
Children
ÅÅ $
.
ÅÅ$ %
Add
ÅÅ% (
(
ÅÅ( )
sp
ÅÅ) +
)
ÅÅ+ ,
;
ÅÅ, -
}
ÇÇ 	
}
ÑÑ 
}ÖÖ âs
ûC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\MisDocumentos.xaml.cs
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
$str	II< ç
,
IIç é

DialogType
IIè ô
.
IIô ö
Error
IIö ü
)
IIü †
;
II† °
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
Error	hh~ É
)
hhÉ Ñ
;
hhÑ Ö
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
ÄÄ 
var
ÅÅ 
	confirmar
ÅÅ 
=
ÅÅ 
new
ÅÅ  #+
VentanaEmergentePersonalizada
ÅÅ$ A
(
ÅÅA B
$str
ÇÇ L
,
ÇÇL M

DialogType
ÉÉ 
.
ÉÉ 
Confirmation
ÉÉ +
)
ÉÉ+ ,
{
ÑÑ 
Owner
ÖÖ 
=
ÖÖ 
Window
ÖÖ "
.
ÖÖ" #
	GetWindow
ÖÖ# ,
(
ÖÖ, -
this
ÖÖ- 1
)
ÖÖ1 2
}
ÜÜ 
;
ÜÜ 
bool
àà 

confirmado
àà 
=
àà  !
	confirmar
àà" +
.
àà+ ,

ShowDialog
àà, 6
(
àà6 7
)
àà7 8
==
àà9 ;
true
àà< @
;
àà@ A
if
ää 
(
ää 
!
ää 

confirmado
ää 
)
ää  
return
ãã 
;
ãã 
try
çç 
{
éé 
string
èè 
token
èè  
=
èè! "
PerfilSingleton
èè# 2
.
èè2 3
Instance
èè3 ;
.
èè; <
TokenJwt
èè< D
;
èèD E
var
êê 
	respuesta
êê !
=
êê" #
await
êê$ )!
PublicacionServicio
êê* =
.
êê= >&
EliminarPublicacionAsync
êê> V
(
êêV W
token
êêW \
,
êê\ ]
idPublicacion
êê^ k
)
êêk l
;
êêl m
switch
íí 
(
íí 
	respuesta
íí %
.
íí% &
	Resultado
íí& /
)
íí/ 0
{
ìì 
case
îî 
$num
îî  
:
îî  !)
MostrarMensajePersonalizado
ïï 7
(
ïï7 8
$str
ïï8 i
,
ïïi j

DialogType
ïïk u
.
ïïu v
Success
ïïv }
)
ïï} ~
;
ïï~ 
CargarDocumentos
ññ ,
(
ññ, -
)
ññ- .
;
ññ. /
break
óó !
;
óó! "
case
ôô 
$num
ôô  
:
ôô  !)
MostrarMensajePersonalizado
öö 7
(
öö7 8
$str
öö8 X
,
ööX Y

DialogType
ööZ d
.
ööd e
Warning
ööe l
)
ööl m
;
ööm n
break
õõ !
;
õõ! "
case
ùù 
(
ùù 
int
ùù !
)
ùù! "
HttpStatusCode
ùù" 0
.
ùù0 1
Unauthorized
ùù1 =
:
ùù= >)
MostrarMensajePersonalizado
ûû 7
(
ûû7 8
$str
ûû8 u
,
ûûu v

DialogTypeûûw Å
.ûûÅ Ç
ErrorûûÇ á
)ûûá à
;ûûà â
NavigationService
üü -
.
üü- .
Navigate
üü. 6
(
üü6 7
new
üü7 :
Login
üü; @
(
üü@ A
)
üüA B
)
üüB C
;
üüC D
PerfilSingleton
†† +
.
††+ ,
Instance
††, 4
.
††4 5
Reset
††5 :
(
††: ;
)
††; <
;
††< =
break
°° !
;
°°! "
case
££ 
$num
££  
:
££  !)
MostrarMensajePersonalizado
§§ 7
(
§§7 8
	respuesta
§§8 A
.
§§A B
Mensaje
§§B I
,
§§I J

DialogType
§§K U
.
§§U V
Error
§§V [
)
§§[ \
;
§§\ ]
break
•• !
;
••! "
default
ßß 
:
ßß  )
MostrarMensajePersonalizado
®® 7
(
®®7 8
$"
®®8 :
$str
®®: A
{
®®A B
	respuesta
®®B K
.
®®K L
Mensaje
®®L S
}
®®S T
"
®®T U
,
®®U V

DialogType
®®W a
.
®®a b
Warning
®®b i
)
®®i j
;
®®j k
break
©© !
;
©©! "
}
™™ 
}
´´ 
catch
¨¨ 
(
¨¨ 
	Exception
¨¨  
ex
¨¨! #
)
¨¨# $
{
≠≠ 
_logger
ÆÆ 
.
ÆÆ 
LogFatal
ÆÆ $
(
ÆÆ$ %
ex
ÆÆ% '
)
ÆÆ' (
;
ÆÆ( ))
MostrarMensajePersonalizado
ØØ /
(
ØØ/ 0
$str
ØØ0 i
,
ØØi j

DialogType
ØØk u
.
ØØu v
Error
ØØv {
)
ØØ{ |
;
ØØ| }
}
∞∞ 
}
±± 
}
≤≤ 	
public
µµ 
BitmapImage
µµ 
?
µµ 
ConvertirABitmap
µµ ,
(
µµ, -
byte
µµ- 1
[
µµ1 2
]
µµ2 3
datos
µµ4 9
)
µµ9 :
{
∂∂ 	
if
∑∑ 
(
∑∑ 
datos
∑∑ 
==
∑∑ 
null
∑∑ 
||
∑∑  
datos
∑∑! &
.
∑∑& '
Length
∑∑' -
==
∑∑. 0
$num
∑∑1 2
)
∑∑2 3
return
∑∑4 :
null
∑∑; ?
;
∑∑? @
using
ππ 
var
ππ 
stream
ππ 
=
ππ 
new
ππ "
MemoryStream
ππ# /
(
ππ/ 0
datos
ππ0 5
)
ππ5 6
;
ππ6 7
var
∫∫ 
image
∫∫ 
=
∫∫ 
new
∫∫ 
BitmapImage
∫∫ '
(
∫∫' (
)
∫∫( )
;
∫∫) *
image
ªª 
.
ªª 
	BeginInit
ªª 
(
ªª 
)
ªª 
;
ªª 
image
ºº 
.
ºº 
CacheOption
ºº 
=
ºº 
BitmapCacheOption
ºº  1
.
ºº1 2
OnLoad
ºº2 8
;
ºº8 9
image
ΩΩ 
.
ΩΩ 
StreamSource
ΩΩ 
=
ΩΩ  
stream
ΩΩ! '
;
ΩΩ' (
image
ææ 
.
ææ 
EndInit
ææ 
(
ææ 
)
ææ 
;
ææ 
return
øø 
image
øø 
;
øø 
}
¿¿ 	
}
¡¡ 
}¬¬ ÆÂ
£C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\ExplorarDocumentos.xaml.cs
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
ÄÄ 
Owner
ÅÅ 
=
ÅÅ 
Window
ÅÅ 
.
ÅÅ 
	GetWindow
ÅÅ (
(
ÅÅ( )
this
ÅÅ) -
)
ÅÅ- .
}
ÇÇ 
;
ÇÇ 
dialog
ÉÉ 
.
ÉÉ 

ShowDialog
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ  
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ  
ElegirTipoBusqueda
ÜÜ '
(
ÜÜ' (
string
ÜÜ( .
tipo
ÜÜ/ 3
,
ÜÜ3 4
string
ÜÜ5 ;
texto
ÜÜ< A
,
ÜÜA B
int
ÜÜC F
id
ÜÜG I
)
ÜÜI J
{
áá 	
switch
àà 
(
àà 
tipo
àà 
)
àà 
{
ââ 
case
ää 
$str
ää  
:
ää  !
case
ãã 
$str
ãã "
:
ãã" #"
ObtenerPublicaciones
åå (
(
åå( )
)
åå) *
;
åå* +
break
çç 
;
çç 
case
éé 
$str
éé  
:
éé  !+
ObtenerPublicacionesCategoria
èè 1
(
èè1 2
id
èè2 4
)
èè4 5
;
èè5 6
break
êê 
;
êê 
case
ëë 
$str
ëë 
:
ëë '
ObtenerPublicacionesRamas
íí -
(
íí- .
id
íí. 0
)
íí0 1
;
íí1 2
break
ìì 
;
ìì 
case
îî 
$str
îî %
:
îî% &0
"ObtenerPublicacionesNivelEducativo
ïï 6
(
ïï6 7
texto
ïï7 <
)
ïï< =
;
ïï= >
break
ññ 
;
ññ 
default
óó 
:
óó "
ObtenerPublicaciones
òò (
(
òò( )
)
òò) *
;
òò* +
break
ôô 
;
ôô 
}
öö 
}
õõ 	
private
ùù 
async
ùù 
void
ùù "
ObtenerPublicaciones
ùù /
(
ùù/ 0
)
ùù0 1
=>
ùù2 4
await
ûû '
ObtenerPublicacionesAsync
ûû +
(
ûû+ ,!
PublicacionServicio
ûû, ?
.
ûû? @"
ObtenerPublicaciones
ûû@ T
)
ûûT U
;
ûûU V
private
†† 
async
†† 
void
†† +
ObtenerPublicacionesCategoria
†† 8
(
††8 9
int
††9 <
id
††= ?
)
††? @
=>
††A C
await
°° '
ObtenerPublicacionesAsync
°° +
(
°°+ ,
(
°°, -
)
°°- .
=>
°°/ 1!
PublicacionServicio
°°2 E
.
°°E F!
ObtenerPorCategoria
°°F Y
(
°°Y Z
id
°°Z \
)
°°\ ]
)
°°] ^
;
°°^ _
private
££ 
async
££ 
void
££ 0
"ObtenerPublicacionesNivelEducativo
££ =
(
££= >
string
££> D
nivel
££E J
)
££J K
=>
££L N
await
§§ '
ObtenerPublicacionesAsync
§§ +
(
§§+ ,
(
§§, -
)
§§- .
=>
§§/ 1!
PublicacionServicio
§§2 E
.
§§E F&
ObtenerPorNivelEducativo
§§F ^
(
§§^ _
nivel
§§_ d
)
§§d e
)
§§e f
;
§§f g
private
¶¶ 
async
¶¶ 
void
¶¶ '
ObtenerPublicacionesRamas
¶¶ 4
(
¶¶4 5
int
¶¶5 8
rama
¶¶9 =
)
¶¶= >
=>
¶¶? A
await
ßß '
ObtenerPublicacionesAsync
ßß +
(
ßß+ ,
(
ßß, -
)
ßß- .
=>
ßß/ 1!
PublicacionServicio
ßß2 E
.
ßßE F
ObtenerPorRama
ßßF T
(
ßßT U
rama
ßßU Y
)
ßßY Z
)
ßßZ [
;
ßß[ \
private
©© 
async
©© 
Task
©© '
ObtenerPublicacionesAsync
©© 4
(
©©4 5
Func
©©5 9
<
©©9 :
Task
©©: >
<
©©> ?"
RespuestaPublicacion
©©? S
<
©©S T
List
©©T X
<
©©X Y
Publicacion
©©Y d
>
©©d e
>
©©e f
>
©©f g
>
©©g h!
fuentePublicaciones
©©i |
)
©©| }
{
™™ 	$
itmc_DocumentosControl
´´ "
.
´´" #
ItemsSource
´´# .
=
´´/ 0
null
´´1 5
;
´´5 6"
grd_SinPublicaciones
¨¨  
.
¨¨  !

Visibility
¨¨! +
=
¨¨, -

Visibility
¨¨. 8
.
¨¨8 9
	Collapsed
¨¨9 B
;
¨¨B C
try
ÆÆ 
{
ØØ 
var
∞∞ 
	respuesta
∞∞ 
=
∞∞ 
await
∞∞  %!
fuentePublicaciones
∞∞& 9
(
∞∞9 :
)
∞∞: ;
;
∞∞; <
switch
≤≤ 
(
≤≤ 
	respuesta
≤≤ !
.
≤≤! "
	Resultado
≤≤" +
)
≤≤+ ,
{
≥≥ 
case
¥¥ 
$num
¥¥ 
:
¥¥ 
var
µµ  
publicacionesVista
µµ .
=
µµ/ 0
await
µµ1 6/
!ConvertirAPublicacionesVistaAsync
µµ7 X
(
µµX Y
	respuesta
µµY b
.
µµb c
Datos
µµc h
)
µµh i
;
µµi j&
_publicacionesOriginales
∑∑ 0
=
∑∑1 2 
publicacionesVista
∑∑3 E
.
∑∑E F
ToList
∑∑F L
(
∑∑L M
)
∑∑M N
;
∑∑N O
var
ππ $
publicacionesFiltradas
ππ 2
=
ππ3 4%
AplicarFiltrosEnMemoria
ππ5 L
(
ππL M 
publicacionesVista
ππM _
,
ππ_ `
_tipoBusqueda
ππa n
,
ππn o
	_busqueda
ππp y
,
ππy z
_id
ππ{ ~
)
ππ~ 
;ππ Ä!
_publicacionesCache
ªª +
=
ªª, -$
publicacionesFiltradas
ªª. D
;
ªªD E
if
ΩΩ 
(
ΩΩ 
!
ΩΩ $
publicacionesFiltradas
ΩΩ 3
.
ΩΩ3 4
Any
ΩΩ4 7
(
ΩΩ7 8
)
ΩΩ8 9
)
ΩΩ9 :
{
ææ "
grd_SinPublicaciones
øø 0
.
øø0 1

Visibility
øø1 ;
=
øø< =

Visibility
øø> H
.
øøH I
Visible
øøI P
;
øøP Q
}
¿¿ 
else
¡¡ 
{
¬¬ $
itmc_DocumentosControl
√√ 2
.
√√2 3
ItemsSource
√√3 >
=
√√? @$
publicacionesFiltradas
√√A W
;
√√W X
}
ƒƒ 
break
≈≈ 
;
≈≈ 
case
«« 
$num
«« 
:
«« "
grd_SinPublicaciones
»» ,
.
»», -

Visibility
»»- 7
=
»»8 9

Visibility
»»: D
.
»»D E
Visible
»»E L
;
»»L M
break
…… 
;
…… 
case
ÀÀ 
(
ÀÀ 
int
ÀÀ 
)
ÀÀ 
HttpStatusCode
ÀÀ ,
.
ÀÀ, -
Unauthorized
ÀÀ- 9
:
ÀÀ9 :)
MostrarMensajePersonalizado
ÃÃ 3
(
ÃÃ3 4
$str
ÃÃ4 q
,
ÃÃq r

DialogType
ÃÃs }
.
ÃÃ} ~
ErrorÃÃ~ É
)ÃÃÉ Ñ
;ÃÃÑ Ö
NavigationService
ÕÕ )
.
ÕÕ) *
Navigate
ÕÕ* 2
(
ÕÕ2 3
new
ÕÕ3 6
Login
ÕÕ7 <
(
ÕÕ< =
)
ÕÕ= >
)
ÕÕ> ?
;
ÕÕ? @
PerfilSingleton
ŒŒ '
.
ŒŒ' (
Instance
ŒŒ( 0
.
ŒŒ0 1
Reset
ŒŒ1 6
(
ŒŒ6 7
)
ŒŒ7 8
;
ŒŒ8 9
BusquedaSingleton
œœ )
.
œœ) *
Instance
œœ* 2
.
œœ2 3
LimpiarBusqueda
œœ3 B
(
œœB C
)
œœC D
;
œœD E
break
–– 
;
–– 
case
““ 
$num
““ 
:
““ )
MostrarMensajePersonalizado
”” 3
(
””3 4
$str
””4 f
,
””f g

DialogType
””h r
.
””r s
Error
””s x
)
””x y
;
””y z
break
‘‘ 
;
‘‘ 
default
÷÷ 
:
÷÷ )
MostrarMensajePersonalizado
◊◊ 3
(
◊◊3 4
$"
◊◊4 6
$str
◊◊6 =
{
◊◊= >
	respuesta
◊◊> G
.
◊◊G H
Mensaje
◊◊H O
}
◊◊O P
"
◊◊P Q
,
◊◊Q R

DialogType
◊◊S ]
.
◊◊] ^
Warning
◊◊^ e
)
◊◊e f
;
◊◊f g
break
ÿÿ 
;
ÿÿ 
}
ŸŸ 
}
⁄⁄ 
catch
€€ 
(
€€ 
	Exception
€€ 
ex
€€ 
)
€€  
{
‹‹ 
_logger
›› 
.
›› 
LogFatal
››  
(
››  !
ex
››! #
)
››# $
;
››$ %)
MostrarMensajePersonalizado
ﬁﬁ +
(
ﬁﬁ+ ,
$str
ﬁﬁ, b
,
ﬁﬁb c

DialogType
ﬁﬁd n
.
ﬁﬁn o
Error
ﬁﬁo t
)
ﬁﬁt u
;
ﬁﬁu v
}
ﬂﬂ 
}
‡‡ 	
private
‚‚ 
List
‚‚ 
<
‚‚ 
PublicacionVista
‚‚ %
>
‚‚% &%
AplicarFiltrosEnMemoria
‚‚' >
(
‚‚> ?
List
‚‚? C
<
‚‚C D
PublicacionVista
‚‚D T
>
‚‚T U
publicaciones
‚‚V c
,
‚‚c d
string
‚‚e k
tipoBusqueda
‚‚l x
,
‚‚x y
string‚‚z Ä
busqueda‚‚Å â
,‚‚â ä
int‚‚ã é
id‚‚è ë
)‚‚ë í
{
„„ 	
var
‰‰ 
	resultado
‰‰ 
=
‰‰ 
publicaciones
‰‰ )
.
‰‰) *
ToList
‰‰* 0
(
‰‰0 1
)
‰‰1 2
;
‰‰2 3
switch
ÊÊ 
(
ÊÊ 
tipoBusqueda
ÊÊ  
)
ÊÊ  !
{
ÁÁ 
case
ËË 
$str
ËË  
:
ËË  !
if
ÈÈ 
(
ÈÈ 
!
ÈÈ 
string
ÈÈ 
.
ÈÈ   
IsNullOrWhiteSpace
ÈÈ  2
(
ÈÈ2 3
busqueda
ÈÈ3 ;
)
ÈÈ; <
)
ÈÈ< =
{
ÍÍ 
	resultado
ÎÎ !
=
ÎÎ" #
	resultado
ÎÎ$ -
.
ÏÏ 
Where
ÏÏ "
(
ÏÏ" #
p
ÏÏ# $
=>
ÏÏ% '
p
ÏÏ( )
.
ÏÏ) *
Titulo
ÏÏ* 0
.
ÏÏ0 1
Contains
ÏÏ1 9
(
ÏÏ9 :
busqueda
ÏÏ: B
,
ÏÏB C
StringComparison
ÏÏD T
.
ÏÏT U
OrdinalIgnoreCase
ÏÏU f
)
ÏÏf g
)
ÏÏg h
.
ÌÌ 
ToList
ÌÌ #
(
ÌÌ# $
)
ÌÌ$ %
;
ÌÌ% &
}
ÓÓ 
break
ÔÔ 
;
ÔÔ 
case
ÒÒ 
$str
ÒÒ "
:
ÒÒ" #
if
ÚÚ 
(
ÚÚ 
!
ÚÚ 
string
ÚÚ 
.
ÚÚ   
IsNullOrWhiteSpace
ÚÚ  2
(
ÚÚ2 3
busqueda
ÚÚ3 ;
)
ÚÚ; <
)
ÚÚ< =
{
ÛÛ 
	resultado
ÙÙ !
=
ÙÙ" #
busqueda
ÙÙ$ ,
switch
ÙÙ- 3
{
ıı 
$str
ˆˆ -
=>
ˆˆ. 0
	resultado
ˆˆ1 :
.
ˆˆ: ;
OrderByDescending
ˆˆ; L
(
ˆˆL M
p
ˆˆM N
=>
ˆˆO Q
p
ˆˆR S
.
ˆˆS T
	Descargas
ˆˆT ]
)
ˆˆ] ^
.
ˆˆ^ _
ToList
ˆˆ_ e
(
ˆˆe f
)
ˆˆf g
,
ˆˆg h
$str
˜˜ /
=>
˜˜0 2
	resultado
˜˜3 <
.
˜˜< =
OrderByDescending
˜˜= N
(
˜˜N O
p
˜˜O P
=>
˜˜Q S
p
˜˜T U
.
˜˜U V
Likes
˜˜V [
)
˜˜[ \
.
˜˜\ ]
ToList
˜˜] c
(
˜˜c d
)
˜˜d e
,
˜˜e f
$str
¯¯ (
=>
¯¯) +
	resultado
¯¯, 5
.
¯¯5 6
OrderByDescending
¯¯6 G
(
¯¯G H
p
¯¯H I
=>
¯¯J L
p
¯¯M N
.
¯¯N O
Vistas
¯¯O U
)
¯¯U V
.
¯¯V W
ToList
¯¯W ]
(
¯¯] ^
)
¯¯^ _
,
¯¯_ `
_
˘˘ 
=>
˘˘  
	resultado
˘˘! *
}
˙˙ 
;
˙˙ 
}
˚˚ 
break
¸¸ 
;
¸¸ 
case
˛˛ 
$str
˛˛  
:
˛˛  !
	resultado
ˇˇ 
=
ˇˇ 
	resultado
ˇˇ  )
.
ˇˇ) *
Where
ˇˇ* /
(
ˇˇ/ 0
p
ˇˇ0 1
=>
ˇˇ2 4
p
ˇˇ5 6
.
ˇˇ6 7
IdCategoria
ˇˇ7 B
==
ˇˇC E
id
ˇˇF H
)
ˇˇH I
.
ˇˇI J
ToList
ˇˇJ P
(
ˇˇP Q
)
ˇˇQ R
;
ˇˇR S
break
ÄÄ 
;
ÄÄ 
case
ÇÇ 
$str
ÇÇ %
:
ÇÇ% &
	resultado
ÉÉ 
=
ÉÉ 
	resultado
ÉÉ  )
.
ÉÉ) *
Where
ÉÉ* /
(
ÉÉ/ 0
p
ÉÉ0 1
=>
ÉÉ2 4
p
ÉÉ5 6
.
ÉÉ6 7
NivelEducativo
ÉÉ7 E
.
ÉÉE F
Equals
ÉÉF L
(
ÉÉL M
busqueda
ÉÉM U
,
ÉÉU V
StringComparison
ÉÉW g
.
ÉÉg h
OrdinalIgnoreCase
ÉÉh y
)
ÉÉy z
)
ÉÉz {
.
ÉÉ{ |
ToListÉÉ| Ç
(ÉÉÇ É
)ÉÉÉ Ñ
;ÉÉÑ Ö
break
ÑÑ 
;
ÑÑ 
case
ÜÜ 
$str
ÜÜ 
:
ÜÜ 
	resultado
áá 
=
áá 
	resultado
áá  )
.
áá) *
Where
áá* /
(
áá/ 0
p
áá0 1
=>
áá2 4
p
áá5 6
.
áá6 7
IdRama
áá7 =
==
áá> @
id
ááA C
)
ááC D
.
ááD E
ToList
ááE K
(
ááK L
)
ááL M
;
ááM N
break
àà 
;
àà 
}
ââ 
return
ãã 
	resultado
ãã 
;
ãã 
}
åå 	
private
éé 
async
éé 
Task
éé 
<
éé 
List
éé 
<
éé  
PublicacionVista
éé  0
>
éé0 1
>
éé1 2/
!ConvertirAPublicacionesVistaAsync
éé3 T
(
ééT U
List
ééU Y
<
ééY Z
Publicacion
ééZ e
>
éée f
publicaciones
éég t
)
éét u
{
èè 	
var
êê 
lista
êê 
=
êê 
new
êê 
List
êê  
<
êê  !
PublicacionVista
êê! 1
>
êê1 2
(
êê2 3
)
êê3 4
;
êê4 5
foreach
íí 
(
íí 
var
íí 
publicacion
íí $
in
íí% '
publicaciones
íí( 5
)
íí5 6
{
ìì 
byte
îî 
[
îî 
]
îî 
imagenBinaria
îî $
=
îî% &
Array
îî' ,
.
îî, -
Empty
îî- 2
<
îî2 3
byte
îî3 7
>
îî7 8
(
îî8 9
)
îî9 :
;
îî: ;
try
ññ 
{
óó 
var
òò 
grpc
òò 
=
òò 
new
òò "&
FileServiceClientHandler
òò# ;
(
òò; <
)
òò< =
;
òò= >
var
ôô 
(
ôô 
imagen
ôô 
,
ôô  
_
ôô! "
)
ôô" #
=
ôô$ %
await
ôô& +
grpc
ôô, 0
.
ôô0 1 
DownloadCoverAsync
ôô1 C
(
ôôC D
publicacion
ôôD O
.
ôôO P
Ruta
ôôP T
)
ôôT U
;
ôôU V
imagenBinaria
öö !
=
öö" #
imagen
öö$ *
??
öö+ -
Array
öö. 3
.
öö3 4
Empty
öö4 9
<
öö9 :
byte
öö: >
>
öö> ?
(
öö? @
)
öö@ A
;
ööA B
}
õõ 
catch
úú 
(
úú 
	Exception
úú  
ex
úú! #
)
úú# $
{
ùù 
_logger
ûû 
.
ûû 
LogError
ûû $
(
ûû$ %
ex
ûû% '
)
ûû' (
;
ûû( )
}
†† 
lista
¢¢ 
.
¢¢ 
Add
¢¢ 
(
¢¢ 
new
¢¢ 
PublicacionVista
¢¢ .
{
££ 
Titulo
§§ 
=
§§ 
publicacion
§§ (
.
§§( )
Titulo
§§) /
,
§§/ 0
IdPublicacion
•• !
=
••" #
publicacion
••$ /
.
••/ 0
IdPublicacion
••0 =
,
••= >
IdCategoria
¶¶ 
=
¶¶  !
publicacion
¶¶" -
.
¶¶- .
IdCategoria
¶¶. 9
,
¶¶9 :
Descripcion
ßß 
=
ßß  !
publicacion
ßß" -
.
ßß- .
ResuContenido
ßß. ;
,
ßß; <
NivelEducativo
®® "
=
®®# $
publicacion
®®% 0
.
®®0 1
NivelEducativo
®®1 ?
,
®®? @
Estado
©© 
=
©© 
publicacion
©© (
.
©©( )
Estado
©©) /
,
©©/ 0
Autor
™™ 
=
™™ 
publicacion
™™ '
.
™™' (
NombreCompleto
™™( 6
,
™™6 7
Fecha
´´ 
=
´´ 
publicacion
´´ '
.
´´' (
Fecha
´´( -
.
´´- .
ToString
´´. 6
(
´´6 7
$str
´´7 I
)
´´I J
,
´´J K
Likes
¨¨ 
=
¨¨ 
publicacion
¨¨ '
.
¨¨' (
NumeroLiker
¨¨( 3
,
¨¨3 4
	Descargas
≠≠ 
=
≠≠ 
publicacion
≠≠  +
.
≠≠+ ,
NumeroDescargas
≠≠, ;
,
≠≠; <
Vistas
ÆÆ 
=
ÆÆ 
publicacion
ÆÆ (
.
ÆÆ( )#
NumeroVisualizaciones
ÆÆ) >
,
ÆÆ> ?
IdRama
ØØ 
=
ØØ 
publicacion
ØØ (
.
ØØ( )
IdMateriaYRama
ØØ) 7
,
ØØ7 8
Ruta
∞∞ 
=
∞∞ 
publicacion
∞∞ &
.
∞∞& '
Ruta
∞∞' +
,
∞∞+ ,
Imagen
±± 
=
±± 
ConvertirABitmap
±± -
(
±±- .
imagenBinaria
±±. ;
)
±±; <
}
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 
return
µµ 
lista
µµ 
;
µµ 
}
∂∂ 	
public
∏∏ 
BitmapImage
∏∏ 
?
∏∏ 
ConvertirABitmap
∏∏ ,
(
∏∏, -
byte
∏∏- 1
[
∏∏1 2
]
∏∏2 3
datos
∏∏4 9
)
∏∏9 :
{
ππ 	
if
∫∫ 
(
∫∫ 
datos
∫∫ 
==
∫∫ 
null
∫∫ 
||
∫∫  
datos
∫∫! &
.
∫∫& '
Length
∫∫' -
==
∫∫. 0
$num
∫∫1 2
)
∫∫2 3
return
∫∫4 :
null
∫∫; ?
;
∫∫? @
using
ºº 
var
ºº 
stream
ºº 
=
ºº 
new
ºº "
MemoryStream
ºº# /
(
ºº/ 0
datos
ºº0 5
)
ºº5 6
;
ºº6 7
var
ΩΩ 
image
ΩΩ 
=
ΩΩ 
new
ΩΩ 
BitmapImage
ΩΩ '
(
ΩΩ' (
)
ΩΩ( )
;
ΩΩ) *
image
ææ 
.
ææ 
	BeginInit
ææ 
(
ææ 
)
ææ 
;
ææ 
image
øø 
.
øø 
CacheOption
øø 
=
øø 
BitmapCacheOption
øø  1
.
øø1 2
OnLoad
øø2 8
;
øø8 9
image
¿¿ 
.
¿¿ 
StreamSource
¿¿ 
=
¿¿  
stream
¿¿! '
;
¿¿' (
image
¡¡ 
.
¡¡ 
EndInit
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ 
return
¬¬ 
image
¬¬ 
;
¬¬ 
}
√√ 	
private
≈≈ 
void
≈≈ "
VerDetallesDocumento
≈≈ )
(
≈≈) *
object
≈≈* 0
sender
≈≈1 7
,
≈≈7 8"
MouseButtonEventArgs
≈≈9 M
e
≈≈N O
)
≈≈O P
{
∆∆ 	
var
«« 
border
«« 
=
«« 
sender
«« 
as
««  "
Border
««# )
;
««) *
if
»» 
(
»» 
border
»» 
?
»» 
.
»» 
DataContext
»» #
is
»»$ &
PublicacionVista
»»' 7
publicacion
»»8 C
)
»»C D
{
…… 
var
   
paginaDetalle
   !
=
  " #
new
  $ '!
VisualizarDocumento
  ( ;
(
  ; <
publicacion
  < G
)
  G H
;
  H I
NavigationService
ÀÀ !
?
ÀÀ! "
.
ÀÀ" #
Navigate
ÀÀ# +
(
ÀÀ+ ,
paginaDetalle
ÀÀ, 9
)
ÀÀ9 :
;
ÀÀ: ;
}
ÃÃ 
}
ÕÕ 	
}
ŒŒ 
}œœ Ë
çC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\SubMenu.xaml.cs
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
} ≠¿
£C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\ModuloDocumentos\EvaluarPublicacion.xaml.cs
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
Error	ZZ~ É
)
ZZÉ Ñ
;
ZZÑ Ö
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
ÅÅ 
{
ÇÇ 

PdfWebView
ÉÉ 
.
ÉÉ 

Visibility
ÉÉ %
=
ÉÉ& '

Visibility
ÉÉ( 2
.
ÉÉ2 3
	Collapsed
ÉÉ3 <
;
ÉÉ< =
var
ÑÑ 
grpc
ÑÑ 
=
ÑÑ 
new
ÑÑ &
FileServiceClientHandler
ÑÑ 7
(
ÑÑ7 8
)
ÑÑ8 9
;
ÑÑ9 :
var
ÖÖ 
(
ÖÖ 

pdfBinario
ÖÖ 
,
ÖÖ  
nombreArchivo
ÖÖ! .
)
ÖÖ. /
=
ÖÖ0 1
await
ÖÖ2 7
grpc
ÖÖ8 <
.
ÖÖ< =
DownloadPdfAsync
ÖÖ= M
(
ÖÖM N 
_publicacionActual
ÖÖN `
.
ÖÖ` a
Ruta
ÖÖa e
)
ÖÖe f
;
ÖÖf g
if
áá 
(
áá 

pdfBinario
áá 
!=
áá !
null
áá" &
&&
áá' )

pdfBinario
áá* 4
.
áá4 5
Length
áá5 ;
>
áá< =
$num
áá> ?
)
áá? @
{
àà 
string
ââ 
tempPath
ââ #
=
ââ$ %
System
ââ& ,
.
ââ, -
IO
ââ- /
.
ââ/ 0
Path
ââ0 4
.
ââ4 5
GetTempPath
ââ5 @
(
ââ@ A
)
ââA B
;
ââB C
_rutaPdfTemporal
ää $
=
ää% &
System
ää' -
.
ää- .
IO
ää. 0
.
ää0 1
Path
ää1 5
.
ää5 6
Combine
ää6 =
(
ää= >
tempPath
ää> F
,
ääF G
$"
ääH J
{
ääJ K 
_publicacionActual
ääK ]
.
ää] ^
IdPublicacion
ää^ k
}
ääk l
$str
ääl m
{
ääm n
nombreArchivo
ään {
}
ää{ |
"
ää| }
)
ää} ~
;
ää~ 
await
åå 
File
åå 
.
åå  
WriteAllBytesAsync
åå 1
(
åå1 2
_rutaPdfTemporal
åå2 B
,
ååB C

pdfBinario
ååD N
)
ååN O
;
ååO P
await
éé &
InicializarWebView2Async
éé 2
(
éé2 3
)
éé3 4
;
éé4 5
}
èè 
else
êê 
{
ëë )
MostrarMensajePersonalizado
íí /
(
íí/ 0
$str
íí0 T
,
ííT U

DialogType
ííV `
.
íí` a
Error
íía f
)
ííf g
;
ííg h
}
ìì 
}
îî 
catch
ïï 
(
ïï 
	Exception
ïï 
ex
ïï 
)
ïï  
{
ññ 
_logger
óó 
.
óó 
LogError
óó  
(
óó  !
ex
óó! #
)
óó# $
;
óó$ %)
MostrarMensajePersonalizado
òò +
(
òò+ ,
$str
òò, K
,
òòK L

DialogType
òòM W
.
òòW X
Error
òòX ]
)
òò] ^
;
òò^ _
}
ôô 
}
öö 	
private
úú 
async
úú 
Task
úú &
InicializarWebView2Async
úú 3
(
úú3 4
)
úú4 5
{
ùù 	
try
ûû 
{
üü 
if
†† 
(
†† 

PdfWebView
†† 
.
†† 
CoreWebView2
†† +
==
††, .
null
††/ 3
)
††3 4
await
°° 

PdfWebView
°° $
.
°°$ %%
EnsureCoreWebView2Async
°°% <
(
°°< =
)
°°= >
;
°°> ?
var
££ 
settings
££ 
=
££ 

PdfWebView
££ )
.
££) *
CoreWebView2
££* 6
.
££6 7
Settings
££7 ?
;
££? @
settings
§§ 
.
§§ 
IsScriptEnabled
§§ (
=
§§) *
false
§§+ 0
;
§§0 1
settings
•• 
.
••  
AreDevToolsEnabled
•• +
=
••, -
false
••. 3
;
••3 4
settings
¶¶ 
.
¶¶ "
IsZoomControlEnabled
¶¶ -
=
¶¶. /
true
¶¶0 4
;
¶¶4 5
settings
ßß 
.
ßß +
AreDefaultContextMenusEnabled
ßß 6
=
ßß7 8
false
ßß9 >
;
ßß> ?
settings
®® 
.
®® '
IsBuiltInErrorPageEnabled
®® 2
=
®®3 4
false
®®5 :
;
®®: ;

PdfWebView
™™ 
.
™™  
NavigationStarting
™™ -
+=
™™. 0
(
™™1 2
s
™™2 3
,
™™3 4
e
™™5 6
)
™™6 7
=>
™™8 :
{
´´ 
if
¨¨ 
(
¨¨ 
!
¨¨ 
e
¨¨ 
.
¨¨ 
Uri
¨¨ 
.
¨¨ 
Contains
¨¨ '
(
¨¨' (
$str
¨¨( .
)
¨¨. /
&&
¨¨0 2
!
¨¨3 4
e
¨¨4 5
.
¨¨5 6
Uri
¨¨6 9
.
¨¨9 :

StartsWith
¨¨: D
(
¨¨D E
$str
¨¨E N
)
¨¨N O
)
¨¨O P
{
≠≠ 
e
ÆÆ 
.
ÆÆ 
Cancel
ÆÆ  
=
ÆÆ! "
true
ÆÆ# '
;
ÆÆ' (
}
ØØ 
}
∞∞ 
;
∞∞ 

PdfWebView
≤≤ 
.
≤≤ !
NavigationCompleted
≤≤ .
+=
≤≤/ 1
(
≤≤2 3
s
≤≤3 4
,
≤≤4 5
e
≤≤6 7
)
≤≤7 8
=>
≤≤9 ;
{
≥≥ 
if
¥¥ 
(
¥¥ 
e
¥¥ 
.
¥¥ 
	IsSuccess
¥¥ #
)
¥¥# $
{
µµ 

PdfWebView
∂∂ "
.
∂∂" #

Visibility
∂∂# -
=
∂∂. /

Visibility
∂∂0 :
.
∂∂: ;
Visible
∂∂; B
;
∂∂B C
}
∑∑ 
else
∏∏ 
{
ππ )
MostrarMensajePersonalizado
∫∫ 3
(
∫∫3 4
$str
∫∫4 W
,
∫∫W X

DialogType
∫∫Y c
.
∫∫c d
Error
∫∫d i
)
∫∫i j
;
∫∫j k
}
ªª 
}
ºº 
;
ºº 
if
ææ 
(
ææ 
!
ææ 
string
ææ 
.
ææ 
IsNullOrEmpty
ææ )
(
ææ) *
_rutaPdfTemporal
ææ* :
)
ææ: ;
&&
ææ< >
File
ææ? C
.
ææC D
Exists
ææD J
(
ææJ K
_rutaPdfTemporal
ææK [
)
ææ[ \
)
ææ\ ]
{
øø 

PdfWebView
¿¿ 
.
¿¿ 
Source
¿¿ %
=
¿¿& '
new
¿¿( +
Uri
¿¿, /
(
¿¿/ 0
_rutaPdfTemporal
¿¿0 @
)
¿¿@ A
;
¿¿A B
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ 
	Exception
√√ 
ex
√√ 
)
√√  
{
ƒƒ 
_logger
≈≈ 
.
≈≈ 
LogError
≈≈  
(
≈≈  !
ex
≈≈! #
)
≈≈# $
;
≈≈$ %)
MostrarMensajePersonalizado
∆∆ +
(
∆∆+ ,
$str
∆∆, S
,
∆∆S T

DialogType
∆∆U _
.
∆∆_ `
Error
∆∆` e
)
∆∆e f
;
∆∆f g
}
«« 
}
»» 	
private
   
async
   
void
   
btn_Guardar_Click
   ,
(
  , -
object
  - 3
sender
  4 :
,
  : ;
RoutedEventArgs
  < K
e
  L M
)
  M N
{
ÀÀ 	
var
ÃÃ 
	confirmar
ÃÃ 
=
ÃÃ 
new
ÃÃ +
VentanaEmergentePersonalizada
ÃÃ  =
(
ÃÃ= >
$str
ÕÕ e
,
ÕÕe f

DialogType
ŒŒ 
.
ŒŒ 
Confirmation
ŒŒ +
)
ŒŒ+ ,
{
œœ 
Owner
–– 
=
–– 
Window
–– 
.
–– 
	GetWindow
–– (
(
––( )
this
––) -
)
––- .
}
—— 
;
—— 
bool
”” 

confirmado
”” 
=
”” 
	confirmar
”” '
.
””' (

ShowDialog
””( 2
(
””2 3
)
””3 4
==
””5 7
true
””8 <
;
””< =
if
’’ 
(
’’ 
!
’’ 

confirmado
’’ 
)
’’ 
return
÷÷ 
;
÷÷ 
try
ÿÿ 
{
ŸŸ 
string
⁄⁄ 
token
⁄⁄ 
=
⁄⁄ 
PerfilSingleton
⁄⁄ .
.
⁄⁄. /
Instance
⁄⁄/ 7
.
⁄⁄7 8
TokenJwt
⁄⁄8 @
;
⁄⁄@ A
var
€€ 
	respuesta
€€ 
=
€€ 
await
€€  %!
PublicacionServicio
€€& 9
.
€€9 :%
AprobarPublicacionAsync
€€: Q
(
€€Q R
token
€€R W
,
€€W X 
_publicacionActual
€€Y k
.
€€k l
IdPublicacion
€€l y
)
€€y z
;
€€z {
switch
›› 
(
›› 
	respuesta
›› !
.
››! "
	Resultado
››" +
)
››+ ,
{
ﬁﬁ 
case
ﬂﬂ 
$num
ﬂﬂ 
:
ﬂﬂ )
MostrarMensajePersonalizado
‡‡ 3
(
‡‡3 4
$str
‡‡4 `
,
‡‡` a

DialogType
‡‡b l
.
‡‡l m
Success
‡‡m t
)
‡‡t u
;
‡‡u v
_frame
·· 
.
·· 
Navigate
·· '
(
··' (
new
··( +"
RevisarPublicaciones
··, @
(
··@ A
_frame
··A G
)
··G H
)
··H I
;
··I J
break
‚‚ 
;
‚‚ 
case
‰‰ 
$num
‰‰ 
:
‰‰ )
MostrarMensajePersonalizado
ÂÂ 3
(
ÂÂ3 4
$str
ÂÂ4 N
,
ÂÂN O

DialogType
ÂÂP Z
.
ÂÂZ [
Warning
ÂÂ[ b
)
ÂÂb c
;
ÂÂc d
break
ÊÊ 
;
ÊÊ 
case
ËË 
(
ËË 
int
ËË 
)
ËË 
HttpStatusCode
ËË ,
.
ËË, -
Unauthorized
ËË- 9
:
ËË9 :)
MostrarMensajePersonalizado
ÈÈ 3
(
ÈÈ3 4
$str
ÈÈ4 q
,
ÈÈq r

DialogType
ÈÈs }
.
ÈÈ} ~
ErrorÈÈ~ É
)ÈÈÉ Ñ
;ÈÈÑ Ö
NavigationService
ÍÍ )
.
ÍÍ) *
Navigate
ÍÍ* 2
(
ÍÍ2 3
new
ÍÍ3 6
Login
ÍÍ7 <
(
ÍÍ< =
)
ÍÍ= >
)
ÍÍ> ?
;
ÍÍ? @
PerfilSingleton
ÎÎ '
.
ÎÎ' (
Instance
ÎÎ( 0
.
ÎÎ0 1
Reset
ÎÎ1 6
(
ÎÎ6 7
)
ÎÎ7 8
;
ÎÎ8 9
break
ÏÏ 
;
ÏÏ 
case
ÓÓ 
$num
ÓÓ 
:
ÓÓ )
MostrarMensajePersonalizado
ÔÔ 3
(
ÔÔ3 4
$str
ÔÔ4 ]
,
ÔÔ] ^

DialogType
ÔÔ_ i
.
ÔÔi j
Error
ÔÔj o
)
ÔÔo p
;
ÔÔp q
break
 
;
 
default
ÚÚ 
:
ÚÚ )
MostrarMensajePersonalizado
ÛÛ 3
(
ÛÛ3 4
$"
ÛÛ4 6
$str
ÛÛ6 =
{
ÛÛ= >
	respuesta
ÛÛ> G
.
ÛÛG H
Mensaje
ÛÛH O
}
ÛÛO P
"
ÛÛP Q
,
ÛÛQ R

DialogType
ÛÛS ]
.
ÛÛ] ^
Warning
ÛÛ^ e
)
ÛÛe f
;
ÛÛf g
break
ÙÙ 
;
ÙÙ 
}
ıı 
}
ˆˆ 
catch
˜˜ 
(
˜˜ 
	Exception
˜˜ 
ex
˜˜ 
)
˜˜  
{
¯¯ 
_logger
˘˘ 
.
˘˘ 
LogFatal
˘˘  
(
˘˘  !
ex
˘˘! #
)
˘˘# $
;
˘˘$ %)
MostrarMensajePersonalizado
˙˙ +
(
˙˙+ ,
$str
˙˙, _
,
˙˙_ `

DialogType
˙˙a k
.
˙˙k l
Error
˙˙l q
)
˙˙q r
;
˙˙r s
}
˚˚ 
}
˝˝ 	
private
ˇˇ 
async
ˇˇ 
void
ˇˇ "
ToggleButton_Checked
ˇˇ /
(
ˇˇ/ 0
object
ˇˇ0 6
sender
ˇˇ7 =
,
ˇˇ= >
RoutedEventArgs
ˇˇ? N
e
ˇˇO P
)
ˇˇP Q
{
ÄÄ 	
var
ÅÅ 
	confirmar
ÅÅ 
=
ÅÅ 
new
ÅÅ +
VentanaEmergentePersonalizada
ÅÅ  =
(
ÅÅ= >
$str
ÇÇ [
,
ÇÇ[ \

DialogType
ÉÉ 
.
ÉÉ 
Confirmation
ÉÉ *
)
ÉÉ* +
{
ÑÑ 
Owner
ÖÖ 
=
ÖÖ 
Window
ÖÖ 
.
ÖÖ 
	GetWindow
ÖÖ (
(
ÖÖ( )
this
ÖÖ) -
)
ÖÖ- .
}
ÜÜ 
;
ÜÜ 
bool
àà 

confirmado
àà 
=
àà 
	confirmar
àà '
.
àà' (

ShowDialog
àà( 2
(
àà2 3
)
àà3 4
==
àà5 7
true
àà8 <
;
àà< =
if
ää 
(
ää 
!
ää 

confirmado
ää 
)
ää 
return
ãã 
;
ãã 
try
çç 
{
éé 
string
èè 
token
èè 
=
èè 
PerfilSingleton
èè .
.
èè. /
Instance
èè/ 7
.
èè7 8
TokenJwt
èè8 @
;
èè@ A
var
êê 
	respuesta
êê 
=
êê 
await
êê  %
UsuarioServicio
êê& 5
.
êê5 6 
BanearUsuarioAsync
êê6 H
(
êêH I
token
êêI N
,
êêN O 
_publicacionActual
êêP b
.
êêb c
	IdUsuario
êêc l
)
êêl m
;
êêm n
switch
íí 
(
íí 
	respuesta
íí !
.
íí! "
	Resultado
íí" +
)
íí+ ,
{
ìì 
case
îî 
$num
îî 
:
îî )
MostrarMensajePersonalizado
ïï 3
(
ïï3 4
$str
ïï4 i
,
ïïi j

DialogType
ïïk u
.
ïïu v
Success
ïïv }
)
ïï} ~
;
ïï~ 
await
ññ !
PublicacionServicio
ññ 1
.
ññ1 2&
RechazarPublicacionAsync
ññ2 J
(
ññJ K
token
ññK P
,
ññP Q 
_publicacionActual
ññR d
.
ññd e
IdPublicacion
ññe r
)
ññr s
;
ññs t
_frame
òò 
.
òò 
Navigate
òò '
(
òò' (
new
òò( +"
RevisarPublicaciones
òò, @
(
òò@ A
_frame
òòA G
)
òòG H
)
òòH I
;
òòI J
break
ôô 
;
ôô 
case
õõ 
(
õõ 
int
õõ 
)
õõ 
HttpStatusCode
õõ ,
.
õõ, -
Unauthorized
õõ- 9
:
õõ9 :)
MostrarMensajePersonalizado
úú 3
(
úú3 4
$str
úú4 q
,
úúq r

DialogType
úús }
.
úú} ~
Errorúú~ É
)úúÉ Ñ
;úúÑ Ö
NavigationService
ùù )
.
ùù) *
Navigate
ùù* 2
(
ùù2 3
new
ùù3 6
Login
ùù7 <
(
ùù< =
)
ùù= >
)
ùù> ?
;
ùù? @
PerfilSingleton
ûû '
.
ûû' (
Instance
ûû( 0
.
ûû0 1
Reset
ûû1 6
(
ûû6 7
)
ûû7 8
;
ûû8 9
break
üü 
;
üü 
case
†† 
$num
†† 
:
†† )
MostrarMensajePersonalizado
°° 3
(
°°3 4
$str
°°4 b
,
°°b c

DialogType
°°d n
.
°°n o
Error
°°o t
)
°°t u
;
°°u v
break
¢¢ 
;
¢¢ 
case
§§ 
$num
§§ 
:
§§ )
MostrarMensajePersonalizado
•• 3
(
••3 4
	respuesta
••4 =
.
••= >
Mensaje
••> E
,
••E F

DialogType
••G Q
.
••Q R
Error
••R W
)
••W X
;
••X Y
break
¶¶ 
;
¶¶ 
default
®® 
:
®® )
MostrarMensajePersonalizado
©© 3
(
©©3 4
$"
©©4 6
$str
©©6 =
{
©©= >
	respuesta
©©> G
.
©©G H
Mensaje
©©H O
}
©©O P
"
©©P Q
,
©©Q R

DialogType
©©S ]
.
©©] ^
Warning
©©^ e
)
©©e f
;
©©f g
break
™™ 
;
™™ 
}
´´ 
}
¨¨ 
catch
≠≠ 
(
≠≠ 
	Exception
≠≠ 
ex
≠≠ 
)
≠≠  
{
ÆÆ 
_logger
ØØ 
.
ØØ 
LogFatal
ØØ  
(
ØØ  !
ex
ØØ! #
)
ØØ# $
;
ØØ$ %)
MostrarMensajePersonalizado
∞∞ +
(
∞∞+ ,
$str
∞∞, _
,
∞∞_ `

DialogType
∞∞a k
.
∞∞k l
Error
∞∞l q
)
∞∞q r
;
∞∞r s
}
±± 
}
≤≤ 	
}
≥≥ 
}¥¥ ¨Y
öC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\RevisarPublicaciones.xaml.cs
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
$str	MM< ç
,
MMç é

DialogType
MMè ô
.
MMô ö
Error
MMö ü
)
MMü †
;
MM† °
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
Error	nn~ É
)
nnÉ Ñ
;
nnÑ Ö
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
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
BitmapImage
ÉÉ 
?
ÉÉ 
ConvertirABitmap
ÉÉ ,
(
ÉÉ, -
byte
ÉÉ- 1
[
ÉÉ1 2
]
ÉÉ2 3
datos
ÉÉ4 9
)
ÉÉ9 :
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
datos
ÖÖ 
==
ÖÖ 
null
ÖÖ 
||
ÖÖ  
datos
ÖÖ! &
.
ÖÖ& '
Length
ÖÖ' -
==
ÖÖ. 0
$num
ÖÖ1 2
)
ÖÖ2 3
return
ÖÖ4 :
null
ÖÖ; ?
;
ÖÖ? @
using
áá 
var
áá 
stream
áá 
=
áá 
new
áá "
MemoryStream
áá# /
(
áá/ 0
datos
áá0 5
)
áá5 6
;
áá6 7
var
àà 
image
àà 
=
àà 
new
àà 
BitmapImage
àà '
(
àà' (
)
àà( )
;
àà) *
image
ââ 
.
ââ 
	BeginInit
ââ 
(
ââ 
)
ââ 
;
ââ 
image
ää 
.
ää 
CacheOption
ää 
=
ää 
BitmapCacheOption
ää  1
.
ää1 2
OnLoad
ää2 8
;
ää8 9
image
ãã 
.
ãã 
StreamSource
ãã 
=
ãã  
stream
ãã! '
;
ãã' (
image
åå 
.
åå 
EndInit
åå 
(
åå 
)
åå 
;
åå 
return
çç 
image
çç 
;
çç 
}
éé 	
private
êê 
void
êê "
VerDetallesDocumento
êê )
(
êê) *
object
êê* 0
sender
êê1 7
,
êê7 8"
MouseButtonEventArgs
êê9 M
e
êêN O
)
êêO P
{
ëë 	
var
íí 
border
íí 
=
íí 
sender
íí 
as
íí  "
Border
íí# )
;
íí) *
if
ìì 
(
ìì 
border
ìì 
?
ìì 
.
ìì 
DataContext
ìì #
is
ìì$ &
PublicacionVista
ìì' 7
publicacion
ìì8 C
)
ììC D
{
îî 
var
ïï 
paginaDetalle
ïï !
=
ïï" #
new
ïï$ ' 
EvaluarPublicacion
ïï( :
(
ïï: ;
publicacion
ïï; F
,
ïïF G
_frame
ïïH N
)
ïïN O
;
ïïO P
NavigationService
ññ !
?
ññ! "
.
ññ" #
Navigate
ññ# +
(
ññ+ ,
paginaDetalle
ññ, 9
)
ññ9 :
;
ññ: ;
}
óó 
}
òò 	
}
õõ 
}úú ßπ
ìC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\MenuPrincipal.xaml.cs
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
ÄÄ 
void
ÄÄ 
IrARegistrarse
ÄÄ #
(
ÄÄ# $
object
ÄÄ$ *
sender
ÄÄ+ 1
,
ÄÄ1 2
RoutedEventArgs
ÄÄ3 B
e
ÄÄC D
)
ÄÄD E
{
ÅÅ 	
RegistrarUsuario
ÇÇ 
registrarUsuario
ÇÇ -
=
ÇÇ. /
new
ÇÇ0 3
RegistrarUsuario
ÇÇ4 D
(
ÇÇD E
)
ÇÇE F
;
ÇÇF G
this
ÉÉ 
.
ÉÉ 
NavigationService
ÉÉ "
.
ÉÉ" #
Navigate
ÉÉ# +
(
ÉÉ+ ,
registrarUsuario
ÉÉ, <
)
ÉÉ< =
;
ÉÉ= >
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
IrASubirArchivo
ÜÜ $
(
ÜÜ$ %
object
ÜÜ% +
sender
ÜÜ, 2
,
ÜÜ2 3
RoutedEventArgs
ÜÜ4 C
e
ÜÜD E
)
ÜÜE F
{
áá 	
fra_Menu
àà 
.
àà 
Navigate
àà 
(
àà 
new
àà !
SubirDocumento
àà" 0
(
àà0 1
fra_Menu
àà1 9
)
àà9 :
)
àà: ;
;
àà; <
BusquedaSingleton
ââ 
.
ââ 
Instance
ââ &
.
ââ& '
LimpiarBusqueda
ââ' 6
(
ââ6 7
)
ââ7 8
;
ââ8 9
}
ää 	
private
åå 
void
åå 
IrAMisDocumentos
åå %
(
åå% &
object
åå& ,
sender
åå- 3
,
åå3 4
RoutedEventArgs
åå5 D
e
ååE F
)
ååF G
{
çç 	
fra_Menu
éé 
.
éé 
Navigate
éé 
(
éé 
new
éé !
MisDocumentos
éé" /
(
éé/ 0
fra_Menu
éé0 8
)
éé8 9
)
éé9 :
;
éé: ;
BusquedaSingleton
èè 
.
èè 
Instance
èè &
.
èè& '
LimpiarBusqueda
èè' 6
(
èè6 7
)
èè7 8
;
èè8 9
}
êê 	
private
ìì 
void
ìì 
IrALaCuenta
ìì  
(
ìì  !
object
ìì! '
sender
ìì( .
,
ìì. /"
MouseButtonEventArgs
ìì0 D
e
ììE F
)
ììF G
{
îî 	
fra_Menu
ïï 
.
ïï 
Navigate
ïï 
(
ïï 
new
ïï !
Perfil
ïï" (
(
ïï( )
fra_Menu
ïï) 1
)
ïï1 2
)
ïï2 3
;
ïï3 4
BusquedaSingleton
ññ 
.
ññ 
Instance
ññ &
.
ññ& '
LimpiarBusqueda
ññ' 6
(
ññ6 7
)
ññ7 8
;
ññ8 9
}
óó 	
private
ôô 
void
ôô 
IrALaComunidad
ôô #
(
ôô# $
object
ôô$ *
sender
ôô+ 1
,
ôô1 2"
MouseButtonEventArgs
ôô3 G
e
ôôH I
)
ôôI J
{
öö 	
fra_Menu
õõ 
.
õõ 
Navigate
õõ 
(
õõ 
new
õõ !
BuscarPerfil
õõ" .
(
õõ. /
fra_Menu
õõ/ 7
)
õõ7 8
)
õõ8 9
;
õõ9 :
BusquedaSingleton
úú 
.
úú 
Instance
úú &
.
úú& '
LimpiarBusqueda
úú' 6
(
úú6 7
)
úú7 8
;
úú8 9
}
ùù 	
private
ûû 
void
ûû 
IrATusAmigos
ûû !
(
ûû! "
object
ûû" (
sender
ûû) /
,
ûû/ 0"
MouseButtonEventArgs
ûû1 E
e
ûûF G
)
ûûG H
{
üü 	
fra_Menu
†† 
.
†† 
Navigate
†† 
(
†† 
new
†† !
Amigos
††" (
(
††( )
)
††) *
)
††* +
;
††+ ,
BusquedaSingleton
°° 
.
°° 
Instance
°° &
.
°°& '
LimpiarBusqueda
°°' 6
(
°°6 7
)
°°7 8
;
°°8 9
}
¢¢ 	
private
•• 
void
•• &
MostrarPantallaPrincipal
•• -
(
••- .
object
••. 4
sender
••5 ;
,
••; <"
MouseButtonEventArgs
••= Q
e
••R S
)
••S T
{
¶¶ 	
fra_Menu
ßß 
.
ßß 
Source
ßß 
=
ßß 
new
ßß !
System
ßß" (
.
ßß( )
Uri
ßß) ,
(
ßß, -
$str
ßß- ;
,
ßß; <
System
ßß= C
.
ßßC D
UriKind
ßßD K
.
ßßK L
Relative
ßßL T
)
ßßT U
;
ßßU V
BusquedaSingleton
®® 
.
®® 
Instance
®® &
.
®®& '
LimpiarBusqueda
®®' 6
(
®®6 7
)
®®7 8
;
®®8 9
}
©© 	
private
´´ 
void
´´ 
BuscarRecurso
´´ "
(
´´" #
object
´´# )
sender
´´* 0
,
´´0 1"
MouseButtonEventArgs
´´2 F
e
´´G H
)
´´H I
{
¨¨ 	
string
≠≠ 
texto
≠≠ 
=
≠≠  
txtb_BuscarTextBox
≠≠ -
.
≠≠- .
Text
≠≠. 2
.
≠≠2 3
Trim
≠≠3 7
(
≠≠7 8
)
≠≠8 9
;
≠≠9 :
if
ØØ 
(
ØØ 
string
ØØ 
.
ØØ  
IsNullOrWhiteSpace
ØØ )
(
ØØ) *
texto
ØØ* /
)
ØØ/ 0
||
ØØ1 3
texto
ØØ4 9
==
ØØ: <
$str
ØØ= E
)
ØØE F
{
∞∞ 
return
±± 
;
±± 
}
≤≤ 
string
¥¥ 
tipoBusqueda
¥¥ 
=
¥¥  !
$str
¥¥" -
;
¥¥- .
int
µµ 
id
µµ 
=
µµ 
$num
µµ 
;
µµ 
BusquedaSingleton
∏∏ 
.
∏∏ 
Instance
∏∏ &
.
∏∏& ' 
EstablecerBusqueda
∏∏' 9
(
∏∏9 :
tipoBusqueda
∏∏: F
,
∏∏F G
texto
∏∏H M
,
∏∏M N
id
∏∏O Q
)
∏∏Q R
;
∏∏R S
fra_Menu
∫∫ 
.
∫∫ 
Navigate
∫∫ 
(
∫∫ 
new
∫∫ ! 
ExplorarDocumentos
∫∫" 4
(
∫∫4 5
texto
∫∫5 :
,
∫∫: ;
tipoBusqueda
∫∫< H
,
∫∫H I
id
∫∫J L
)
∫∫L M
)
∫∫M N
;
∫∫N O
}
ªª 	
private
ææ 
void
ææ !
Categoria_MouseDown
ææ (
(
ææ( )
object
ææ) /
sender
ææ0 6
,
ææ6 7"
MouseButtonEventArgs
ææ8 L
e
ææM N
)
ææN O
{
øø 	
if
¿¿ 
(
¿¿ 
sender
¿¿ 
is
¿¿ 
	TextBlock
¿¿ #
tb
¿¿$ &
&&
¿¿' )
int
¿¿* -
.
¿¿- .
TryParse
¿¿. 6
(
¿¿6 7
tb
¿¿7 9
.
¿¿9 :
Tag
¿¿: =
?
¿¿= >
.
¿¿> ?
ToString
¿¿? G
(
¿¿G H
)
¿¿H I
,
¿¿I J
out
¿¿K N
int
¿¿O R
categoriaId
¿¿S ^
)
¿¿^ _
)
¿¿_ `
{
¡¡ 
string
¬¬ 
texto
¬¬ 
=
¬¬ 
$str
¬¬ !
;
¬¬! "
string
√√ 
tipoBusqueda
√√ #
=
√√$ %
$str
√√& 1
;
√√1 2
int
ƒƒ 
id
ƒƒ 
=
ƒƒ 
categoriaId
ƒƒ $
;
ƒƒ$ %
BusquedaSingleton
≈≈ !
.
≈≈! "
Instance
≈≈" *
.
≈≈* + 
EstablecerBusqueda
≈≈+ =
(
≈≈= >
tipoBusqueda
≈≈> J
,
≈≈J K
texto
≈≈L Q
,
≈≈Q R
id
≈≈S U
)
≈≈U V
;
≈≈V W
fra_Menu
∆∆ 
.
∆∆ 
Navigate
∆∆ !
(
∆∆! "
new
∆∆" % 
ExplorarDocumentos
∆∆& 8
(
∆∆8 9
texto
∆∆9 >
,
∆∆> ?
tipoBusqueda
∆∆@ L
,
∆∆L M
id
∆∆N P
)
∆∆P Q
)
∆∆Q R
;
∆∆R S
}
…… 
}
   	
private
ÃÃ 
void
ÃÃ 
Rama_MouseDown
ÃÃ #
(
ÃÃ# $
object
ÃÃ$ *
sender
ÃÃ+ 1
,
ÃÃ1 2"
MouseButtonEventArgs
ÃÃ3 G
e
ÃÃH I
)
ÃÃI J
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 
sender
ŒŒ 
is
ŒŒ 
	TextBlock
ŒŒ #
tb
ŒŒ$ &
&&
ŒŒ' )
int
ŒŒ* -
.
ŒŒ- .
TryParse
ŒŒ. 6
(
ŒŒ6 7
tb
ŒŒ7 9
.
ŒŒ9 :
Tag
ŒŒ: =
?
ŒŒ= >
.
ŒŒ> ?
ToString
ŒŒ? G
(
ŒŒG H
)
ŒŒH I
,
ŒŒI J
out
ŒŒK N
int
ŒŒO R
ramaId
ŒŒS Y
)
ŒŒY Z
)
ŒŒZ [
{
œœ 
string
–– 
texto
–– 
=
–– 
$str
–– !
;
––! "
string
—— 
tipoBusqueda
—— #
=
——$ %
$str
——& ,
;
——, -
int
““ 
id
““ 
=
““ 
ramaId
““ 
;
““  
BusquedaSingleton
”” !
.
””! "
Instance
””" *
.
””* + 
EstablecerBusqueda
””+ =
(
””= >
tipoBusqueda
””> J
,
””J K
texto
””L Q
,
””Q R
id
””S U
)
””U V
;
””V W
fra_Menu
‘‘ 
.
‘‘ 
Navigate
‘‘ !
(
‘‘! "
new
‘‘" % 
ExplorarDocumentos
‘‘& 8
(
‘‘8 9
texto
‘‘9 >
,
‘‘> ?
tipoBusqueda
‘‘@ L
,
‘‘L M
id
‘‘N P
)
‘‘P Q
)
‘‘Q R
;
‘‘R S
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ &
NivelEducativo_MouseDown
ŸŸ -
(
ŸŸ- .
object
ŸŸ. 4
sender
ŸŸ5 ;
,
ŸŸ; <"
MouseButtonEventArgs
ŸŸ= Q
e
ŸŸR S
)
ŸŸS T
{
⁄⁄ 	
if
€€ 
(
€€ 
sender
€€ 
is
€€ 
	TextBlock
€€ #
tb
€€$ &
)
€€& '
{
‹‹ 
string
ﬁﬁ 

nombreRama
ﬁﬁ !
=
ﬁﬁ" #
tb
ﬁﬁ$ &
.
ﬁﬁ& '
Text
ﬁﬁ' +
.
ﬁﬁ+ ,
Trim
ﬁﬁ, 0
(
ﬁﬁ0 1
)
ﬁﬁ1 2
;
ﬁﬁ2 3
string
ﬂﬂ 
tipoBusqueda
ﬂﬂ #
=
ﬂﬂ$ %
$str
ﬂﬂ& 6
;
ﬂﬂ6 7
int
‡‡ 
id
‡‡ 
=
‡‡ 
$num
‡‡ 
;
‡‡ 
BusquedaSingleton
·· !
.
··! "
Instance
··" *
.
··* + 
EstablecerBusqueda
··+ =
(
··= >
tipoBusqueda
··> J
,
··J K

nombreRama
··L V
,
··V W
id
··X Z
)
··Z [
;
··[ \
fra_Menu
‚‚ 
.
‚‚ 
Navigate
‚‚ !
(
‚‚! "
new
‚‚" % 
ExplorarDocumentos
‚‚& 8
(
‚‚8 9

nombreRama
‚‚9 C
,
‚‚C D
tipoBusqueda
‚‚E Q
,
‚‚Q R
id
‚‚S U
)
‚‚U V
)
‚‚V W
;
‚‚W X
}
‰‰ 
}
ÂÂ 	
private
ÁÁ 
void
ÁÁ #
Popularidad_MouseDown
ÁÁ *
(
ÁÁ* +
object
ÁÁ+ 1
sender
ÁÁ2 8
,
ÁÁ8 9"
MouseButtonEventArgs
ÁÁ: N
e
ÁÁO P
)
ÁÁP Q
{
ËË 	
if
ÈÈ 
(
ÈÈ 
sender
ÈÈ 
is
ÈÈ 
	TextBlock
ÈÈ #
tb
ÈÈ$ &
)
ÈÈ& '
{
ÍÍ 
string
ÏÏ 

nombreRama
ÏÏ !
=
ÏÏ" #
tb
ÏÏ$ &
.
ÏÏ& '
Text
ÏÏ' +
.
ÏÏ+ ,
Trim
ÏÏ, 0
(
ÏÏ0 1
)
ÏÏ1 2
;
ÏÏ2 3
string
ÌÌ 
tipoBusqueda
ÌÌ #
=
ÌÌ$ %
$str
ÌÌ& 3
;
ÌÌ3 4
int
ÓÓ 
id
ÓÓ 
=
ÓÓ 
$num
ÓÓ 
;
ÓÓ 
BusquedaSingleton
ÔÔ !
.
ÔÔ! "
Instance
ÔÔ" *
.
ÔÔ* + 
EstablecerBusqueda
ÔÔ+ =
(
ÔÔ= >
tipoBusqueda
ÔÔ> J
,
ÔÔJ K

nombreRama
ÔÔL V
,
ÔÔV W
id
ÔÔX Z
)
ÔÔZ [
;
ÔÔ[ \
fra_Menu
 
.
 
Navigate
 !
(
! "
new
" % 
ExplorarDocumentos
& 8
(
8 9

nombreRama
9 C
,
C D
tipoBusqueda
E Q
,
Q R
id
S U
)
U V
)
V W
;
W X
}
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
async
ˆˆ 
void
ˆˆ 
CerrarSesion
ˆˆ '
(
ˆˆ' (
object
ˆˆ( .
sender
ˆˆ/ 5
,
ˆˆ5 6"
MouseButtonEventArgs
ˆˆ7 K
e
ˆˆL M
)
ˆˆM N
{
˜˜ 	
await
¯¯ 
App
¯¯ 
.
¯¯ "
SocketNotificaciones
¯¯ *
.
¯¯* +
DesconectarAsync
¯¯+ ;
(
¯¯; <
PerfilSingleton
¯¯< K
.
¯¯K L
Instance
¯¯L T
.
¯¯T U!
IdUsuarioRegistrado
¯¯U h
.
¯¯h i
ToString
¯¯i q
(
¯¯q r
)
¯¯r s
)
¯¯s t
;
¯¯t u
PerfilSingleton
˘˘ 
.
˘˘ 
Instance
˘˘ $
.
˘˘$ %
Reset
˘˘% *
(
˘˘* +
)
˘˘+ ,
;
˘˘, -
Login
˚˚ 
login
˚˚ 
=
˚˚ 
new
˚˚ 
Login
˚˚ #
(
˚˚# $
)
˚˚$ %
;
˚˚% &
this
¸¸ 
.
¸¸ 
NavigationService
¸¸ "
.
¸¸" #
Navigate
¸¸# +
(
¸¸+ ,
login
¸¸, 1
)
¸¸1 2
;
¸¸2 3
}
˝˝ 	
public
ˇˇ 
ImageSource
ˇˇ "
ConvertirFotoABitmap
ˇˇ /
(
ˇˇ/ 0
byte
ˇˇ0 4
[
ˇˇ4 5
]
ˇˇ5 6
binario
ˇˇ7 >
)
ˇˇ> ?
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
binario
ÅÅ 
==
ÅÅ 
null
ÅÅ 
||
ÅÅ  "
binario
ÅÅ# *
.
ÅÅ* +
Length
ÅÅ+ 1
==
ÅÅ2 4
$num
ÅÅ5 6
)
ÅÅ6 7
return
ÅÅ8 >
null
ÅÅ? C
;
ÅÅC D
using
ÉÉ 
var
ÉÉ 
ms
ÉÉ 
=
ÉÉ 
new
ÉÉ 
MemoryStream
ÉÉ +
(
ÉÉ+ ,
binario
ÉÉ, 3
)
ÉÉ3 4
;
ÉÉ4 5
var
ÑÑ 
bitmap
ÑÑ 
=
ÑÑ 
new
ÑÑ 
BitmapImage
ÑÑ (
(
ÑÑ( )
)
ÑÑ) *
;
ÑÑ* +
bitmap
ÖÖ 
.
ÖÖ 
	BeginInit
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
bitmap
ÜÜ 
.
ÜÜ 
CacheOption
ÜÜ 
=
ÜÜ  
BitmapCacheOption
ÜÜ! 2
.
ÜÜ2 3
OnLoad
ÜÜ3 9
;
ÜÜ9 :
bitmap
áá 
.
áá 
StreamSource
áá 
=
áá  !
ms
áá" $
;
áá$ %
bitmap
àà 
.
àà 
EndInit
àà 
(
àà 
)
àà 
;
àà 
return
ââ 
bitmap
ââ 
;
ââ 
}
ää 	
}
çç 
}éé ê
óC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Vistas\Menus\MenuAdministrador.xaml.cs
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
}22 »@
àC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\Validador.cs
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
_regexContrase√±a& 6
=7 8
new9 <
Regex= B
(B C
$str	C ö
,
ö õ
RegexOptions
ú ®
.
® ©
None
© ≠
,
≠ Æ
TimeSpan
Ø ∑
.
∑ ∏
FromMilliseconds
∏ »
(
» …
$num
… Õ
)
Õ Œ
)
Œ œ
;
œ –
private 
static 
readonly 
Regex  %
_regexCorreo& 2
=3 4
new5 8
Regex9 >
(> ?
$str	? ™
,
™ ´
RegexOptions
¨ ∏
.
∏ π
None
π Ω
,
Ω æ
TimeSpan
ø «
.
« »
FromMilliseconds
» ÿ
(
ÿ Ÿ
$num
Ÿ ›
)
› ﬁ
)
ﬁ ﬂ
;
ﬂ ‡
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
ValidarContrase√±a ,
(, -
string- 3
contrase√±a4 >
)> ?
{ 	
bool   
esValido   
=   
false   !
;  ! "
string!! 
contrase√±aLimpia!! #
=!!$ %
Regex!!& +
.!!+ ,
Replace!!, 3
(!!3 4
contrase√±a!!4 >
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
FromMilliseconds	!!p Ä
(
!!Ä Å
$num
!!Å Ñ
)
!!Ñ Ö
)
!!Ö Ü
;
!!Ü á
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrWhiteSpace"" *
(""* +
contrase√±aLimpia""+ ;
)""; <
&&""= ?#
ValidarExpresionRegular""@ W
(""W X
contrase√±aLimpia""X h
,""h i
_regexContrase√±a""j z
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
_regexCorreo	<< ã
)
<<ã å
)
<<å ç
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
FromMilliseconds	IIs É
(
IIÉ Ñ
$num
IIÑ á
)
IIá à
)
IIà â
;
IIâ ä
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
}[[  
åC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\UsuarioPerfil.cs
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
} √
èC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\PublicacionVista.cs
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
} π5
éC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\PerfilSingleton.cs
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
}OO ∫
åC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\LoggerManager.cs
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
}66 ∏
ÖC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\Hasher.cs
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
}!! ÷
éC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\EscalaConverter.cs
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
NotImplementedException	u å
(
å ç
)
ç é
;
é è
} 
} •
ëC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Utilidades\BusquedaSinglenton.cs
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
}&& Ô„
åC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\UsuarioServicio.cs
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
$str	))p Ç
)
))Ç É
;
))É Ñ
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
ÄÄ 
(
ÄÄ !
httpResponseMessage
ÄÄ +
!=
ÄÄ, .
null
ÄÄ/ 3
)
ÄÄ3 4
{
ÅÅ 
string
ÇÇ 
json
ÇÇ #
=
ÇÇ$ %
await
ÇÇ& +!
httpResponseMessage
ÇÇ, ?
.
ÇÇ? @
Content
ÇÇ@ G
.
ÇÇG H
ReadAsStringAsync
ÇÇH Y
(
ÇÇY Z
)
ÇÇZ [
;
ÇÇ[ \
	respuesta
ÉÉ !
=
ÉÉ" #
JsonConvert
ÉÉ$ /
.
ÉÉ/ 0
DeserializeObject
ÉÉ0 A
<
ÉÉA B
	Respuesta
ÉÉB K
>
ÉÉK L
(
ÉÉL M
json
ÉÉM Q
)
ÉÉQ R
;
ÉÉR S
	respuesta
ÑÑ !
.
ÑÑ! "
Codigo
ÑÑ" (
=
ÑÑ) *
(
ÑÑ+ ,
int
ÑÑ, /
)
ÑÑ/ 0!
httpResponseMessage
ÑÑ0 C
.
ÑÑC D

StatusCode
ÑÑD N
;
ÑÑN O
}
ÖÖ 
else
ÜÜ 
{
áá 
	respuesta
àà !
.
àà! "
Codigo
àà" (
=
àà) *
(
àà+ ,
int
àà, /
)
àà/ 0
HttpStatusCode
àà0 >
.
àà> ?!
InternalServerError
àà? R
;
ààR S
	respuesta
ââ !
.
ââ! "
Mensaje
ââ" )
=
ââ* +
$str
ââ, S
;
ââS T
}
ää 
}
ãã 
catch
åå 
(
åå "
HttpRequestException
åå +"
httpRequestException
åå, @
)
åå@ A
{
çç 
	respuesta
éé 
.
éé 
Codigo
éé $
=
éé% &
(
éé' (
int
éé( +
)
éé+ ,
HttpStatusCode
éé, :
.
éé: ;!
InternalServerError
éé; N
;
ééN O
	respuesta
èè 
.
èè 
Mensaje
èè %
=
èè& '
$"
èè( *
$str
èè* 8
{
èè8 9"
httpRequestException
èè9 M
.
èèM N
Message
èèN U
}
èèU V
"
èèV W
;
èèW X
_logger
êê 
.
êê 
LogFatal
êê $
(
êê$ %"
httpRequestException
êê% 9
)
êê9 :
;
êê: ;
}
ëë 
catch
íí 
(
íí 
JsonException
íí $
jsonException
íí% 2
)
íí2 3
{
ìì 
	respuesta
îî 
.
îî 
Codigo
îî $
=
îî% &
(
îî' (
int
îî( +
)
îî+ ,
HttpStatusCode
îî, :
.
îî: ;!
InternalServerError
îî; N
;
îîN O
	respuesta
ïï 
.
ïï 
Mensaje
ïï %
=
ïï& '
$"
ïï( *
$str
ïï* O
{
ïïO P
jsonException
ïïP ]
.
ïï] ^
Message
ïï^ e
}
ïïe f
"
ïïf g
;
ïïg h
_logger
ññ 
.
ññ 
LogFatal
ññ $
(
ññ$ %
jsonException
ññ% 2
)
ññ2 3
;
ññ3 4
}
óó 
catch
òò 
(
òò 
	Exception
òò  
ex
òò! #
)
òò# $
{
ôô 
	respuesta
öö 
.
öö 
Codigo
öö $
=
öö% &
(
öö' (
int
öö( +
)
öö+ ,
HttpStatusCode
öö, :
.
öö: ;!
InternalServerError
öö; N
;
ööN O
	respuesta
õõ 
.
õõ 
Mensaje
õõ %
=
õõ& '
$"
õõ( *
$str
õõ* <
{
õõ< =
ex
õõ= ?
.
õõ? @
Message
õõ@ G
}
õõG H
"
õõH I
;
õõI J
_logger
úú 
.
úú 
LogFatal
úú $
(
úú$ %
ex
úú% '
)
úú' (
;
úú( )
}
ùù 
}
ûû 
return
üü 
	respuesta
üü 
;
üü 
}
†† 	
public
¢¢ 
static
¢¢ 
async
¢¢ 
Task
¢¢  
<
¢¢  !
	Respuesta
¢¢! *
>
¢¢* +4
&VerificarCodigoYCambiarContrasenaAsync
¢¢, R
(
¢¢R S'
SolicitudCambioContrasena
¢¢S l
datos
¢¢m r
)
¢¢r s
{
££ 	
	Respuesta
§§ 
	respuesta
§§ 
=
§§  !
new
§§" %
(
§§% &
)
§§& '
;
§§' (
using
•• 
(
•• 
var
•• 

httpClient
•• !
=
••" #
new
••$ '

HttpClient
••( 2
(
••2 3
)
••3 4
)
••4 5
{
¶¶ 
try
ßß 
{
®® 
var
©© 
	contenido
©© !
=
©©" #
new
©©$ '
StringContent
©©( 5
(
©©5 6
JsonConvert
©©6 A
.
©©A B
SerializeObject
©©B Q
(
©©Q R
datos
©©R W
)
©©W X
,
©©X Y
Encoding
©©Z b
.
©©b c
UTF8
©©c g
,
©©g h
$str
©©i {
)
©©{ |
;
©©| }
var
™™ 
httpResponse
™™ $
=
™™% &
await
™™' ,

httpClient
™™- 7
.
™™7 8
	PostAsync
™™8 A
(
™™A B
$"
™™B D
{
™™D E
	Resources
™™E N
.
™™N O
BASE_URL
™™O W
}
™™W X
$str™™X Ä
"™™Ä Å
,™™Å Ç
	contenido™™É å
)™™å ç
;™™ç é
if
¨¨ 
(
¨¨ 
httpResponse
¨¨ $
!=
¨¨% '
null
¨¨( ,
)
¨¨, -
{
≠≠ 
string
ÆÆ 
json
ÆÆ #
=
ÆÆ$ %
await
ÆÆ& +
httpResponse
ÆÆ, 8
.
ÆÆ8 9
Content
ÆÆ9 @
.
ÆÆ@ A
ReadAsStringAsync
ÆÆA R
(
ÆÆR S
)
ÆÆS T
;
ÆÆT U
	respuesta
ØØ !
=
ØØ" #
JsonConvert
ØØ$ /
.
ØØ/ 0
DeserializeObject
ØØ0 A
<
ØØA B
	Respuesta
ØØB K
>
ØØK L
(
ØØL M
json
ØØM Q
)
ØØQ R
;
ØØR S
	respuesta
∞∞ !
.
∞∞! "
Codigo
∞∞" (
=
∞∞) *
(
∞∞+ ,
int
∞∞, /
)
∞∞/ 0
httpResponse
∞∞0 <
.
∞∞< =

StatusCode
∞∞= G
;
∞∞G H
}
±± 
else
≤≤ 
{
≥≥ 
	respuesta
¥¥ !
.
¥¥! "
Codigo
¥¥" (
=
¥¥) *
(
¥¥+ ,
int
¥¥, /
)
¥¥/ 0
HttpStatusCode
¥¥0 >
.
¥¥> ?!
InternalServerError
¥¥? R
;
¥¥R S
	respuesta
µµ !
.
µµ! "
Mensaje
µµ" )
=
µµ* +
$str
µµ, S
;
µµS T
}
∂∂ 
}
∑∑ 
catch
∏∏ 
(
∏∏ "
HttpRequestException
∏∏ +"
httpRequestException
∏∏, @
)
∏∏@ A
{
ππ 
	respuesta
∫∫ 
.
∫∫ 
Codigo
∫∫ $
=
∫∫% &
(
∫∫' (
int
∫∫( +
)
∫∫+ ,
HttpStatusCode
∫∫, :
.
∫∫: ;!
InternalServerError
∫∫; N
;
∫∫N O
	respuesta
ªª 
.
ªª 
Mensaje
ªª %
=
ªª& '
$"
ªª( *
$str
ªª* 8
{
ªª8 9"
httpRequestException
ªª9 M
.
ªªM N
Message
ªªN U
}
ªªU V
"
ªªV W
;
ªªW X
_logger
ºº 
.
ºº 
LogFatal
ºº $
(
ºº$ %"
httpRequestException
ºº% 9
)
ºº9 :
;
ºº: ;
}
ΩΩ 
catch
ææ 
(
ææ 
JsonException
ææ $
jsonException
ææ% 2
)
ææ2 3
{
øø 
	respuesta
¿¿ 
.
¿¿ 
Codigo
¿¿ $
=
¿¿% &
(
¿¿' (
int
¿¿( +
)
¿¿+ ,
HttpStatusCode
¿¿, :
.
¿¿: ;!
InternalServerError
¿¿; N
;
¿¿N O
	respuesta
¡¡ 
.
¡¡ 
Mensaje
¡¡ %
=
¡¡& '
$"
¡¡( *
$str
¡¡* O
{
¡¡O P
jsonException
¡¡P ]
.
¡¡] ^
Message
¡¡^ e
}
¡¡e f
"
¡¡f g
;
¡¡g h
_logger
¬¬ 
.
¬¬ 
LogFatal
¬¬ $
(
¬¬$ %
jsonException
¬¬% 2
)
¬¬2 3
;
¬¬3 4
}
√√ 
catch
ƒƒ 
(
ƒƒ 
	Exception
ƒƒ  
ex
ƒƒ! #
)
ƒƒ# $
{
≈≈ 
	respuesta
∆∆ 
.
∆∆ 
Codigo
∆∆ $
=
∆∆% &
(
∆∆' (
int
∆∆( +
)
∆∆+ ,
HttpStatusCode
∆∆, :
.
∆∆: ;!
InternalServerError
∆∆; N
;
∆∆N O
	respuesta
«« 
.
«« 
Mensaje
«« %
=
««& '
$"
««( *
$str
««* <
{
««< =
ex
««= ?
.
««? @
Message
««@ G
}
««G H
"
««H I
;
««I J
_logger
»» 
.
»» 
LogFatal
»» $
(
»»$ %
ex
»»% '
)
»»' (
;
»»( )
}
…… 
}
   
return
ÀÀ 
	respuesta
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
public
ŒŒ 
static
ŒŒ 
async
ŒŒ 
Task
ŒŒ  
<
ŒŒ  !
PerfilPropio
ŒŒ! -
?
ŒŒ- .
>
ŒŒ. / 
ObtenerPerfilAsync
ŒŒ0 B
(
ŒŒB C
string
ŒŒC I
token
ŒŒJ O
)
ŒŒO P
{
œœ 	
PerfilPropio
–– 
?
–– 
	respuesta
–– #
=
––$ %
new
––& )
(
––) *
)
––* +
;
––+ ,
using
—— 
(
—— 
var
—— 

httpClient
—— !
=
——" #
new
——$ '

HttpClient
——( 2
(
——2 3
)
——3 4
)
——4 5
{
““ 
try
”” 
{
‘‘ 

httpClient
’’ 
.
’’ #
DefaultRequestHeaders
’’ 4
.
’’4 5
Authorization
’’5 B
=
’’C D
new
’’E H
System
’’I O
.
’’O P
Net
’’P S
.
’’S T
Http
’’T X
.
’’X Y
Headers
’’Y `
.
’’` a'
AuthenticationHeaderValue
’’a z
(
’’z {
$str’’{ É
,’’É Ñ
token’’Ö ä
)’’ä ã
;’’ã å
var
◊◊ 
httpResponse
◊◊ $
=
◊◊% &
await
◊◊' ,

httpClient
◊◊- 7
.
◊◊7 8
GetAsync
◊◊8 @
(
◊◊@ A
$"
◊◊A C
{
◊◊C D
	Resources
◊◊D M
.
◊◊M N
BASE_URL
◊◊N V
}
◊◊V W
$str
◊◊W `
"
◊◊` a
)
◊◊a b
;
◊◊b c
if
ŸŸ 
(
ŸŸ 
httpResponse
ŸŸ $
!=
ŸŸ% '
null
ŸŸ( ,
)
ŸŸ, -
{
⁄⁄ 
string
€€ 
json
€€ #
=
€€$ %
await
€€& +
httpResponse
€€, 8
.
€€8 9
Content
€€9 @
.
€€@ A
ReadAsStringAsync
€€A R
(
€€R S
)
€€S T
;
€€T U
	respuesta
‹‹ !
=
‹‹" #
JsonConvert
‹‹$ /
.
‹‹/ 0
DeserializeObject
‹‹0 A
<
‹‹A B
PerfilPropio
‹‹B N
>
‹‹N O
(
‹‹O P
json
‹‹P T
)
‹‹T U
;
‹‹U V
	respuesta
›› !
.
››! "
Codigo
››" (
=
››) *
(
››+ ,
int
››, /
)
››/ 0
httpResponse
››0 <
.
››< =

StatusCode
››= G
;
››G H
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
	respuesta
·· !
=
··" #
new
··$ '
PerfilPropio
··( 4
{
‚‚ 
Codigo
„„ "
=
„„# $
(
„„% &
int
„„& )
)
„„) *
HttpStatusCode
„„* 8
.
„„8 9!
InternalServerError
„„9 L
,
„„L M
Mensaje
‰‰ #
=
‰‰$ %
$str
‰‰& L
}
ÂÂ 
;
ÂÂ 
}
ÊÊ 
}
ÁÁ 
catch
ËË 
(
ËË "
HttpRequestException
ËË +"
httpRequestException
ËË, @
)
ËË@ A
{
ÈÈ 
	respuesta
ÍÍ 
.
ÍÍ 
Codigo
ÍÍ $
=
ÍÍ% &
(
ÍÍ' (
int
ÍÍ( +
)
ÍÍ+ ,
HttpStatusCode
ÍÍ, :
.
ÍÍ: ;!
InternalServerError
ÍÍ; N
;
ÍÍN O
	respuesta
ÎÎ 
.
ÎÎ 
Mensaje
ÎÎ %
=
ÎÎ& '
$"
ÎÎ( *
$str
ÎÎ* 8
{
ÎÎ8 9"
httpRequestException
ÎÎ9 M
.
ÎÎM N
Message
ÎÎN U
}
ÎÎU V
"
ÎÎV W
;
ÎÎW X
_logger
ÏÏ 
.
ÏÏ 
LogFatal
ÏÏ $
(
ÏÏ$ %"
httpRequestException
ÏÏ% 9
)
ÏÏ9 :
;
ÏÏ: ;
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ 
JsonException
ÓÓ $
jsonException
ÓÓ% 2
)
ÓÓ2 3
{
ÔÔ 
	respuesta
 
.
 
Codigo
 $
=
% &
(
' (
int
( +
)
+ ,
HttpStatusCode
, :
.
: ;!
InternalServerError
; N
;
N O
	respuesta
ÒÒ 
.
ÒÒ 
Mensaje
ÒÒ %
=
ÒÒ& '
$"
ÒÒ( *
$str
ÒÒ* O
{
ÒÒO P
jsonException
ÒÒP ]
.
ÒÒ] ^
Message
ÒÒ^ e
}
ÒÒe f
"
ÒÒf g
;
ÒÒg h
_logger
ÚÚ 
.
ÚÚ 
LogFatal
ÚÚ $
(
ÚÚ$ %
jsonException
ÚÚ% 2
)
ÚÚ2 3
;
ÚÚ3 4
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
	Exception
ÙÙ  
ex
ÙÙ! #
)
ÙÙ# $
{
ıı 
	respuesta
ˆˆ 
.
ˆˆ 
Codigo
ˆˆ $
=
ˆˆ% &
(
ˆˆ' (
int
ˆˆ( +
)
ˆˆ+ ,
HttpStatusCode
ˆˆ, :
.
ˆˆ: ;!
InternalServerError
ˆˆ; N
;
ˆˆN O
	respuesta
˜˜ 
.
˜˜ 
Mensaje
˜˜ %
=
˜˜& '
$"
˜˜( *
$str
˜˜* <
{
˜˜< =
ex
˜˜= ?
.
˜˜? @
Message
˜˜@ G
}
˜˜G H
"
˜˜H I
;
˜˜I J
_logger
¯¯ 
.
¯¯ 
LogFatal
¯¯ $
(
¯¯$ %
ex
¯¯% '
)
¯¯' (
;
¯¯( )
}
˘˘ 
}
˙˙ 
return
¸¸ 
	respuesta
¸¸ 
;
¸¸ 
}
˝˝ 	
public
ˇˇ 
static
ˇˇ 
async
ˇˇ 
Task
ˇˇ  
<
ˇˇ  !
	Respuesta
ˇˇ! *
>
ˇˇ* + 
BanearUsuarioAsync
ˇˇ, >
(
ˇˇ> ?
string
ˇˇ? E
token
ˇˇF K
,
ˇˇK L
int
ˇˇM P!
idUsuarioRegistrado
ˇˇQ d
)
ˇˇd e
{
ÄÄ 	
var
ÅÅ 
respuestaFinal
ÅÅ 
=
ÅÅ  
new
ÅÅ! $
	Respuesta
ÅÅ% .
(
ÅÅ. /
)
ÅÅ/ 0
;
ÅÅ0 1
using
ÉÉ 
(
ÉÉ 
var
ÉÉ 

httpClient
ÉÉ !
=
ÉÉ" #
new
ÉÉ$ '

HttpClient
ÉÉ( 2
(
ÉÉ2 3
)
ÉÉ3 4
)
ÉÉ4 5
{
ÑÑ 
try
ÖÖ 
{
ÜÜ 

httpClient
áá 
.
áá #
DefaultRequestHeaders
áá 4
.
áá4 5
Authorization
áá5 B
=
ááC D
new
ááE H'
AuthenticationHeaderValue
ááI b
(
ááb c
$str
áác k
,
áák l
token
áám r
)
áár s
;
áás t
var
ââ 
	solicitud
ââ !
=
ââ" #
new
ââ$ '
SolicitudBaneo
ââ( 6
{
ää !
IdUsuarioRegistrado
ãã +
=
ãã, -!
idUsuarioRegistrado
ãã. A
}
åå 
;
åå 
var
éé 
	contenido
éé !
=
éé" #
new
éé$ '
StringContent
éé( 5
(
éé5 6
JsonConvert
éé6 A
.
ééA B
SerializeObject
ééB Q
(
ééQ R
	solicitud
ééR [
)
éé[ \
,
éé\ ]
Encoding
éé^ f
.
ééf g
UTF8
éég k
,
éék l
$str
éém 
)éé Ä
;ééÄ Å
var
êê 
httpResponse
êê $
=
êê% &
await
êê' ,

httpClient
êê- 7
.
êê7 8
	PostAsync
êê8 A
(
êêA B
$"
êêB D
{
êêD E
	Resources
êêE N
.
êêN O
BASE_URL
êêO W
}
êêW X
$str
êêX l
"
êêl m
,
êêm n
	contenido
êêo x
)
êêx y
;
êêy z
string
íí 
json
íí 
=
íí  !
await
íí" '
httpResponse
íí( 4
.
íí4 5
Content
íí5 <
.
íí< =
ReadAsStringAsync
íí= N
(
ííN O
)
ííO P
;
ííP Q
if
îî 
(
îî 
!
îî 
httpResponse
îî %
.
îî% &!
IsSuccessStatusCode
îî& 9
)
îî9 :
{
ïï 
respuestaFinal
ññ &
.
ññ& '
	Resultado
ññ' 0
=
ññ1 2
(
ññ3 4
int
ññ4 7
)
ññ7 8
httpResponse
ññ8 D
.
ññD E

StatusCode
ññE O
;
ññO P
respuestaFinal
óó &
.
óó& '
Mensaje
óó' .
=
óó/ 0
$"
óó1 3
$str
óó3 G
{
óóG H
(
óóH I
int
óóI L
)
óóL M
httpResponse
óóM Y
.
óóY Z

StatusCode
óóZ d
}
óód e
$str
óóe f
{
óóf g
httpResponse
óóg s
.
óós t
ReasonPhraseóót Ä
}óóÄ Å
"óóÅ Ç
;óóÇ É
respuestaFinal
òò &
.
òò& '
Error
òò' ,
=
òò- .
true
òò/ 3
;
òò3 4
return
ôô 
respuestaFinal
ôô -
;
ôô- .
}
öö 
var
úú 
respuestaApi
úú $
=
úú% &
JsonConvert
úú' 2
.
úú2 3
DeserializeObject
úú3 D
<
úúD E
	Respuesta
úúE N
>
úúN O
(
úúO P
json
úúP T
)
úúT U
;
úúU V
if
ûû 
(
ûû 
respuestaApi
ûû $
!=
ûû% '
null
ûû( ,
)
ûû, -
{
üü 
respuestaFinal
†† &
.
††& '
	Resultado
††' 0
=
††1 2
respuestaApi
††3 ?
.
††? @
Codigo
††@ F
;
††F G
respuestaFinal
°° &
.
°°& '
Mensaje
°°' .
=
°°/ 0
respuestaApi
°°1 =
.
°°= >
Mensaje
°°> E
;
°°E F
respuestaFinal
¢¢ &
.
¢¢& '
Error
¢¢' ,
=
¢¢- .
respuestaApi
¢¢/ ;
.
¢¢; <
Error
¢¢< A
;
¢¢A B
}
££ 
else
§§ 
{
•• 
respuestaFinal
¶¶ &
.
¶¶& '
	Resultado
¶¶' 0
=
¶¶1 2
(
¶¶3 4
int
¶¶4 7
)
¶¶7 8
HttpStatusCode
¶¶8 F
.
¶¶F G!
InternalServerError
¶¶G Z
;
¶¶Z [
respuestaFinal
ßß &
.
ßß& '
Mensaje
ßß' .
=
ßß/ 0
$str
ßß1 a
;
ßßa b
respuestaFinal
®® &
.
®®& '
Error
®®' ,
=
®®- .
true
®®/ 3
;
®®3 4
}
©© 
}
™™ 
catch
´´ 
(
´´ "
HttpRequestException
´´ +"
httpRequestException
´´, @
)
´´@ A
{
¨¨ 
respuestaFinal
≠≠ "
.
≠≠" #
	Resultado
≠≠# ,
=
≠≠- .
(
≠≠/ 0
int
≠≠0 3
)
≠≠3 4
HttpStatusCode
≠≠4 B
.
≠≠B C!
InternalServerError
≠≠C V
;
≠≠V W
respuestaFinal
ÆÆ "
.
ÆÆ" #
Mensaje
ÆÆ# *
=
ÆÆ+ ,
$"
ÆÆ- /
$str
ÆÆ/ =
{
ÆÆ= >"
httpRequestException
ÆÆ> R
.
ÆÆR S
Message
ÆÆS Z
}
ÆÆZ [
"
ÆÆ[ \
;
ÆÆ\ ]
respuestaFinal
ØØ "
.
ØØ" #
Error
ØØ# (
=
ØØ) *
true
ØØ+ /
;
ØØ/ 0
_logger
∞∞ 
.
∞∞ 
LogFatal
∞∞ $
(
∞∞$ %"
httpRequestException
∞∞% 9
)
∞∞9 :
;
∞∞: ;
}
±± 
catch
≤≤ 
(
≤≤ 
JsonException
≤≤ $
jsonException
≤≤% 2
)
≤≤2 3
{
≥≥ 
respuestaFinal
¥¥ "
.
¥¥" #
	Resultado
¥¥# ,
=
¥¥- .
(
¥¥/ 0
int
¥¥0 3
)
¥¥3 4
HttpStatusCode
¥¥4 B
.
¥¥B C!
InternalServerError
¥¥C V
;
¥¥V W
respuestaFinal
µµ "
.
µµ" #
Mensaje
µµ# *
=
µµ+ ,
$"
µµ- /
$str
µµ/ T
{
µµT U
jsonException
µµU b
.
µµb c
Message
µµc j
}
µµj k
"
µµk l
;
µµl m
respuestaFinal
∂∂ "
.
∂∂" #
Error
∂∂# (
=
∂∂) *
true
∂∂+ /
;
∂∂/ 0
_logger
∑∑ 
.
∑∑ 
LogFatal
∑∑ $
(
∑∑$ %
jsonException
∑∑% 2
)
∑∑2 3
;
∑∑3 4
}
∏∏ 
catch
ππ 
(
ππ 
	Exception
ππ  
ex
ππ! #
)
ππ# $
{
∫∫ 
respuestaFinal
ªª "
.
ªª" #
	Resultado
ªª# ,
=
ªª- .
(
ªª/ 0
int
ªª0 3
)
ªª3 4
HttpStatusCode
ªª4 B
.
ªªB C!
InternalServerError
ªªC V
;
ªªV W
respuestaFinal
ºº "
.
ºº" #
Mensaje
ºº# *
=
ºº+ ,
$"
ºº- /
$str
ºº/ A
{
ººA B
ex
ººB D
.
ººD E
Message
ººE L
}
ººL M
"
ººM N
;
ººN O
respuestaFinal
ΩΩ "
.
ΩΩ" #
Error
ΩΩ# (
=
ΩΩ) *
true
ΩΩ+ /
;
ΩΩ/ 0
_logger
ææ 
.
ææ 
LogFatal
ææ $
(
ææ$ %
ex
ææ% '
)
ææ' (
;
ææ( )
}
øø 
}
¿¿ 
return
¬¬ 
respuestaFinal
¬¬ !
;
¬¬! "
}
√√ 	
public
∆∆ 
static
∆∆ 
async
∆∆ 
Task
∆∆  
<
∆∆  !
	Respuesta
∆∆! *
>
∆∆* +#
ActualizarAvatarAsync
∆∆, A
(
∆∆A B
string
∆∆B H
token
∆∆I N
,
∆∆N O
string
∆∆P V

rutaImagen
∆∆W a
)
∆∆a b
{
«« 	
	Respuesta
»» 
	respuesta
»» 
=
»»  !
new
»»" %
(
»»% &
)
»»& '
;
»»' (
using
…… 
var
…… 

httpClient
……  
=
……! "
new
……# &

HttpClient
……' 1
(
……1 2
)
……2 3
;
……3 4
try
ÀÀ 
{
ÃÃ 

httpClient
ÕÕ 
.
ÕÕ #
DefaultRequestHeaders
ÕÕ 0
.
ÕÕ0 1
Authorization
ÕÕ1 >
=
ÕÕ? @
new
ÕÕA D
System
ÕÕE K
.
ÕÕK L
Net
ÕÕL O
.
ÕÕO P
Http
ÕÕP T
.
ÕÕT U
Headers
ÕÕU \
.
ÕÕ\ ]'
AuthenticationHeaderValue
ÕÕ] v
(
ÕÕv w
$str
ÕÕw 
,ÕÕ Ä
tokenÕÕÅ Ü
)ÕÕÜ á
;ÕÕá à
var
œœ 
payload
œœ 
=
œœ 
new
œœ !
{
–– 
datos
—— 
=
—— 
new
—— 
{
““ 

fotoPerfil
”” "
=
””# $

rutaImagen
””% /
}
‘‘ 
}
’’ 
;
’’ 
var
◊◊ 
	contenido
◊◊ 
=
◊◊ 
new
◊◊  #
StringContent
◊◊$ 1
(
◊◊1 2
JsonConvert
◊◊2 =
.
◊◊= >
SerializeObject
◊◊> M
(
◊◊M N
payload
◊◊N U
)
◊◊U V
,
◊◊V W
Encoding
◊◊X `
.
◊◊` a
UTF8
◊◊a e
,
◊◊e f
$str
◊◊g y
)
◊◊y z
;
◊◊z {
var
ÿÿ 
url
ÿÿ 
=
ÿÿ 
$"
ÿÿ 
{
ÿÿ 
	Resources
ÿÿ &
.
ÿÿ& '
BASE_URL
ÿÿ' /
}
ÿÿ/ 0
$str
ÿÿ0 @
"
ÿÿ@ A
;
ÿÿA B
var
⁄⁄ !
httpResponseMessage
⁄⁄ '
=
⁄⁄( )
await
⁄⁄* /

httpClient
⁄⁄0 :
.
⁄⁄: ;
PutAsync
⁄⁄; C
(
⁄⁄C D
url
⁄⁄D G
,
⁄⁄G H
	contenido
⁄⁄I R
)
⁄⁄R S
;
⁄⁄S T
if
‹‹ 
(
‹‹ !
httpResponseMessage
‹‹ '
!=
‹‹( *
null
‹‹+ /
)
‹‹/ 0
{
›› 
string
ﬁﬁ 
json
ﬁﬁ 
=
ﬁﬁ  !
await
ﬁﬁ" '!
httpResponseMessage
ﬁﬁ( ;
.
ﬁﬁ; <
Content
ﬁﬁ< C
.
ﬁﬁC D
ReadAsStringAsync
ﬁﬁD U
(
ﬁﬁU V
)
ﬁﬁV W
;
ﬁﬁW X
	respuesta
ﬂﬂ 
=
ﬂﬂ 
JsonConvert
ﬂﬂ  +
.
ﬂﬂ+ ,
DeserializeObject
ﬂﬂ, =
<
ﬂﬂ= >
	Respuesta
ﬂﬂ> G
>
ﬂﬂG H
(
ﬂﬂH I
json
ﬂﬂI M
)
ﬂﬂM N
??
ﬂﬂO Q
new
ﬂﬂR U
	Respuesta
ﬂﬂV _
(
ﬂﬂ_ `
)
ﬂﬂ` a
;
ﬂﬂa b
	respuesta
‡‡ 
.
‡‡ 
Codigo
‡‡ $
=
‡‡% &
(
‡‡' (
int
‡‡( +
)
‡‡+ ,!
httpResponseMessage
‡‡, ?
.
‡‡? @

StatusCode
‡‡@ J
;
‡‡J K
}
·· 
else
‚‚ 
{
„„ 
	respuesta
‰‰ 
.
‰‰ 
Codigo
‰‰ $
=
‰‰% &
(
‰‰' (
int
‰‰( +
)
‰‰+ ,
HttpStatusCode
‰‰, :
.
‰‰: ;!
InternalServerError
‰‰; N
;
‰‰N O
	respuesta
ÂÂ 
.
ÂÂ 
Mensaje
ÂÂ %
=
ÂÂ& '
$str
ÂÂ( O
;
ÂÂO P
}
ÊÊ 
}
ÁÁ 
catch
ËË 
(
ËË "
HttpRequestException
ËË '"
httpRequestException
ËË( <
)
ËË< =
{
ÈÈ 
	respuesta
ÍÍ 
.
ÍÍ 
Codigo
ÍÍ  
=
ÍÍ! "
(
ÍÍ# $
int
ÍÍ$ '
)
ÍÍ' (
HttpStatusCode
ÍÍ( 6
.
ÍÍ6 7!
InternalServerError
ÍÍ7 J
;
ÍÍJ K
	respuesta
ÎÎ 
.
ÎÎ 
Mensaje
ÎÎ !
=
ÎÎ" #
$"
ÎÎ$ &
$str
ÎÎ& 4
{
ÎÎ4 5"
httpRequestException
ÎÎ5 I
.
ÎÎI J
Message
ÎÎJ Q
}
ÎÎQ R
"
ÎÎR S
;
ÎÎS T
_logger
ÏÏ 
.
ÏÏ 
LogFatal
ÏÏ  
(
ÏÏ  !"
httpRequestException
ÏÏ! 5
)
ÏÏ5 6
;
ÏÏ6 7
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ 
JsonException
ÓÓ  
jsonException
ÓÓ! .
)
ÓÓ. /
{
ÔÔ 
	respuesta
 
.
 
Codigo
  
=
! "
(
# $
int
$ '
)
' (
HttpStatusCode
( 6
.
6 7!
InternalServerError
7 J
;
J K
	respuesta
ÒÒ 
.
ÒÒ 
Mensaje
ÒÒ !
=
ÒÒ" #
$"
ÒÒ$ &
$str
ÒÒ& K
{
ÒÒK L
jsonException
ÒÒL Y
.
ÒÒY Z
Message
ÒÒZ a
}
ÒÒa b
"
ÒÒb c
;
ÒÒc d
_logger
ÚÚ 
.
ÚÚ 
LogFatal
ÚÚ  
(
ÚÚ  !
jsonException
ÚÚ! .
)
ÚÚ. /
;
ÚÚ/ 0
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
	Exception
ÙÙ 
ex
ÙÙ 
)
ÙÙ  
{
ıı 
	respuesta
ˆˆ 
.
ˆˆ 
Codigo
ˆˆ  
=
ˆˆ! "
(
ˆˆ# $
int
ˆˆ$ '
)
ˆˆ' (
HttpStatusCode
ˆˆ( 6
.
ˆˆ6 7!
InternalServerError
ˆˆ7 J
;
ˆˆJ K
	respuesta
˜˜ 
.
˜˜ 
Mensaje
˜˜ !
=
˜˜" #
$"
˜˜$ &
$str
˜˜& 8
{
˜˜8 9
ex
˜˜9 ;
.
˜˜; <
Message
˜˜< C
}
˜˜C D
"
˜˜D E
;
˜˜E F
_logger
¯¯ 
.
¯¯ 
LogFatal
¯¯  
(
¯¯  !
ex
¯¯! #
)
¯¯# $
;
¯¯$ %
}
˘˘ 
return
˚˚ 
	respuesta
˚˚ 
;
˚˚ 
}
¸¸ 	
public
˛˛ 
static
˛˛ 
async
˛˛ 
Task
˛˛  
<
˛˛  !
	Respuesta
˛˛! *
>
˛˛* +
ActualizarPerfil
˛˛, <
(
˛˛< =
string
˛˛= C
token
˛˛D I
,
˛˛I J
UsuarioRegistro
˛˛K Z
usuario
˛˛[ b
)
˛˛b c
{
ˇˇ 	
	Respuesta
ÄÄ 
	respuesta
ÄÄ 
=
ÄÄ  !
new
ÄÄ" %
(
ÄÄ% &
)
ÄÄ& '
;
ÄÄ' (
using
ÇÇ 
(
ÇÇ 
var
ÇÇ 

httpClient
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '

HttpClient
ÇÇ( 2
(
ÇÇ2 3
)
ÇÇ3 4
)
ÇÇ4 5
{
ÉÉ 
try
ÑÑ 
{
ÖÖ 

httpClient
áá 
.
áá #
DefaultRequestHeaders
áá 4
.
áá4 5
Authorization
áá5 B
=
ááC D
new
àà 
System
àà "
.
àà" #
Net
àà# &
.
àà& '
Http
àà' +
.
àà+ ,
Headers
àà, 3
.
àà3 4'
AuthenticationHeaderValue
àà4 M
(
ààM N
$str
ààN V
,
ààV W
token
ààX ]
)
àà] ^
;
àà^ _
var
ää 
	contenido
ää !
=
ää" #
new
ää$ '
StringContent
ää( 5
(
ää5 6
JsonConvert
ãã #
.
ãã# $
SerializeObject
ãã$ 3
(
ãã3 4
usuario
ãã4 ;
)
ãã; <
,
ãã< =
Encoding
åå  
.
åå  !
UTF8
åå! %
,
åå% &
$str
çç *
)
éé 
;
éé 
var
êê 

requestUri
êê "
=
êê# $
new
êê% (
Uri
êê) ,
(
êê, -
string
êê- 3
.
êê3 4
Concat
êê4 :
(
êê: ;
	Resources
êê; D
.
êêD E
BASE_URL
êêE M
,
êêM N
$str
êêO Z
)
êêZ [
)
êê[ \
;
êê\ ] 
HttpRequestMessage
íí & 
httpRequestMessage
íí' 9
=
íí: ;
new
íí< ? 
HttpRequestMessage
íí@ R
{
ìì 
Method
îî 
=
îî  

HttpMethod
îî! +
.
îî+ ,
Put
îî, /
,
îî/ 0

RequestUri
ïï "
=
ïï# $

requestUri
ïï% /
,
ïï/ 0
Content
ññ 
=
ññ  !
	contenido
ññ" +
}
óó 
;
óó !
HttpResponseMessage
ôô '!
httpResponseMessage
ôô( ;
=
ôô< =
await
ôô> C

httpClient
ôôD N
.
ôôN O
	SendAsync
ôôO X
(
ôôX Y 
httpRequestMessage
ôôY k
)
ôôk l
;
ôôl m
if
õõ 
(
õõ !
httpResponseMessage
õõ +
!=
õõ, .
null
õõ/ 3
)
õõ3 4
{
úú 
string
ùù 
json
ùù #
=
ùù$ %
await
ùù& +!
httpResponseMessage
ùù, ?
.
ùù? @
Content
ùù@ G
.
ùùG H
ReadAsStringAsync
ùùH Y
(
ùùY Z
)
ùùZ [
;
ùù[ \
	respuesta
ûû !
=
ûû" #
JsonConvert
ûû$ /
.
ûû/ 0
DeserializeObject
ûû0 A
<
ûûA B
	Respuesta
ûûB K
>
ûûK L
(
ûûL M
json
ûûM Q
)
ûûQ R
;
ûûR S
	respuesta
üü !
.
üü! "
Codigo
üü" (
=
üü) *
(
üü+ ,
int
üü, /
)
üü/ 0!
httpResponseMessage
üü0 C
.
üüC D

StatusCode
üüD N
;
üüN O
}
†† 
else
°° 
{
¢¢ 
	respuesta
££ !
.
££! "
Codigo
££" (
=
££) *
(
££+ ,
int
££, /
)
££/ 0
HttpStatusCode
££0 >
.
££> ?!
InternalServerError
££? R
;
££R S
	respuesta
§§ !
.
§§! "
Mensaje
§§" )
=
§§* +
$str
§§, S
;
§§S T
}
•• 
}
¶¶ 
catch
ßß 
(
ßß "
HttpRequestException
ßß +"
httpRequestException
ßß, @
)
ßß@ A
{
®® 
	respuesta
©© 
.
©© 
Codigo
©© $
=
©©% &
(
©©' (
int
©©( +
)
©©+ ,
HttpStatusCode
©©, :
.
©©: ;!
InternalServerError
©©; N
;
©©N O
	respuesta
™™ 
.
™™ 
Mensaje
™™ %
=
™™& '
$"
™™( *
$str
™™* 8
{
™™8 9"
httpRequestException
™™9 M
.
™™M N
Message
™™N U
}
™™U V
"
™™V W
;
™™W X
_logger
´´ 
.
´´ 
LogFatal
´´ $
(
´´$ %"
httpRequestException
´´% 9
)
´´9 :
;
´´: ;
}
¨¨ 
catch
≠≠ 
(
≠≠ 
JsonException
≠≠ $
jsonException
≠≠% 2
)
≠≠2 3
{
ÆÆ 
	respuesta
ØØ 
.
ØØ 
Codigo
ØØ $
=
ØØ% &
(
ØØ' (
int
ØØ( +
)
ØØ+ ,
HttpStatusCode
ØØ, :
.
ØØ: ;!
InternalServerError
ØØ; N
;
ØØN O
	respuesta
∞∞ 
.
∞∞ 
Mensaje
∞∞ %
=
∞∞& '
$"
∞∞( *
$str
∞∞* O
{
∞∞O P
jsonException
∞∞P ]
.
∞∞] ^
Message
∞∞^ e
}
∞∞e f
"
∞∞f g
;
∞∞g h
_logger
±± 
.
±± 
LogFatal
±± $
(
±±$ %
jsonException
±±% 2
)
±±2 3
;
±±3 4
}
≤≤ 
catch
≥≥ 
(
≥≥ 
	Exception
≥≥  
ex
≥≥! #
)
≥≥# $
{
¥¥ 
	respuesta
µµ 
.
µµ 
Codigo
µµ $
=
µµ% &
(
µµ' (
int
µµ( +
)
µµ+ ,
HttpStatusCode
µµ, :
.
µµ: ;!
InternalServerError
µµ; N
;
µµN O
	respuesta
∂∂ 
.
∂∂ 
Mensaje
∂∂ %
=
∂∂& '
$"
∂∂( *
$str
∂∂* <
{
∂∂< =
ex
∂∂= ?
.
∂∂? @
Message
∂∂@ G
}
∂∂G H
"
∂∂H I
;
∂∂I J
_logger
∑∑ 
.
∑∑ 
LogFatal
∑∑ $
(
∑∑$ %
ex
∑∑% '
)
∑∑' (
;
∑∑( )
}
∏∏ 
}
ππ 
return
ªª 
	respuesta
ªª 
;
ªª 
}
ºº 	
}
ææ 
}øø £¡
êC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\PublicacionServicio.cs
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
token	} Ç
)
Ç É
;
É Ñ
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
token	KK} Ç
)
KKÇ É
;
KKÉ Ñ
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
token	oo~ É
)
ooÉ Ñ
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
ÄÄ 
respuestaFinal
ÅÅ &
.
ÅÅ& '
	Resultado
ÅÅ' 0
=
ÅÅ1 2
respuestaApi
ÅÅ3 ?
.
ÅÅ? @
	Resultado
ÅÅ@ I
;
ÅÅI J
respuestaFinal
ÇÇ &
.
ÇÇ& '
Mensaje
ÇÇ' .
=
ÇÇ/ 0
respuestaApi
ÇÇ1 =
.
ÇÇ= >
Mensaje
ÇÇ> E
;
ÇÇE F
respuestaFinal
ÉÉ &
.
ÉÉ& '
Datos
ÉÉ' ,
=
ÉÉ- .
respuestaApi
ÉÉ/ ;
.
ÉÉ; <
	Resultado
ÉÉ< E
==
ÉÉF H
$num
ÉÉI L
?
ÉÉM N
respuestaApi
ÉÉO [
.
ÉÉ[ \
Datos
ÉÉ\ a
:
ÉÉb c
new
ÉÉd g
List
ÉÉh l
<
ÉÉl m
Publicacion
ÉÉm x
>
ÉÉx y
(
ÉÉy z
)
ÉÉz {
;
ÉÉ{ |
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
respuestaFinal
áá &
.
áá& '
	Resultado
áá' 0
=
áá1 2
(
áá3 4
int
áá4 7
)
áá7 8
HttpStatusCode
áá8 F
.
ááF G!
InternalServerError
ááG Z
;
ááZ [
respuestaFinal
àà &
.
àà& '
Mensaje
àà' .
=
àà/ 0
$str
àà1 a
;
ààa b
respuestaFinal
ââ &
.
ââ& '
Datos
ââ' ,
=
ââ- .
new
ââ/ 2
List
ââ3 7
<
ââ7 8
Publicacion
ââ8 C
>
ââC D
(
ââD E
)
ââE F
;
ââF G
}
ää 
}
ãã 
catch
åå 
(
åå "
HttpRequestException
åå +"
httpRequestException
åå, @
)
åå@ A
{
çç 
respuestaFinal
éé "
.
éé" #
	Resultado
éé# ,
=
éé- .
(
éé/ 0
int
éé0 3
)
éé3 4
HttpStatusCode
éé4 B
.
ééB C!
InternalServerError
ééC V
;
ééV W
respuestaFinal
èè "
.
èè" #
Mensaje
èè# *
=
èè+ ,
$"
èè- /
$str
èè/ =
{
èè= >"
httpRequestException
èè> R
.
èèR S
Message
èèS Z
}
èèZ [
"
èè[ \
;
èè\ ]
_logger
êê 
.
êê 
LogFatal
êê $
(
êê$ %"
httpRequestException
êê% 9
)
êê9 :
;
êê: ;
}
ëë 
catch
íí 
(
íí 
JsonException
íí $
jsonException
íí% 2
)
íí2 3
{
ìì 
respuestaFinal
îî "
.
îî" #
	Resultado
îî# ,
=
îî- .
(
îî/ 0
int
îî0 3
)
îî3 4
HttpStatusCode
îî4 B
.
îîB C!
InternalServerError
îîC V
;
îîV W
respuestaFinal
ïï "
.
ïï" #
Mensaje
ïï# *
=
ïï+ ,
$"
ïï- /
$str
ïï/ T
{
ïïT U
jsonException
ïïU b
.
ïïb c
Message
ïïc j
}
ïïj k
"
ïïk l
;
ïïl m
_logger
ññ 
.
ññ 
LogFatal
ññ $
(
ññ$ %
jsonException
ññ% 2
)
ññ2 3
;
ññ3 4
}
óó 
catch
òò 
(
òò 
System
òò 
.
òò 
	Exception
òò '
ex
òò( *
)
òò* +
{
ôô 
respuestaFinal
öö "
.
öö" #
	Resultado
öö# ,
=
öö- .
(
öö/ 0
int
öö0 3
)
öö3 4
HttpStatusCode
öö4 B
.
ööB C!
InternalServerError
ööC V
;
ööV W
respuestaFinal
õõ "
.
õõ" #
Mensaje
õõ# *
=
õõ+ ,
$"
õõ- /
$str
õõ/ A
{
õõA B
ex
õõB D
.
õõD E
Message
õõE L
}
õõL M
"
õõM N
;
õõN O
_logger
úú 
.
úú 
LogFatal
úú $
(
úú$ %
ex
úú% '
)
úú' (
;
úú( )
}
ùù 
}
ûû 
return
†† 
respuestaFinal
†† !
;
††! "
}
°° 	
public
££ 
static
££ 
async
££ 
Task
££  
<
££  !"
RespuestaPublicacion
££! 5
<
££5 6
List
££6 :
<
££: ;
Publicacion
££; F
>
££F G
>
££G H
>
££H I)
ObtenerPublicacionesPropias
££J e
(
££e f
string
££f l
token
££m r
)
££r s
{
§§ 	
var
•• 
respuestaFinal
•• 
=
••  
new
••! $"
RespuestaPublicacion
••% 9
<
••9 :
List
••: >
<
••> ?
Publicacion
••? J
>
••J K
>
••K L
(
••L M
)
••M N
;
••N O
using
ßß 
(
ßß 
var
ßß 

httpClient
ßß !
=
ßß" #
new
ßß$ '

HttpClient
ßß( 2
(
ßß2 3
)
ßß3 4
)
ßß4 5
{
®® 
try
©© 
{
™™ 

httpClient
´´ 
.
´´ #
DefaultRequestHeaders
´´ 4
.
´´4 5
Authorization
´´5 B
=
´´C D
new
¨¨ 
System
¨¨ "
.
¨¨" #
Net
¨¨# &
.
¨¨& '
Http
¨¨' +
.
¨¨+ ,
Headers
¨¨, 3
.
¨¨3 4'
AuthenticationHeaderValue
¨¨4 M
(
¨¨M N
$str
¨¨N V
,
¨¨V W
token
¨¨X ]
)
¨¨] ^
;
¨¨^ _
var
ÆÆ 
httpResponse
ÆÆ $
=
ÆÆ% &
await
ÆÆ' ,

httpClient
ÆÆ- 7
.
ÆÆ7 8
GetAsync
ÆÆ8 @
(
ÆÆ@ A
$"
ÆÆA C
{
ÆÆC D
	Resources
ÆÆD M
.
ÆÆM N
BASE_URL
ÆÆN V
}
ÆÆV W
$str
ÆÆW g
"
ÆÆg h
)
ÆÆh i
;
ÆÆi j
string
ØØ 
json
ØØ 
=
ØØ  !
await
ØØ" '
httpResponse
ØØ( 4
.
ØØ4 5
Content
ØØ5 <
.
ØØ< =
ReadAsStringAsync
ØØ= N
(
ØØN O
)
ØØO P
;
ØØP Q
var
±± 
respuestaApi
±± $
=
±±% &
JsonConvert
±±' 2
.
±±2 3
DeserializeObject
±±3 D
<
±±D E"
RespuestaPublicacion
±±E Y
<
±±Y Z
List
±±Z ^
<
±±^ _
Publicacion
±±_ j
>
±±j k
>
±±k l
>
±±l m
(
±±m n
json
±±n r
)
±±r s
;
±±s t
if
≥≥ 
(
≥≥ 
respuestaApi
≥≥ $
!=
≥≥% '
null
≥≥( ,
)
≥≥, -
{
¥¥ 
respuestaFinal
µµ &
.
µµ& '
	Resultado
µµ' 0
=
µµ1 2
respuestaApi
µµ3 ?
.
µµ? @
	Resultado
µµ@ I
;
µµI J
respuestaFinal
∂∂ &
.
∂∂& '
Mensaje
∂∂' .
=
∂∂/ 0
respuestaApi
∂∂1 =
.
∂∂= >
Mensaje
∂∂> E
;
∂∂E F
respuestaFinal
∑∑ &
.
∑∑& '
Datos
∑∑' ,
=
∑∑- .
respuestaApi
∑∑/ ;
.
∑∑; <
	Resultado
∑∑< E
==
∑∑F H
$num
∑∑I L
?
∑∑M N
respuestaApi
∑∑O [
.
∑∑[ \
Datos
∑∑\ a
:
∑∑b c
new
∑∑d g
List
∑∑h l
<
∑∑l m
Publicacion
∑∑m x
>
∑∑x y
(
∑∑y z
)
∑∑z {
;
∑∑{ |
}
∏∏ 
else
ππ 
{
∫∫ 
respuestaFinal
ªª &
.
ªª& '
	Resultado
ªª' 0
=
ªª1 2
(
ªª3 4
int
ªª4 7
)
ªª7 8
HttpStatusCode
ªª8 F
.
ªªF G!
InternalServerError
ªªG Z
;
ªªZ [
respuestaFinal
ºº &
.
ºº& '
Mensaje
ºº' .
=
ºº/ 0
$str
ºº1 a
;
ººa b
respuestaFinal
ΩΩ &
.
ΩΩ& '
Datos
ΩΩ' ,
=
ΩΩ- .
new
ΩΩ/ 2
List
ΩΩ3 7
<
ΩΩ7 8
Publicacion
ΩΩ8 C
>
ΩΩC D
(
ΩΩD E
)
ΩΩE F
;
ΩΩF G
}
ææ 
}
øø 
catch
¿¿ 
(
¿¿ "
HttpRequestException
¿¿ +"
httpRequestException
¿¿, @
)
¿¿@ A
{
¡¡ 
respuestaFinal
¬¬ "
.
¬¬" #
	Resultado
¬¬# ,
=
¬¬- .
(
¬¬/ 0
int
¬¬0 3
)
¬¬3 4
HttpStatusCode
¬¬4 B
.
¬¬B C!
InternalServerError
¬¬C V
;
¬¬V W
respuestaFinal
√√ "
.
√√" #
Mensaje
√√# *
=
√√+ ,
$"
√√- /
$str
√√/ =
{
√√= >"
httpRequestException
√√> R
.
√√R S
Message
√√S Z
}
√√Z [
"
√√[ \
;
√√\ ]
_logger
ƒƒ 
.
ƒƒ 
LogFatal
ƒƒ $
(
ƒƒ$ %"
httpRequestException
ƒƒ% 9
)
ƒƒ9 :
;
ƒƒ: ;
}
≈≈ 
catch
∆∆ 
(
∆∆ 
JsonException
∆∆ $
jsonException
∆∆% 2
)
∆∆2 3
{
«« 
respuestaFinal
»» "
.
»»" #
	Resultado
»»# ,
=
»»- .
(
»»/ 0
int
»»0 3
)
»»3 4
HttpStatusCode
»»4 B
.
»»B C!
InternalServerError
»»C V
;
»»V W
respuestaFinal
…… "
.
……" #
Mensaje
……# *
=
……+ ,
$"
……- /
$str
……/ T
{
……T U
jsonException
……U b
.
……b c
Message
……c j
}
……j k
"
……k l
;
……l m
_logger
   
.
   
LogFatal
   $
(
  $ %
jsonException
  % 2
)
  2 3
;
  3 4
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 
System
ÃÃ 
.
ÃÃ 
	Exception
ÃÃ '
ex
ÃÃ( *
)
ÃÃ* +
{
ÕÕ 
respuestaFinal
ŒŒ "
.
ŒŒ" #
	Resultado
ŒŒ# ,
=
ŒŒ- .
(
ŒŒ/ 0
int
ŒŒ0 3
)
ŒŒ3 4
HttpStatusCode
ŒŒ4 B
.
ŒŒB C!
InternalServerError
ŒŒC V
;
ŒŒV W
respuestaFinal
œœ "
.
œœ" #
Mensaje
œœ# *
=
œœ+ ,
$"
œœ- /
$str
œœ/ A
{
œœA B
ex
œœB D
.
œœD E
Message
œœE L
}
œœL M
"
œœM N
;
œœN O
_logger
–– 
.
–– 
LogFatal
–– $
(
––$ %
ex
––% '
)
––' (
;
––( )
}
—— 
}
““ 
return
‘‘ 
respuestaFinal
‘‘ !
;
‘‘! "
}
’’ 	
public
◊◊ 
static
◊◊ 
async
◊◊ 
Task
◊◊  
<
◊◊  !
	Respuesta
◊◊! *
?
◊◊* +
>
◊◊+ ,&
EliminarPublicacionAsync
◊◊- E
(
◊◊E F
string
◊◊F L
token
◊◊M R
,
◊◊R S
int
◊◊T W
idPublicacion
◊◊X e
)
◊◊e f
{
ÿÿ 	
	Respuesta
ŸŸ 
	respuesta
ŸŸ 
=
ŸŸ  !
new
ŸŸ" %
(
ŸŸ% &
)
ŸŸ& '
;
ŸŸ' (
using
⁄⁄ 
var
⁄⁄ 

httpClient
⁄⁄  
=
⁄⁄! "
new
⁄⁄# &

HttpClient
⁄⁄' 1
(
⁄⁄1 2
)
⁄⁄2 3
;
⁄⁄3 4

httpClient
€€ 
.
€€ #
DefaultRequestHeaders
€€ ,
.
€€, -
Authorization
€€- :
=
€€; <
new
‹‹ 
System
‹‹ 
.
‹‹ 
Net
‹‹ 
.
‹‹ 
Http
‹‹ #
.
‹‹# $
Headers
‹‹$ +
.
‹‹+ ,'
AuthenticationHeaderValue
‹‹, E
(
‹‹E F
$str
‹‹F N
,
‹‹N O
token
‹‹P U
)
‹‹U V
;
‹‹V W
try
ﬁﬁ 
{
ﬂﬂ 
var
‡‡ 
response
‡‡ 
=
‡‡ 
await
‡‡ $

httpClient
‡‡% /
.
‡‡/ 0
DeleteAsync
‡‡0 ;
(
‡‡; <
$"
‡‡< >
{
‡‡> ?
	Resources
‡‡? H
.
‡‡H I
BASE_URL
‡‡I Q
}
‡‡Q R
$str
‡‡R `
{
‡‡` a
idPublicacion
‡‡a n
}
‡‡n o
"
‡‡o p
)
‡‡p q
;
‡‡q r
var
·· 
body
·· 
=
·· 
await
··  
response
··! )
.
··) *
Content
··* 1
.
··1 2
ReadAsStringAsync
··2 C
(
··C D
)
··D E
;
··E F
var
„„ 
	resultado
„„ 
=
„„ 
JsonConvert
„„  +
.
„„+ ,
DeserializeObject
„„, =
<
„„= >
	Respuesta
„„> G
>
„„G H
(
„„H I
body
„„I M
)
„„M N
;
„„N O
	resultado
‰‰ 
.
‰‰ 
	Resultado
‰‰ #
=
‰‰$ %
(
‰‰& '
int
‰‰' *
)
‰‰* +
response
‰‰+ 3
.
‰‰3 4

StatusCode
‰‰4 >
;
‰‰> ?
return
ÂÂ 
	resultado
ÂÂ  
;
ÂÂ  !
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ "
HttpRequestException
ÁÁ '"
httpRequestException
ÁÁ( <
)
ÁÁ< =
{
ËË 
	respuesta
ÈÈ 
.
ÈÈ 
	Resultado
ÈÈ #
=
ÈÈ$ %
(
ÈÈ& '
int
ÈÈ' *
)
ÈÈ* +
HttpStatusCode
ÈÈ+ 9
.
ÈÈ9 :!
InternalServerError
ÈÈ: M
;
ÈÈM N
	respuesta
ÍÍ 
.
ÍÍ 
Mensaje
ÍÍ !
=
ÍÍ" #
$"
ÍÍ$ &
$str
ÍÍ& 4
{
ÍÍ4 5"
httpRequestException
ÍÍ5 I
.
ÍÍI J
Message
ÍÍJ Q
}
ÍÍQ R
"
ÍÍR S
;
ÍÍS T
_logger
ÎÎ 
.
ÎÎ 
LogFatal
ÎÎ  
(
ÎÎ  !"
httpRequestException
ÎÎ! 5
)
ÎÎ5 6
;
ÎÎ6 7
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
JsonException
ÌÌ  
jsonException
ÌÌ! .
)
ÌÌ. /
{
ÓÓ 
	respuesta
ÔÔ 
.
ÔÔ 
	Resultado
ÔÔ #
=
ÔÔ$ %
(
ÔÔ& '
int
ÔÔ' *
)
ÔÔ* +
HttpStatusCode
ÔÔ+ 9
.
ÔÔ9 :!
InternalServerError
ÔÔ: M
;
ÔÔM N
	respuesta
 
.
 
Mensaje
 !
=
" #
$"
$ &
$str
& K
{
K L
jsonException
L Y
.
Y Z
Message
Z a
}
a b
"
b c
;
c d
_logger
ÒÒ 
.
ÒÒ 
LogFatal
ÒÒ  
(
ÒÒ  !
jsonException
ÒÒ! .
)
ÒÒ. /
;
ÒÒ/ 0
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 
	Exception
ÛÛ 
ex
ÛÛ 
)
ÛÛ  
{
ÙÙ 
	respuesta
ıı 
.
ıı 
	Resultado
ıı #
=
ıı$ %
(
ıı& '
int
ıı' *
)
ıı* +
HttpStatusCode
ıı+ 9
.
ıı9 :!
InternalServerError
ıı: M
;
ııM N
	respuesta
ˆˆ 
.
ˆˆ 
Mensaje
ˆˆ !
=
ˆˆ" #
$"
ˆˆ$ &
$str
ˆˆ& 8
{
ˆˆ8 9
ex
ˆˆ9 ;
.
ˆˆ; <
Message
ˆˆ< C
}
ˆˆC D
"
ˆˆD E
;
ˆˆE F
_logger
˜˜ 
.
˜˜ 
LogFatal
˜˜  
(
˜˜  !
ex
˜˜! #
)
˜˜# $
;
˜˜$ %
}
¯¯ 
return
˙˙ 
	respuesta
˙˙ 
;
˙˙ 
}
˚˚ 	
public
˝˝ 
static
˝˝ 
async
˝˝ 
Task
˝˝  $
<
˝˝$ %"
RespuestaPublicacion
˝˝% 9
<
˝˝9 :
List
˝˝: >
<
˝˝> ?
Publicacion
˝˝? J
>
˝˝J K
>
˝˝K L
>
˝˝L M"
ObtenerPublicaciones
˝˝N b
(
˝˝b c
)
˝˝c d
{
˛˛ 
var
ˇˇ 
respuestaFinal
ˇˇ "
=
ˇˇ# $
new
ˇˇ% ("
RespuestaPublicacion
ˇˇ) =
<
ˇˇ= >
List
ˇˇ> B
<
ˇˇB C
Publicacion
ˇˇC N
>
ˇˇN O
>
ˇˇO P
(
ˇˇP Q
)
ˇˇQ R
;
ˇˇR S
using
ÅÅ 
(
ÅÅ 
var
ÅÅ 

httpClient
ÅÅ %
=
ÅÅ& '
new
ÅÅ( +

HttpClient
ÅÅ, 6
(
ÅÅ6 7
)
ÅÅ7 8
)
ÅÅ8 9
{
ÇÇ 
try
ÉÉ 
{
ÑÑ 
var
ÖÖ 
httpResponse
ÖÖ (
=
ÖÖ) *
await
ÖÖ+ 0

httpClient
ÖÖ1 ;
.
ÖÖ; <
GetAsync
ÖÖ< D
(
ÖÖD E
$"
ÖÖE G
{
ÖÖG H
	Resources
ÖÖH Q
.
ÖÖQ R
BASE_URL
ÖÖR Z
}
ÖÖZ [
$str
ÖÖ[ h
"
ÖÖh i
)
ÖÖi j
;
ÖÖj k
string
ÜÜ 
json
ÜÜ #
=
ÜÜ$ %
await
ÜÜ& +
httpResponse
ÜÜ, 8
.
ÜÜ8 9
Content
ÜÜ9 @
.
ÜÜ@ A
ReadAsStringAsync
ÜÜA R
(
ÜÜR S
)
ÜÜS T
;
ÜÜT U
var
àà 
respuestaApi
àà (
=
àà) *
JsonConvert
àà+ 6
.
àà6 7
DeserializeObject
àà7 H
<
ààH I"
RespuestaPublicacion
ààI ]
<
àà] ^
List
àà^ b
<
ààb c
Publicacion
ààc n
>
ààn o
>
àào p
>
ààp q
(
ààq r
json
ààr v
)
ààv w
;
ààw x
if
ää 
(
ää 
respuestaApi
ää (
!=
ää) +
null
ää, 0
)
ää0 1
{
ãã 
respuestaFinal
åå *
.
åå* +
	Resultado
åå+ 4
=
åå5 6
respuestaApi
åå7 C
.
ååC D
	Resultado
ååD M
;
ååM N
respuestaFinal
çç *
.
çç* +
Mensaje
çç+ 2
=
çç3 4
respuestaApi
çç5 A
.
ççA B
Mensaje
ççB I
;
ççI J
respuestaFinal
éé *
.
éé* +
Datos
éé+ 0
=
éé1 2
respuestaApi
éé3 ?
.
éé? @
	Resultado
éé@ I
==
ééJ L
$num
ééM P
?
ééQ R
respuestaApi
ééS _
.
éé_ `
Datos
éé` e
:
ééf g
new
ééh k
List
éél p
<
éép q
Publicacion
ééq |
>
éé| }
(
éé} ~
)
éé~ 
;éé Ä
}
èè 
else
êê 
{
ëë 
respuestaFinal
íí *
.
íí* +
	Resultado
íí+ 4
=
íí5 6
(
íí7 8
int
íí8 ;
)
íí; <
HttpStatusCode
íí< J
.
ííJ K!
InternalServerError
ííK ^
;
íí^ _
respuestaFinal
ìì *
.
ìì* +
Mensaje
ìì+ 2
=
ìì3 4
$str
ìì5 e
;
ììe f
respuestaFinal
îî *
.
îî* +
Datos
îî+ 0
=
îî1 2
new
îî3 6
List
îî7 ;
<
îî; <
Publicacion
îî< G
>
îîG H
(
îîH I
)
îîI J
;
îîJ K
}
ïï 
}
ññ 
catch
óó 
(
óó "
HttpRequestException
óó /"
httpRequestException
óó0 D
)
óóD E
{
òò 
respuestaFinal
ôô &
.
ôô& '
	Resultado
ôô' 0
=
ôô1 2
(
ôô3 4
int
ôô4 7
)
ôô7 8
HttpStatusCode
ôô8 F
.
ôôF G!
InternalServerError
ôôG Z
;
ôôZ [
respuestaFinal
öö &
.
öö& '
Mensaje
öö' .
=
öö/ 0
$"
öö1 3
$str
öö3 A
{
ööA B"
httpRequestException
ööB V
.
ööV W
Message
ööW ^
}
öö^ _
"
öö_ `
;
öö` a
_logger
õõ 
.
õõ  
LogFatal
õõ  (
(
õõ( )"
httpRequestException
õõ) =
)
õõ= >
;
õõ> ?
}
úú 
catch
ùù 
(
ùù 
JsonException
ùù (
jsonException
ùù) 6
)
ùù6 7
{
ûû 
respuestaFinal
üü &
.
üü& '
	Resultado
üü' 0
=
üü1 2
(
üü3 4
int
üü4 7
)
üü7 8
HttpStatusCode
üü8 F
.
üüF G!
InternalServerError
üüG Z
;
üüZ [
respuestaFinal
†† &
.
††& '
Mensaje
††' .
=
††/ 0
$"
††1 3
$str
††3 X
{
††X Y
jsonException
††Y f
.
††f g
Message
††g n
}
††n o
"
††o p
;
††p q
_logger
°° 
.
°°  
LogFatal
°°  (
(
°°( )
jsonException
°°) 6
)
°°6 7
;
°°7 8
}
¢¢ 
catch
££ 
(
££ 
	Exception
££ $
ex
££% '
)
££' (
{
§§ 
respuestaFinal
•• &
.
••& '
	Resultado
••' 0
=
••1 2
(
••3 4
int
••4 7
)
••7 8
HttpStatusCode
••8 F
.
••F G!
InternalServerError
••G Z
;
••Z [
respuestaFinal
¶¶ &
.
¶¶& '
Mensaje
¶¶' .
=
¶¶/ 0
$"
¶¶1 3
$str
¶¶3 E
{
¶¶E F
ex
¶¶F H
.
¶¶H I
Message
¶¶I P
}
¶¶P Q
"
¶¶Q R
;
¶¶R S
_logger
ßß 
.
ßß  
LogFatal
ßß  (
(
ßß( )
ex
ßß) +
)
ßß+ ,
;
ßß, -
}
®® 
}
©© 
return
™™ 
respuestaFinal
™™ %
;
™™% &
}
´´ 
public
≠≠ 
static
≠≠ 
async
≠≠ 
Task
≠≠  
<
≠≠  !"
RespuestaPublicacion
≠≠! 5
<
≠≠5 6
List
≠≠6 :
<
≠≠: ;
Publicacion
≠≠; F
>
≠≠F G
>
≠≠G H
>
≠≠H I,
ObtenerPublicacionesPendientes
≠≠J h
(
≠≠h i
string
≠≠i o
token
≠≠p u
)
≠≠u v
{
ÆÆ 	
var
ØØ 
respuestaFinal
ØØ 
=
ØØ  
new
ØØ! $"
RespuestaPublicacion
ØØ% 9
<
ØØ9 :
List
ØØ: >
<
ØØ> ?
Publicacion
ØØ? J
>
ØØJ K
>
ØØK L
(
ØØL M
)
ØØM N
;
ØØN O
using
±± 
(
±± 
var
±± 

httpClient
±± !
=
±±" #
new
±±$ '

HttpClient
±±( 2
(
±±2 3
)
±±3 4
)
±±4 5
{
≤≤ 
try
≥≥ 
{
¥¥ 

httpClient
µµ 
.
µµ #
DefaultRequestHeaders
µµ 4
.
µµ4 5
Authorization
µµ5 B
=
µµC D
new
µµE H'
AuthenticationHeaderValue
µµI b
(
µµb c
$str
µµc k
,
µµk l
token
µµm r
)
µµr s
;
µµs t
var
∑∑ 
httpResponse
∑∑ $
=
∑∑% &
await
∑∑' ,

httpClient
∑∑- 7
.
∑∑7 8
GetAsync
∑∑8 @
(
∑∑@ A
$"
∑∑A C
{
∑∑C D
	Resources
∑∑D M
.
∑∑M N
BASE_URL
∑∑N V
}
∑∑V W
$str
∑∑W o
"
∑∑o p
)
∑∑p q
;
∑∑q r
string
∏∏ 
json
∏∏ 
=
∏∏  !
await
∏∏" '
httpResponse
∏∏( 4
.
∏∏4 5
Content
∏∏5 <
.
∏∏< =
ReadAsStringAsync
∏∏= N
(
∏∏N O
)
∏∏O P
;
∏∏P Q
var
ππ 
respuestaApi
ππ $
=
ππ% &
JsonConvert
ππ' 2
.
ππ2 3
DeserializeObject
ππ3 D
<
ππD E"
RespuestaPublicacion
ππE Y
<
ππY Z
List
ππZ ^
<
ππ^ _
Publicacion
ππ_ j
>
ππj k
>
ππk l
>
ππl m
(
ππm n
json
ππn r
)
ππr s
;
ππs t
if
ºº 
(
ºº 
respuestaApi
ºº $
!=
ºº% '
null
ºº( ,
)
ºº, -
{
ΩΩ 
respuestaFinal
ææ &
.
ææ& '
	Resultado
ææ' 0
=
ææ1 2
respuestaApi
ææ3 ?
.
ææ? @
	Resultado
ææ@ I
;
ææI J
respuestaFinal
øø &
.
øø& '
Mensaje
øø' .
=
øø/ 0
respuestaApi
øø1 =
.
øø= >
Mensaje
øø> E
;
øøE F
respuestaFinal
¿¿ &
.
¿¿& '
Datos
¿¿' ,
=
¿¿- .
respuestaApi
¿¿/ ;
.
¿¿; <
	Resultado
¿¿< E
==
¿¿F H
$num
¿¿I L
?
¿¿M N
respuestaApi
¿¿O [
.
¿¿[ \
Datos
¿¿\ a
:
¿¿b c
new
¿¿d g
List
¿¿h l
<
¿¿l m
Publicacion
¿¿m x
>
¿¿x y
(
¿¿y z
)
¿¿z {
;
¿¿{ |
}
¡¡ 
else
¬¬ 
{
√√ 
respuestaFinal
ƒƒ &
.
ƒƒ& '
	Resultado
ƒƒ' 0
=
ƒƒ1 2
(
ƒƒ3 4
int
ƒƒ4 7
)
ƒƒ7 8
HttpStatusCode
ƒƒ8 F
.
ƒƒF G!
InternalServerError
ƒƒG Z
;
ƒƒZ [
respuestaFinal
≈≈ &
.
≈≈& '
Mensaje
≈≈' .
=
≈≈/ 0
$str
≈≈1 a
;
≈≈a b
respuestaFinal
∆∆ &
.
∆∆& '
Datos
∆∆' ,
=
∆∆- .
new
∆∆/ 2
List
∆∆3 7
<
∆∆7 8
Publicacion
∆∆8 C
>
∆∆C D
(
∆∆D E
)
∆∆E F
;
∆∆F G
}
«« 
}
»» 
catch
…… 
(
…… "
HttpRequestException
…… +"
httpRequestException
……, @
)
……@ A
{
   
respuestaFinal
ÀÀ "
.
ÀÀ" #
	Resultado
ÀÀ# ,
=
ÀÀ- .
(
ÀÀ/ 0
int
ÀÀ0 3
)
ÀÀ3 4
HttpStatusCode
ÀÀ4 B
.
ÀÀB C!
InternalServerError
ÀÀC V
;
ÀÀV W
respuestaFinal
ÃÃ "
.
ÃÃ" #
Mensaje
ÃÃ# *
=
ÃÃ+ ,
$"
ÃÃ- /
$str
ÃÃ/ =
{
ÃÃ= >"
httpRequestException
ÃÃ> R
.
ÃÃR S
Message
ÃÃS Z
}
ÃÃZ [
"
ÃÃ[ \
;
ÃÃ\ ]
_logger
ÕÕ 
.
ÕÕ 
LogFatal
ÕÕ $
(
ÕÕ$ %"
httpRequestException
ÕÕ% 9
)
ÕÕ9 :
;
ÕÕ: ;
}
ŒŒ 
catch
œœ 
(
œœ 
JsonException
œœ $
jsonException
œœ% 2
)
œœ2 3
{
–– 
respuestaFinal
—— "
.
——" #
	Resultado
——# ,
=
——- .
(
——/ 0
int
——0 3
)
——3 4
HttpStatusCode
——4 B
.
——B C!
InternalServerError
——C V
;
——V W
respuestaFinal
““ "
.
““" #
Mensaje
““# *
=
““+ ,
$"
““- /
$str
““/ T
{
““T U
jsonException
““U b
.
““b c
Message
““c j
}
““j k
"
““k l
;
““l m
_logger
”” 
.
”” 
LogFatal
”” $
(
””$ %
jsonException
””% 2
)
””2 3
;
””3 4
}
‘‘ 
catch
’’ 
(
’’ 
	Exception
’’  
ex
’’! #
)
’’# $
{
÷÷ 
respuestaFinal
◊◊ "
.
◊◊" #
	Resultado
◊◊# ,
=
◊◊- .
(
◊◊/ 0
int
◊◊0 3
)
◊◊3 4
HttpStatusCode
◊◊4 B
.
◊◊B C!
InternalServerError
◊◊C V
;
◊◊V W
respuestaFinal
ÿÿ "
.
ÿÿ" #
Mensaje
ÿÿ# *
=
ÿÿ+ ,
$"
ÿÿ- /
$str
ÿÿ/ A
{
ÿÿA B
ex
ÿÿB D
.
ÿÿD E
Message
ÿÿE L
}
ÿÿL M
"
ÿÿM N
;
ÿÿN O
_logger
ŸŸ 
.
ŸŸ 
LogFatal
ŸŸ $
(
ŸŸ$ %
ex
ŸŸ% '
)
ŸŸ' (
;
ŸŸ( )
}
⁄⁄ 
}
€€ 
return
‹‹ 
respuestaFinal
‹‹ !
;
‹‹! "
}
›› 	
public
‡‡ 
static
‡‡ 
async
‡‡ 
Task
‡‡  
<
‡‡  !"
RespuestaPublicacion
‡‡! 5
<
‡‡5 6
List
‡‡6 :
<
‡‡: ;
Publicacion
‡‡; F
>
‡‡F G
>
‡‡G H
>
‡‡H I!
ObtenerPorCategoria
‡‡J ]
(
‡‡] ^
int
‡‡^ a
categoriaId
‡‡b m
)
‡‡m n
{
·· 
var
‚‚ 
respuestaFinal
‚‚ "
=
‚‚# $
new
‚‚% ("
RespuestaPublicacion
‚‚) =
<
‚‚= >
List
‚‚> B
<
‚‚B C
Publicacion
‚‚C N
>
‚‚N O
>
‚‚O P
(
‚‚P Q
)
‚‚Q R
;
‚‚R S
using
‰‰ 
(
‰‰ 
var
‰‰ 

httpClient
‰‰ %
=
‰‰& '
new
‰‰( +

HttpClient
‰‰, 6
(
‰‰6 7
)
‰‰7 8
)
‰‰8 9
{
ÂÂ 
try
ÊÊ 
{
ÁÁ 
var
ËË 
httpResponse
ËË (
=
ËË) *
await
ËË+ 0

httpClient
ËË1 ;
.
ËË; <
GetAsync
ËË< D
(
ËËD E
$"
ËËE G
{
ËËG H
	Resources
ËËH Q
.
ËËQ R
BASE_URL
ËËR Z
}
ËËZ [
$str
ËË[ s
{
ËËs t
categoriaId
ËËt 
}ËË Ä
"ËËÄ Å
)ËËÅ Ç
;ËËÇ É
string
ÈÈ 
json
ÈÈ 
=
ÈÈ  !
await
ÈÈ" '
httpResponse
ÈÈ( 4
.
ÈÈ4 5
Content
ÈÈ5 <
.
ÈÈ< =
ReadAsStringAsync
ÈÈ= N
(
ÈÈN O
)
ÈÈO P
;
ÈÈP Q
var
ÍÍ 
respuestaApi
ÍÍ $
=
ÍÍ% &
JsonConvert
ÍÍ' 2
.
ÍÍ2 3
DeserializeObject
ÍÍ3 D
<
ÍÍD E"
RespuestaPublicacion
ÍÍE Y
<
ÍÍY Z
List
ÍÍZ ^
<
ÍÍ^ _
Publicacion
ÍÍ_ j
>
ÍÍj k
>
ÍÍk l
>
ÍÍl m
(
ÍÍm n
json
ÍÍn r
)
ÍÍr s
;
ÍÍs t
if
ÎÎ 
(
ÎÎ 
respuestaApi
ÎÎ $
!=
ÎÎ% '
null
ÎÎ( ,
)
ÎÎ, -
{
ÏÏ 
respuestaFinal
ÌÌ &
.
ÌÌ& '
	Resultado
ÌÌ' 0
=
ÌÌ1 2
respuestaApi
ÌÌ3 ?
.
ÌÌ? @
	Resultado
ÌÌ@ I
;
ÌÌI J
respuestaFinal
ÓÓ &
.
ÓÓ& '
Mensaje
ÓÓ' .
=
ÓÓ/ 0
respuestaApi
ÓÓ1 =
.
ÓÓ= >
Mensaje
ÓÓ> E
;
ÓÓE F
respuestaFinal
ÔÔ &
.
ÔÔ& '
Datos
ÔÔ' ,
=
ÔÔ- .
respuestaApi
ÔÔ/ ;
.
ÔÔ; <
	Resultado
ÔÔ< E
==
ÔÔF H
$num
ÔÔI L
?
ÔÔM N
respuestaApi
ÔÔO [
.
ÔÔ[ \
Datos
ÔÔ\ a
:
ÔÔb c
new
ÔÔd g
List
ÔÔh l
<
ÔÔl m
Publicacion
ÔÔm x
>
ÔÔx y
(
ÔÔy z
)
ÔÔz {
;
ÔÔ{ |
}
 
else
ÒÒ 
{
ÚÚ 
respuestaFinal
ÛÛ &
.
ÛÛ& '
	Resultado
ÛÛ' 0
=
ÛÛ1 2
(
ÛÛ3 4
int
ÛÛ4 7
)
ÛÛ7 8
HttpStatusCode
ÛÛ8 F
.
ÛÛF G!
InternalServerError
ÛÛG Z
;
ÛÛZ [
respuestaFinal
ÙÙ &
.
ÙÙ& '
Mensaje
ÙÙ' .
=
ÙÙ/ 0
$str
ÙÙ1 a
;
ÙÙa b
respuestaFinal
ıı &
.
ıı& '
Datos
ıı' ,
=
ıı- .
new
ıı/ 2
List
ıı3 7
<
ıı7 8
Publicacion
ıı8 C
>
ııC D
(
ııD E
)
ııE F
;
ııF G
}
ˆˆ 
}
˜˜ 
catch
¯¯ 
(
¯¯ "
HttpRequestException
¯¯ +"
httpRequestException
¯¯, @
)
¯¯@ A
{
˘˘ 
respuestaFinal
˙˙ "
.
˙˙" #
	Resultado
˙˙# ,
=
˙˙- .
(
˙˙/ 0
int
˙˙0 3
)
˙˙3 4
HttpStatusCode
˙˙4 B
.
˙˙B C!
InternalServerError
˙˙C V
;
˙˙V W
respuestaFinal
˚˚ "
.
˚˚" #
Mensaje
˚˚# *
=
˚˚+ ,
$"
˚˚- /
$str
˚˚/ =
{
˚˚= >"
httpRequestException
˚˚> R
.
˚˚R S
Message
˚˚S Z
}
˚˚Z [
"
˚˚[ \
;
˚˚\ ]
_logger
¸¸ 
.
¸¸ 
LogFatal
¸¸ $
(
¸¸$ %"
httpRequestException
¸¸% 9
)
¸¸9 :
;
¸¸: ;
}
˝˝ 
catch
˛˛ 
(
˛˛ 
JsonException
˛˛ $
jsonException
˛˛% 2
)
˛˛2 3
{
ˇˇ 
respuestaFinal
ÄÄ "
.
ÄÄ" #
	Resultado
ÄÄ# ,
=
ÄÄ- .
(
ÄÄ/ 0
int
ÄÄ0 3
)
ÄÄ3 4
HttpStatusCode
ÄÄ4 B
.
ÄÄB C!
InternalServerError
ÄÄC V
;
ÄÄV W
respuestaFinal
ÅÅ "
.
ÅÅ" #
Mensaje
ÅÅ# *
=
ÅÅ+ ,
$"
ÅÅ- /
$str
ÅÅ/ T
{
ÅÅT U
jsonException
ÅÅU b
.
ÅÅb c
Message
ÅÅc j
}
ÅÅj k
"
ÅÅk l
;
ÅÅl m
_logger
ÇÇ 
.
ÇÇ 
LogFatal
ÇÇ $
(
ÇÇ$ %
jsonException
ÇÇ% 2
)
ÇÇ2 3
;
ÇÇ3 4
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
	Exception
ÑÑ  
ex
ÑÑ! #
)
ÑÑ# $
{
ÖÖ 
respuestaFinal
ÜÜ "
.
ÜÜ" #
	Resultado
ÜÜ# ,
=
ÜÜ- .
(
ÜÜ/ 0
int
ÜÜ0 3
)
ÜÜ3 4
HttpStatusCode
ÜÜ4 B
.
ÜÜB C!
InternalServerError
ÜÜC V
;
ÜÜV W
respuestaFinal
áá "
.
áá" #
Mensaje
áá# *
=
áá+ ,
$"
áá- /
$str
áá/ A
{
ááA B
ex
ááB D
.
ááD E
Message
ááE L
}
ááL M
"
ááM N
;
ááN O
_logger
àà 
.
àà 
LogFatal
àà $
(
àà$ %
ex
àà% '
)
àà' (
;
àà( )
}
ââ 
}
ää 
return
ãã 
respuestaFinal
ãã %
;
ãã% &
}
åå 
public
éé 
static
éé 
async
éé 
Task
éé  $
<
éé$ %"
RespuestaPublicacion
éé% 9
<
éé9 :
List
éé: >
<
éé> ?
Publicacion
éé? J
>
ééJ K
>
ééK L
>
ééL M
ObtenerPorRama
ééN \
(
éé\ ]
int
éé] `
ramaId
ééa g
)
éég h
{
èè 
var
êê 
respuestaFinal
êê "
=
êê# $
new
êê% ("
RespuestaPublicacion
êê) =
<
êê= >
List
êê> B
<
êêB C
Publicacion
êêC N
>
êêN O
>
êêO P
(
êêP Q
)
êêQ R
;
êêR S
using
íí 
(
íí 
var
íí 

httpClient
íí %
=
íí& '
new
íí( +

HttpClient
íí, 6
(
íí6 7
)
íí7 8
)
íí8 9
{
ìì 
try
îî 
{
ïï 
var
ññ 
httpResponse
ññ (
=
ññ) *
await
ññ+ 0

httpClient
ññ1 ;
.
ññ; <
GetAsync
ññ< D
(
ññD E
$"
ññE G
{
ññG H
	Resources
ññH Q
.
ññQ R
BASE_URL
ññR Z
}
ññZ [
$str
ññ[ n
{
ññn o
ramaId
ñño u
}
ññu v
"
ññv w
)
ññw x
;
ññx y
string
óó 
json
óó 
=
óó  !
await
óó" '
httpResponse
óó( 4
.
óó4 5
Content
óó5 <
.
óó< =
ReadAsStringAsync
óó= N
(
óóN O
)
óóO P
;
óóP Q
var
òò 
respuestaApi
òò $
=
òò% &
JsonConvert
òò' 2
.
òò2 3
DeserializeObject
òò3 D
<
òòD E"
RespuestaPublicacion
òòE Y
<
òòY Z
List
òòZ ^
<
òò^ _
Publicacion
òò_ j
>
òòj k
>
òòk l
>
òòl m
(
òòm n
json
òòn r
)
òòr s
;
òòs t
if
ôô 
(
ôô 
respuestaApi
ôô $
!=
ôô% '
null
ôô( ,
)
ôô, -
{
öö 
respuestaFinal
õõ &
.
õõ& '
	Resultado
õõ' 0
=
õõ1 2
respuestaApi
õõ3 ?
.
õõ? @
	Resultado
õõ@ I
;
õõI J
respuestaFinal
úú &
.
úú& '
Mensaje
úú' .
=
úú/ 0
respuestaApi
úú1 =
.
úú= >
Mensaje
úú> E
;
úúE F
respuestaFinal
ùù &
.
ùù& '
Datos
ùù' ,
=
ùù- .
respuestaApi
ùù/ ;
.
ùù; <
	Resultado
ùù< E
==
ùùF H
$num
ùùI L
?
ùùM N
respuestaApi
ùùO [
.
ùù[ \
Datos
ùù\ a
:
ùùb c
new
ùùd g
List
ùùh l
<
ùùl m
Publicacion
ùùm x
>
ùùx y
(
ùùy z
)
ùùz {
;
ùù{ |
}
üü 
else
†† 
{
°° 
respuestaFinal
¢¢ &
.
¢¢& '
	Resultado
¢¢' 0
=
¢¢1 2
(
¢¢3 4
int
¢¢4 7
)
¢¢7 8
HttpStatusCode
¢¢8 F
.
¢¢F G!
InternalServerError
¢¢G Z
;
¢¢Z [
respuestaFinal
££ &
.
££& '
Mensaje
££' .
=
££/ 0
$str
££1 a
;
££a b
respuestaFinal
§§ &
.
§§& '
Datos
§§' ,
=
§§- .
new
§§/ 2
List
§§3 7
<
§§7 8
Publicacion
§§8 C
>
§§C D
(
§§D E
)
§§E F
;
§§F G
}
•• 
}
¶¶ 
catch
ßß 
(
ßß "
HttpRequestException
ßß +"
httpRequestException
ßß, @
)
ßß@ A
{
®® 
respuestaFinal
©© "
.
©©" #
	Resultado
©©# ,
=
©©- .
(
©©/ 0
int
©©0 3
)
©©3 4
HttpStatusCode
©©4 B
.
©©B C!
InternalServerError
©©C V
;
©©V W
respuestaFinal
™™ "
.
™™" #
Mensaje
™™# *
=
™™+ ,
$"
™™- /
$str
™™/ =
{
™™= >"
httpRequestException
™™> R
.
™™R S
Message
™™S Z
}
™™Z [
"
™™[ \
;
™™\ ]
_logger
´´ 
.
´´ 
LogFatal
´´ $
(
´´$ %"
httpRequestException
´´% 9
)
´´9 :
;
´´: ;
}
¨¨ 
catch
≠≠ 
(
≠≠ 
JsonException
≠≠ $
jsonException
≠≠% 2
)
≠≠2 3
{
ÆÆ 
respuestaFinal
ØØ "
.
ØØ" #
	Resultado
ØØ# ,
=
ØØ- .
(
ØØ/ 0
int
ØØ0 3
)
ØØ3 4
HttpStatusCode
ØØ4 B
.
ØØB C!
InternalServerError
ØØC V
;
ØØV W
respuestaFinal
∞∞ "
.
∞∞" #
Mensaje
∞∞# *
=
∞∞+ ,
$"
∞∞- /
$str
∞∞/ T
{
∞∞T U
jsonException
∞∞U b
.
∞∞b c
Message
∞∞c j
}
∞∞j k
"
∞∞k l
;
∞∞l m
_logger
±± 
.
±± 
LogFatal
±± $
(
±±$ %
jsonException
±±% 2
)
±±2 3
;
±±3 4
}
≤≤ 
catch
≥≥ 
(
≥≥ 
	Exception
≥≥  
ex
≥≥! #
)
≥≥# $
{
¥¥ 
respuestaFinal
µµ "
.
µµ" #
	Resultado
µµ# ,
=
µµ- .
(
µµ/ 0
int
µµ0 3
)
µµ3 4
HttpStatusCode
µµ4 B
.
µµB C!
InternalServerError
µµC V
;
µµV W
respuestaFinal
∂∂ "
.
∂∂" #
Mensaje
∂∂# *
=
∂∂+ ,
$"
∂∂- /
$str
∂∂/ A
{
∂∂A B
ex
∂∂B D
.
∂∂D E
Message
∂∂E L
}
∂∂L M
"
∂∂M N
;
∂∂N O
_logger
∑∑ 
.
∑∑ 
LogFatal
∑∑ $
(
∑∑$ %
ex
∑∑% '
)
∑∑' (
;
∑∑( )
}
∏∏ 
}
ππ 
return
∫∫ 
respuestaFinal
∫∫ %
;
∫∫% &
}
ªª 
public
ææ 
static
ææ 
async
ææ 
Task
ææ  $
<
ææ$ %"
RespuestaPublicacion
ææ% 9
<
ææ9 :
List
ææ: >
<
ææ> ?
Publicacion
ææ? J
>
ææJ K
>
ææK L
>
ææL M&
ObtenerPorNivelEducativo
ææN f
(
ææf g
string
ææg m
nivelEducativo
ææn |
)
ææ| }
{
øø 
var
¿¿ 
respuestaFinal
¿¿ "
=
¿¿# $
new
¿¿% ("
RespuestaPublicacion
¿¿) =
<
¿¿= >
List
¿¿> B
<
¿¿B C
Publicacion
¿¿C N
>
¿¿N O
>
¿¿O P
(
¿¿P Q
)
¿¿Q R
;
¿¿R S
using
¬¬ 
(
¬¬ 
var
¬¬ 

httpClient
¬¬ %
=
¬¬& '
new
¬¬( +

HttpClient
¬¬, 6
(
¬¬6 7
)
¬¬7 8
)
¬¬8 9
{
√√ 
try
ƒƒ 
{
≈≈ 
if
«« 
(
«« 
nivelEducativo
«« *
!=
««+ -
$str
««. <
&&
««= ?
nivelEducativo
««@ N
!=
««O Q
$str
««R _
)
««_ `
{
»» 
respuestaFinal
…… *
.
……* +
	Resultado
……+ 4
=
……5 6
(
……7 8
int
……8 ;
)
……; <
HttpStatusCode
……< J
.
……J K

BadRequest
……K U
;
……U V
respuestaFinal
   *
.
  * +
Mensaje
  + 2
=
  3 4
$str
  5 O
;
  O P
return
ÀÀ "
respuestaFinal
ÀÀ# 1
;
ÀÀ1 2
}
ÃÃ 
var
ŒŒ 
httpResponse
ŒŒ (
=
ŒŒ) *
await
ŒŒ+ 0

httpClient
ŒŒ1 ;
.
ŒŒ; <
GetAsync
ŒŒ< D
(
ŒŒD E
$"
ŒŒE G
{
ŒŒG H
	Resources
ŒŒH Q
.
ŒŒQ R
BASE_URL
ŒŒR Z
}
ŒŒZ [
$str
ŒŒ[ o
{
ŒŒo p
nivelEducativo
ŒŒp ~
}
ŒŒ~ 
"ŒŒ Ä
)ŒŒÄ Å
;ŒŒÅ Ç
string
œœ 
json
œœ 
=
œœ  !
await
œœ" '
httpResponse
œœ( 4
.
œœ4 5
Content
œœ5 <
.
œœ< =
ReadAsStringAsync
œœ= N
(
œœN O
)
œœO P
;
œœP Q
var
–– 
respuestaApi
–– $
=
––% &
JsonConvert
––' 2
.
––2 3
DeserializeObject
––3 D
<
––D E"
RespuestaPublicacion
––E Y
<
––Y Z
List
––Z ^
<
––^ _
Publicacion
––_ j
>
––j k
>
––k l
>
––l m
(
––m n
json
––n r
)
––r s
;
––s t
if
—— 
(
—— 
respuestaApi
—— $
!=
——% '
null
——( ,
)
——, -
{
““ 
respuestaFinal
”” &
.
””& '
	Resultado
””' 0
=
””1 2
respuestaApi
””3 ?
.
””? @
	Resultado
””@ I
;
””I J
respuestaFinal
‘‘ &
.
‘‘& '
Mensaje
‘‘' .
=
‘‘/ 0
respuestaApi
‘‘1 =
.
‘‘= >
Mensaje
‘‘> E
;
‘‘E F
respuestaFinal
’’ &
.
’’& '
Datos
’’' ,
=
’’- .
respuestaApi
’’/ ;
.
’’; <
	Resultado
’’< E
==
’’F H
$num
’’I L
?
’’M N
respuestaApi
’’O [
.
’’[ \
Datos
’’\ a
:
’’b c
new
’’d g
List
’’h l
<
’’l m
Publicacion
’’m x
>
’’x y
(
’’y z
)
’’z {
;
’’{ |
}
÷÷ 
else
◊◊ 
{
ÿÿ 
respuestaFinal
ŸŸ &
.
ŸŸ& '
	Resultado
ŸŸ' 0
=
ŸŸ1 2
(
ŸŸ3 4
int
ŸŸ4 7
)
ŸŸ7 8
HttpStatusCode
ŸŸ8 F
.
ŸŸF G!
InternalServerError
ŸŸG Z
;
ŸŸZ [
respuestaFinal
⁄⁄ &
.
⁄⁄& '
Mensaje
⁄⁄' .
=
⁄⁄/ 0
$str
⁄⁄1 a
;
⁄⁄a b
respuestaFinal
€€ &
.
€€& '
Datos
€€' ,
=
€€- .
new
€€/ 2
List
€€3 7
<
€€7 8
Publicacion
€€8 C
>
€€C D
(
€€D E
)
€€E F
;
€€F G
}
‹‹ 
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ "
HttpRequestException
ﬁﬁ +"
httpRequestException
ﬁﬁ, @
)
ﬁﬁ@ A
{
ﬂﬂ 
respuestaFinal
‡‡ "
.
‡‡" #
	Resultado
‡‡# ,
=
‡‡- .
(
‡‡/ 0
int
‡‡0 3
)
‡‡3 4
HttpStatusCode
‡‡4 B
.
‡‡B C!
InternalServerError
‡‡C V
;
‡‡V W
respuestaFinal
·· "
.
··" #
Mensaje
··# *
=
··+ ,
$"
··- /
$str
··/ =
{
··= >"
httpRequestException
··> R
.
··R S
Message
··S Z
}
··Z [
"
··[ \
;
··\ ]
_logger
‚‚ 
.
‚‚ 
LogFatal
‚‚ $
(
‚‚$ %"
httpRequestException
‚‚% 9
)
‚‚9 :
;
‚‚: ;
}
„„ 
catch
‰‰ 
(
‰‰ 
JsonException
‰‰ $
jsonException
‰‰% 2
)
‰‰2 3
{
ÂÂ 
respuestaFinal
ÊÊ "
.
ÊÊ" #
	Resultado
ÊÊ# ,
=
ÊÊ- .
(
ÊÊ/ 0
int
ÊÊ0 3
)
ÊÊ3 4
HttpStatusCode
ÊÊ4 B
.
ÊÊB C!
InternalServerError
ÊÊC V
;
ÊÊV W
respuestaFinal
ÁÁ "
.
ÁÁ" #
Mensaje
ÁÁ# *
=
ÁÁ+ ,
$"
ÁÁ- /
$str
ÁÁ/ T
{
ÁÁT U
jsonException
ÁÁU b
.
ÁÁb c
Message
ÁÁc j
}
ÁÁj k
"
ÁÁk l
;
ÁÁl m
_logger
ËË 
.
ËË 
LogFatal
ËË $
(
ËË$ %
jsonException
ËË% 2
)
ËË2 3
;
ËË3 4
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ 
	Exception
ÍÍ  
ex
ÍÍ! #
)
ÍÍ# $
{
ÎÎ 
respuestaFinal
ÏÏ "
.
ÏÏ" #
	Resultado
ÏÏ# ,
=
ÏÏ- .
(
ÏÏ/ 0
int
ÏÏ0 3
)
ÏÏ3 4
HttpStatusCode
ÏÏ4 B
.
ÏÏB C!
InternalServerError
ÏÏC V
;
ÏÏV W
respuestaFinal
ÌÌ "
.
ÌÌ" #
Mensaje
ÌÌ# *
=
ÌÌ+ ,
$"
ÌÌ- /
$str
ÌÌ/ A
{
ÌÌA B
ex
ÌÌB D
.
ÌÌD E
Message
ÌÌE L
}
ÌÌL M
"
ÌÌM N
;
ÌÌN O
_logger
ÓÓ 
.
ÓÓ 
LogFatal
ÓÓ $
(
ÓÓ$ %
ex
ÓÓ% '
)
ÓÓ' (
;
ÓÓ( )
}
ÔÔ 
}
 
return
ÒÒ 
respuestaFinal
ÒÒ %
;
ÒÒ% &
}
ÚÚ 
public
ıı 
static
ıı 
async
ıı 
Task
ıı  $
<
ıı$ %
RespuestaSimple
ıı% 4
>
ıı4 5
DarLikeAsync
ıı6 B
(
ııB C
string
ııC I
token
ııJ O
,
ııO P
int
ııQ T
idPublicacion
ııU b
)
ııb c
{
ˆˆ 
RespuestaSimple
˜˜ 
	respuesta
˜˜  )
=
˜˜* +
new
˜˜, /
(
˜˜/ 0
)
˜˜0 1
;
˜˜1 2
using
¯¯ 
var
¯¯ 

httpClient
¯¯ $
=
¯¯% &
new
¯¯' *

HttpClient
¯¯+ 5
(
¯¯5 6
)
¯¯6 7
;
¯¯7 8

httpClient
˘˘ 
.
˘˘ #
DefaultRequestHeaders
˘˘ 0
.
˘˘0 1
Authorization
˘˘1 >
=
˘˘? @
new
˘˘A D'
AuthenticationHeaderValue
˘˘E ^
(
˘˘^ _
$str
˘˘_ g
,
˘˘g h
token
˘˘i n
)
˘˘n o
;
˘˘o p
try
˚˚ 
{
¸¸ 
var
˝˝ 
response
˝˝  
=
˝˝! "
await
˝˝# (

httpClient
˝˝) 3
.
˝˝3 4
	PostAsync
˝˝4 =
(
˝˝= >
$"
˛˛ 
{
˛˛ 
	Resources
˛˛ $
.
˛˛$ %
BASE_URL
˛˛% -
}
˛˛- .
$str
˛˛. <
{
˛˛< =
idPublicacion
˛˛= J
}
˛˛J K
$str
˛˛K P
"
˛˛P Q
,
˛˛Q R
null
ˇˇ 
)
ÄÄ 
;
ÄÄ 
var
ÇÇ 
body
ÇÇ 
=
ÇÇ 
await
ÇÇ $
response
ÇÇ% -
.
ÇÇ- .
Content
ÇÇ. 5
.
ÇÇ5 6
ReadAsStringAsync
ÇÇ6 G
(
ÇÇG H
)
ÇÇH I
;
ÇÇI J
return
ÉÉ 
JsonConvert
ÉÉ &
.
ÉÉ& '
DeserializeObject
ÉÉ' 8
<
ÉÉ8 9
RespuestaSimple
ÉÉ9 H
>
ÉÉH I
(
ÉÉI J
body
ÉÉJ N
)
ÉÉN O
??
ÉÉP R
	respuesta
ÉÉS \
;
ÉÉ\ ]
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ "
HttpRequestException
ÖÖ '"
httpRequestException
ÖÖ( <
)
ÖÖ< =
{
ÜÜ 
	respuesta
áá 
.
áá 
	Resultado
áá #
=
áá$ %
(
áá& '
int
áá' *
)
áá* +
HttpStatusCode
áá+ 9
.
áá9 :!
InternalServerError
áá: M
;
ááM N
	respuesta
àà 
.
àà 
Mensaje
àà !
=
àà" #
$"
àà$ &
$str
àà& 4
{
àà4 5"
httpRequestException
àà5 I
.
ààI J
Message
ààJ Q
}
ààQ R
"
ààR S
;
ààS T
_logger
ââ 
.
ââ 
LogFatal
ââ  
(
ââ  !"
httpRequestException
ââ! 5
)
ââ5 6
;
ââ6 7
}
ää 
catch
ãã 
(
ãã 
JsonException
ãã  
jsonException
ãã! .
)
ãã. /
{
åå 
	respuesta
çç 
.
çç 
	Resultado
çç #
=
çç$ %
(
çç& '
int
çç' *
)
çç* +
HttpStatusCode
çç+ 9
.
çç9 :!
InternalServerError
çç: M
;
ççM N
	respuesta
éé 
.
éé 
Mensaje
éé !
=
éé" #
$"
éé$ &
$str
éé& K
{
ééK L
jsonException
ééL Y
.
ééY Z
Message
ééZ a
}
ééa b
"
ééb c
;
ééc d
_logger
èè 
.
èè 
LogFatal
èè  
(
èè  !
jsonException
èè! .
)
èè. /
;
èè/ 0
}
êê 
catch
ëë 
(
ëë 
	Exception
ëë 
ex
ëë 
)
ëë  
{
íí 
	respuesta
ìì 
.
ìì 
	Resultado
ìì #
=
ìì$ %
(
ìì& '
int
ìì' *
)
ìì* +
HttpStatusCode
ìì+ 9
.
ìì9 :!
InternalServerError
ìì: M
;
ììM N
	respuesta
îî 
.
îî 
Mensaje
îî !
=
îî" #
$"
îî$ &
$str
îî& 8
{
îî8 9
ex
îî9 ;
.
îî; <
Message
îî< C
}
îîC D
"
îîD E
;
îîE F
_logger
ïï 
.
ïï 
LogFatal
ïï  
(
ïï  !
ex
ïï! #
)
ïï# $
;
ïï$ %
}
ññ 
return
óó 
	respuesta
óó 
;
óó 
}
òò 
public
õõ 
static
õõ 
async
õõ 
Task
õõ  $
<
õõ$ %
RespuestaSimple
õõ% 4
>
õõ4 5
QuitarLikeAsync
õõ6 E
(
õõE F
string
õõF L
token
õõM R
,
õõR S
int
õõT W
idPublicacion
õõX e
)
õõe f
{
úú 
RespuestaSimple
ùù 
	respuesta
ùù  )
=
ùù* +
new
ùù, /
(
ùù/ 0
)
ùù0 1
;
ùù1 2
using
ûû 
var
ûû 

httpClient
ûû $
=
ûû% &
new
ûû' *

HttpClient
ûû+ 5
(
ûû5 6
)
ûû6 7
;
ûû7 8

httpClient
üü 
.
üü #
DefaultRequestHeaders
üü 0
.
üü0 1
Authorization
üü1 >
=
üü? @
new
üüA D'
AuthenticationHeaderValue
üüE ^
(
üü^ _
$str
üü_ g
,
üüg h
token
üüi n
)
üün o
;
üüo p
try
°° 
{
¢¢ 
var
££ 
response
££  
=
££! "
await
££# (

httpClient
££) 3
.
££3 4
DeleteAsync
££4 ?
(
££? @
$"
§§ 
{
§§ 
	Resources
§§ $
.
§§$ %
BASE_URL
§§% -
}
§§- .
$str
§§. <
{
§§< =
idPublicacion
§§= J
}
§§J K
$str
§§K P
"
§§P Q
)
•• 
;
•• 
var
ßß 
body
ßß 
=
ßß 
await
ßß $
response
ßß% -
.
ßß- .
Content
ßß. 5
.
ßß5 6
ReadAsStringAsync
ßß6 G
(
ßßG H
)
ßßH I
;
ßßI J
return
®® 
JsonConvert
®® &
.
®®& '
DeserializeObject
®®' 8
<
®®8 9
RespuestaSimple
®®9 H
>
®®H I
(
®®I J
body
®®J N
)
®®N O
??
®®P R
	respuesta
®®S \
;
®®\ ]
}
©© 
catch
™™ 
(
™™ "
HttpRequestException
™™ '"
httpRequestException
™™( <
)
™™< =
{
´´ 
	respuesta
¨¨ 
.
¨¨ 
	Resultado
¨¨ #
=
¨¨$ %
(
¨¨& '
int
¨¨' *
)
¨¨* +
HttpStatusCode
¨¨+ 9
.
¨¨9 :!
InternalServerError
¨¨: M
;
¨¨M N
	respuesta
≠≠ 
.
≠≠ 
Mensaje
≠≠ !
=
≠≠" #
$"
≠≠$ &
$str
≠≠& 4
{
≠≠4 5"
httpRequestException
≠≠5 I
.
≠≠I J
Message
≠≠J Q
}
≠≠Q R
"
≠≠R S
;
≠≠S T
_logger
ÆÆ 
.
ÆÆ 
LogFatal
ÆÆ  
(
ÆÆ  !"
httpRequestException
ÆÆ! 5
)
ÆÆ5 6
;
ÆÆ6 7
}
ØØ 
catch
∞∞ 
(
∞∞ 
JsonException
∞∞  
jsonException
∞∞! .
)
∞∞. /
{
±± 
	respuesta
≤≤ 
.
≤≤ 
	Resultado
≤≤ #
=
≤≤$ %
(
≤≤& '
int
≤≤' *
)
≤≤* +
HttpStatusCode
≤≤+ 9
.
≤≤9 :!
InternalServerError
≤≤: M
;
≤≤M N
	respuesta
≥≥ 
.
≥≥ 
Mensaje
≥≥ !
=
≥≥" #
$"
≥≥$ &
$str
≥≥& K
{
≥≥K L
jsonException
≥≥L Y
.
≥≥Y Z
Message
≥≥Z a
}
≥≥a b
"
≥≥b c
;
≥≥c d
_logger
¥¥ 
.
¥¥ 
LogFatal
¥¥  
(
¥¥  !
jsonException
¥¥! .
)
¥¥. /
;
¥¥/ 0
}
µµ 
catch
∂∂ 
(
∂∂ 
	Exception
∂∂ 
ex
∂∂ 
)
∂∂  
{
∑∑ 
	respuesta
∏∏ 
.
∏∏ 
	Resultado
∏∏ #
=
∏∏$ %
(
∏∏& '
int
∏∏' *
)
∏∏* +
HttpStatusCode
∏∏+ 9
.
∏∏9 :!
InternalServerError
∏∏: M
;
∏∏M N
	respuesta
ππ 
.
ππ 
Mensaje
ππ !
=
ππ" #
$"
ππ$ &
$str
ππ& 8
{
ππ8 9
ex
ππ9 ;
.
ππ; <
Message
ππ< C
}
ππC D
"
ππD E
;
ππE F
_logger
∫∫ 
.
∫∫ 
LogFatal
∫∫  
(
∫∫  !
ex
∫∫! #
)
∫∫# $
;
∫∫$ %
}
ªª 
return
ºº 
	respuesta
ºº 
;
ºº 
}
ΩΩ 
public
¿¿ 
static
¿¿ 
async
¿¿ 
Task
¿¿  
<
¿¿  !
RespuestaLike
¿¿! .
>
¿¿. / 
VerificarLikeAsync
¿¿0 B
(
¿¿B C
string
¿¿C I
token
¿¿J O
,
¿¿O P
int
¿¿Q T
idPublicacion
¿¿U b
)
¿¿b c
{
¡¡ 
var
¬¬ 
	respuesta
¬¬ 
=
¬¬ 
new
¬¬  #
RespuestaLike
¬¬$ 1
(
¬¬1 2
)
¬¬2 3
;
¬¬3 4
using
√√ 
var
√√ 

httpClient
√√ $
=
√√% &
new
√√' *

HttpClient
√√+ 5
(
√√5 6
)
√√6 7
;
√√7 8

httpClient
ƒƒ 
.
ƒƒ #
DefaultRequestHeaders
ƒƒ 0
.
ƒƒ0 1
Authorization
ƒƒ1 >
=
ƒƒ? @
new
ƒƒA D'
AuthenticationHeaderValue
ƒƒE ^
(
ƒƒ^ _
$str
ƒƒ_ g
,
ƒƒg h
token
ƒƒi n
)
ƒƒn o
;
ƒƒo p
try
∆∆ 
{
«« 
var
»» 
response
»»  
=
»»! "
await
»»# (

httpClient
»») 3
.
»»3 4
GetAsync
»»4 <
(
»»< =
$"
…… 
{
…… 
	Resources
…… $
.
……$ %
BASE_URL
……% -
}
……- .
$str
……. <
{
……< =
idPublicacion
……= J
}
……J K
$str
……K P
"
……P Q
)
   
;
   
var
ÃÃ 
body
ÃÃ 
=
ÃÃ 
await
ÃÃ $
response
ÃÃ% -
.
ÃÃ- .
Content
ÃÃ. 5
.
ÃÃ5 6
ReadAsStringAsync
ÃÃ6 G
(
ÃÃG H
)
ÃÃH I
;
ÃÃI J
return
ŒŒ 
JsonConvert
ŒŒ "
.
ŒŒ" #
DeserializeObject
ŒŒ# 4
<
ŒŒ4 5
RespuestaLike
ŒŒ5 B
>
ŒŒB C
(
ŒŒC D
body
ŒŒD H
)
ŒŒH I
??
ŒŒJ L
	respuesta
ŒŒM V
;
ŒŒV W
}
œœ 
catch
–– 
(
–– "
HttpRequestException
–– '"
httpRequestException
––( <
)
––< =
{
—— 
	respuesta
““ 
.
““ 
	Resultado
““ #
=
““$ %
(
““& '
int
““' *
)
““* +
HttpStatusCode
““+ 9
.
““9 :!
InternalServerError
““: M
;
““M N
	respuesta
”” 
.
”” 
Mensaje
”” !
=
””" #
$"
””$ &
$str
””& 4
{
””4 5"
httpRequestException
””5 I
.
””I J
Message
””J Q
}
””Q R
"
””R S
;
””S T
_logger
‘‘ 
.
‘‘ 
LogFatal
‘‘  
(
‘‘  !"
httpRequestException
‘‘! 5
)
‘‘5 6
;
‘‘6 7
}
’’ 
catch
÷÷ 
(
÷÷ 
JsonException
÷÷  
jsonException
÷÷! .
)
÷÷. /
{
◊◊ 
	respuesta
ÿÿ 
.
ÿÿ 
	Resultado
ÿÿ #
=
ÿÿ$ %
(
ÿÿ& '
int
ÿÿ' *
)
ÿÿ* +
HttpStatusCode
ÿÿ+ 9
.
ÿÿ9 :!
InternalServerError
ÿÿ: M
;
ÿÿM N
	respuesta
ŸŸ 
.
ŸŸ 
Mensaje
ŸŸ !
=
ŸŸ" #
$"
ŸŸ$ &
$str
ŸŸ& K
{
ŸŸK L
jsonException
ŸŸL Y
.
ŸŸY Z
Message
ŸŸZ a
}
ŸŸa b
"
ŸŸb c
;
ŸŸc d
_logger
⁄⁄ 
.
⁄⁄ 
LogFatal
⁄⁄  
(
⁄⁄  !
jsonException
⁄⁄! .
)
⁄⁄. /
;
⁄⁄/ 0
}
€€ 
catch
‹‹ 
(
‹‹ 
	Exception
‹‹ 
ex
‹‹ 
)
‹‹  
{
›› 
	respuesta
ﬁﬁ 
.
ﬁﬁ 
	Resultado
ﬁﬁ #
=
ﬁﬁ$ %
(
ﬁﬁ& '
int
ﬁﬁ' *
)
ﬁﬁ* +
HttpStatusCode
ﬁﬁ+ 9
.
ﬁﬁ9 :!
InternalServerError
ﬁﬁ: M
;
ﬁﬁM N
	respuesta
ﬂﬂ 
.
ﬂﬂ 
Mensaje
ﬂﬂ !
=
ﬂﬂ" #
$"
ﬂﬂ$ &
$str
ﬂﬂ& 8
{
ﬂﬂ8 9
ex
ﬂﬂ9 ;
.
ﬂﬂ; <
Message
ﬂﬂ< C
}
ﬂﬂC D
"
ﬂﬂD E
;
ﬂﬂE F
_logger
‡‡ 
.
‡‡ 
LogFatal
‡‡  
(
‡‡  !
ex
‡‡! #
)
‡‡# $
;
‡‡$ %
}
·· 
return
‚‚ 
	respuesta
‚‚ 
;
‚‚ 
}
„„ 
public
ÂÂ 
static
ÂÂ 
async
ÂÂ 
Task
ÂÂ  $
<
ÂÂ$ %
RespuestaSimple
ÂÂ% 4
>
ÂÂ4 5)
RegistrarVisualizacionAsync
ÂÂ6 Q
(
ÂÂQ R
int
ÂÂR U
idPublicacion
ÂÂV c
)
ÂÂc d
{
ÊÊ 
RespuestaSimple
ÁÁ 
	respuesta
ÁÁ  )
=
ÁÁ* +
new
ÁÁ, /
(
ÁÁ/ 0
)
ÁÁ0 1
;
ÁÁ1 2
using
ËË 
var
ËË 

httpClient
ËË $
=
ËË% &
new
ËË' *

HttpClient
ËË+ 5
(
ËË5 6
)
ËË6 7
;
ËË7 8
try
ÍÍ 
{
ÎÎ 
var
ÏÏ 
response
ÏÏ  
=
ÏÏ! "
await
ÏÏ# (

httpClient
ÏÏ) 3
.
ÏÏ3 4
	PostAsync
ÏÏ4 =
(
ÏÏ= >
$"
ÌÌ 
{
ÌÌ 
	Resources
ÌÌ $
.
ÌÌ$ %
BASE_URL
ÌÌ% -
}
ÌÌ- .
$str
ÌÌ. <
{
ÌÌ< =
idPublicacion
ÌÌ= J
}
ÌÌJ K
$str
ÌÌK Q
"
ÌÌQ R
,
ÌÌR S
null
ÓÓ 
)
ÔÔ 
;
ÔÔ 
var
ÒÒ 
body
ÒÒ 
=
ÒÒ 
await
ÒÒ $
response
ÒÒ% -
.
ÒÒ- .
Content
ÒÒ. 5
.
ÒÒ5 6
ReadAsStringAsync
ÒÒ6 G
(
ÒÒG H
)
ÒÒH I
;
ÒÒI J
return
ÚÚ 
JsonConvert
ÚÚ &
.
ÚÚ& '
DeserializeObject
ÚÚ' 8
<
ÚÚ8 9
RespuestaSimple
ÚÚ9 H
>
ÚÚH I
(
ÚÚI J
body
ÚÚJ N
)
ÚÚN O
??
ÚÚP R
	respuesta
ÚÚS \
;
ÚÚ\ ]
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ "
HttpRequestException
ÙÙ '"
httpRequestException
ÙÙ( <
)
ÙÙ< =
{
ıı 
	respuesta
ˆˆ 
.
ˆˆ 
	Resultado
ˆˆ #
=
ˆˆ$ %
(
ˆˆ& '
int
ˆˆ' *
)
ˆˆ* +
HttpStatusCode
ˆˆ+ 9
.
ˆˆ9 :!
InternalServerError
ˆˆ: M
;
ˆˆM N
	respuesta
˜˜ 
.
˜˜ 
Mensaje
˜˜ !
=
˜˜" #
$"
˜˜$ &
$str
˜˜& 4
{
˜˜4 5"
httpRequestException
˜˜5 I
.
˜˜I J
Message
˜˜J Q
}
˜˜Q R
"
˜˜R S
;
˜˜S T
_logger
¯¯ 
.
¯¯ 
LogFatal
¯¯  
(
¯¯  !"
httpRequestException
¯¯! 5
)
¯¯5 6
;
¯¯6 7
}
˘˘ 
catch
˙˙ 
(
˙˙ 
JsonException
˙˙  
jsonException
˙˙! .
)
˙˙. /
{
˚˚ 
	respuesta
¸¸ 
.
¸¸ 
	Resultado
¸¸ #
=
¸¸$ %
(
¸¸& '
int
¸¸' *
)
¸¸* +
HttpStatusCode
¸¸+ 9
.
¸¸9 :!
InternalServerError
¸¸: M
;
¸¸M N
	respuesta
˝˝ 
.
˝˝ 
Mensaje
˝˝ !
=
˝˝" #
$"
˝˝$ &
$str
˝˝& K
{
˝˝K L
jsonException
˝˝L Y
.
˝˝Y Z
Message
˝˝Z a
}
˝˝a b
"
˝˝b c
;
˝˝c d
_logger
˛˛ 
.
˛˛ 
LogFatal
˛˛  
(
˛˛  !
jsonException
˛˛! .
)
˛˛. /
;
˛˛/ 0
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ 
ex
ÄÄ 
)
ÄÄ  
{
ÅÅ 
	respuesta
ÇÇ 
.
ÇÇ 
	Resultado
ÇÇ #
=
ÇÇ$ %
(
ÇÇ& '
int
ÇÇ' *
)
ÇÇ* +
HttpStatusCode
ÇÇ+ 9
.
ÇÇ9 :!
InternalServerError
ÇÇ: M
;
ÇÇM N
	respuesta
ÉÉ 
.
ÉÉ 
Mensaje
ÉÉ !
=
ÉÉ" #
$"
ÉÉ$ &
$str
ÉÉ& 8
{
ÉÉ8 9
ex
ÉÉ9 ;
.
ÉÉ; <
Message
ÉÉ< C
}
ÉÉC D
"
ÉÉD E
;
ÉÉE F
_logger
ÑÑ 
.
ÑÑ 
LogFatal
ÑÑ  
(
ÑÑ  !
ex
ÑÑ! #
)
ÑÑ# $
;
ÑÑ$ %
}
ÖÖ 
return
ÜÜ 
	respuesta
ÜÜ 
;
ÜÜ 
}
áá 
public
ââ 
static
ââ 
async
ââ 
Task
ââ  $
<
ââ$ %
RespuestaSimple
ââ% 4
>
ââ4 5$
RegistrarDescargaAsync
ââ6 L
(
ââL M
string
ââM S
token
ââT Y
,
ââY Z
int
ââ[ ^
idPublicacion
ââ_ l
)
ââl m
{
ää 
RespuestaSimple
ãã 
	respuesta
ãã  )
=
ãã* +
new
ãã, /
(
ãã/ 0
)
ãã0 1
;
ãã1 2
using
åå 
var
åå 

httpClient
åå $
=
åå% &
new
åå' *

HttpClient
åå+ 5
(
åå5 6
)
åå6 7
;
åå7 8

httpClient
çç 
.
çç #
DefaultRequestHeaders
çç 0
.
çç0 1
Authorization
çç1 >
=
çç? @
new
ççA D'
AuthenticationHeaderValue
ççE ^
(
çç^ _
$str
çç_ g
,
ççg h
token
ççi n
)
ççn o
;
çço p
try
èè 
{
êê 
var
ëë 
response
ëë  
=
ëë! "
await
ëë# (

httpClient
ëë) 3
.
ëë3 4
	PostAsync
ëë4 =
(
ëë= >
$"
íí 
{
íí 
	Resources
íí $
.
íí$ %
BASE_URL
íí% -
}
íí- .
$str
íí. <
{
íí< =
idPublicacion
íí= J
}
ííJ K
$str
ííK T
"
ííT U
,
ííU V
null
ìì 
)
îî 
;
îî 
var
ññ 
body
ññ 
=
ññ 
await
ññ $
response
ññ% -
.
ññ- .
Content
ññ. 5
.
ññ5 6
ReadAsStringAsync
ññ6 G
(
ññG H
)
ññH I
;
ññI J
return
óó 
JsonConvert
óó &
.
óó& '
DeserializeObject
óó' 8
<
óó8 9
RespuestaSimple
óó9 H
>
óóH I
(
óóI J
body
óóJ N
)
óóN O
??
óóP R
	respuesta
óóS \
;
óó\ ]
}
òò 
catch
ôô 
(
ôô "
HttpRequestException
ôô '"
httpRequestException
ôô( <
)
ôô< =
{
öö 
	respuesta
õõ 
.
õõ 
	Resultado
õõ #
=
õõ$ %
(
õõ& '
int
õõ' *
)
õõ* +
HttpStatusCode
õõ+ 9
.
õõ9 :!
InternalServerError
õõ: M
;
õõM N
	respuesta
úú 
.
úú 
Mensaje
úú !
=
úú" #
$"
úú$ &
$str
úú& 4
{
úú4 5"
httpRequestException
úú5 I
.
úúI J
Message
úúJ Q
}
úúQ R
"
úúR S
;
úúS T
_logger
ùù 
.
ùù 
LogFatal
ùù  
(
ùù  !"
httpRequestException
ùù! 5
)
ùù5 6
;
ùù6 7
}
ûû 
catch
üü 
(
üü 
JsonException
üü  
jsonException
üü! .
)
üü. /
{
†† 
	respuesta
°° 
.
°° 
	Resultado
°° #
=
°°$ %
(
°°& '
int
°°' *
)
°°* +
HttpStatusCode
°°+ 9
.
°°9 :!
InternalServerError
°°: M
;
°°M N
	respuesta
¢¢ 
.
¢¢ 
Mensaje
¢¢ !
=
¢¢" #
$"
¢¢$ &
$str
¢¢& K
{
¢¢K L
jsonException
¢¢L Y
.
¢¢Y Z
Message
¢¢Z a
}
¢¢a b
"
¢¢b c
;
¢¢c d
_logger
££ 
.
££ 
LogFatal
££  
(
££  !
jsonException
££! .
)
££. /
;
££/ 0
}
§§ 
catch
•• 
(
•• 
	Exception
•• 
ex
•• 
)
••  
{
¶¶ 
	respuesta
ßß 
.
ßß 
	Resultado
ßß #
=
ßß$ %
(
ßß& '
int
ßß' *
)
ßß* +
HttpStatusCode
ßß+ 9
.
ßß9 :!
InternalServerError
ßß: M
;
ßßM N
	respuesta
®® 
.
®® 
Mensaje
®® !
=
®®" #
$"
®®$ &
$str
®®& 8
{
®®8 9
ex
®®9 ;
.
®®; <
Message
®®< C
}
®®C D
"
®®D E
;
®®E F
_logger
©© 
.
©© 
LogFatal
©©  
(
©©  !
ex
©©! #
)
©©# $
;
©©$ %
}
™™ 
return
´´ 
	respuesta
´´ 
;
´´ 
}
¨¨ 
public
ÆÆ 
static
ÆÆ 
async
ÆÆ 
Task
ÆÆ  $
<
ÆÆ$ %
RespuestaSimple
ÆÆ% 4
>
ÆÆ4 5%
AprobarPublicacionAsync
ÆÆ6 M
(
ÆÆM N
string
ÆÆN T
token
ÆÆU Z
,
ÆÆZ [
int
ÆÆ\ _
idPublicacion
ÆÆ` m
)
ÆÆm n
{
ØØ 
RespuestaSimple
∞∞ 
	respuesta
∞∞  )
=
∞∞* +
new
∞∞, /
(
∞∞/ 0
)
∞∞0 1
;
∞∞1 2
using
±± 
var
±± 

httpClient
±± $
=
±±% &
new
±±' *

HttpClient
±±+ 5
(
±±5 6
)
±±6 7
;
±±7 8

httpClient
≤≤ 
.
≤≤ #
DefaultRequestHeaders
≤≤ 0
.
≤≤0 1
Authorization
≤≤1 >
=
≤≤? @
new
≤≤A D'
AuthenticationHeaderValue
≤≤E ^
(
≤≤^ _
$str
≤≤_ g
,
≤≤g h
token
≤≤i n
)
≤≤n o
;
≤≤o p
try
¥¥ 
{
µµ 
var
∂∂ 
response
∂∂  
=
∂∂! "
await
∂∂# (

httpClient
∂∂) 3
.
∂∂3 4

PatchAsync
∂∂4 >
(
∂∂> ?
$"
∑∑ 
{
∑∑ 
	Resources
∑∑ $
.
∑∑$ %
BASE_URL
∑∑% -
}
∑∑- .
$str
∑∑. <
{
∑∑< =
idPublicacion
∑∑= J
}
∑∑J K
$str
∑∑K S
"
∑∑S T
,
∑∑T U
null
∏∏ 
)
ππ 
;
ππ 
var
ªª 
body
ªª 
=
ªª 
await
ªª $
response
ªª% -
.
ªª- .
Content
ªª. 5
.
ªª5 6
ReadAsStringAsync
ªª6 G
(
ªªG H
)
ªªH I
;
ªªI J
return
ºº 
JsonConvert
ºº &
.
ºº& '
DeserializeObject
ºº' 8
<
ºº8 9
RespuestaSimple
ºº9 H
>
ººH I
(
ººI J
body
ººJ N
)
ººN O
??
ººP R
	respuesta
ººS \
;
ºº\ ]
}
ΩΩ 
catch
ææ 
(
ææ "
HttpRequestException
ææ '"
httpRequestException
ææ( <
)
ææ< =
{
øø 
	respuesta
¿¿ 
.
¿¿ 
	Resultado
¿¿ #
=
¿¿$ %
(
¿¿& '
int
¿¿' *
)
¿¿* +
HttpStatusCode
¿¿+ 9
.
¿¿9 :!
InternalServerError
¿¿: M
;
¿¿M N
	respuesta
¡¡ 
.
¡¡ 
Mensaje
¡¡ !
=
¡¡" #
$"
¡¡$ &
$str
¡¡& 4
{
¡¡4 5"
httpRequestException
¡¡5 I
.
¡¡I J
Message
¡¡J Q
}
¡¡Q R
"
¡¡R S
;
¡¡S T
_logger
¬¬ 
.
¬¬ 
LogFatal
¬¬  
(
¬¬  !"
httpRequestException
¬¬! 5
)
¬¬5 6
;
¬¬6 7
}
√√ 
catch
ƒƒ 
(
ƒƒ 
JsonException
ƒƒ  
jsonException
ƒƒ! .
)
ƒƒ. /
{
≈≈ 
	respuesta
∆∆ 
.
∆∆ 
	Resultado
∆∆ #
=
∆∆$ %
(
∆∆& '
int
∆∆' *
)
∆∆* +
HttpStatusCode
∆∆+ 9
.
∆∆9 :!
InternalServerError
∆∆: M
;
∆∆M N
	respuesta
«« 
.
«« 
Mensaje
«« !
=
««" #
$"
««$ &
$str
««& K
{
««K L
jsonException
««L Y
.
««Y Z
Message
««Z a
}
««a b
"
««b c
;
««c d
_logger
»» 
.
»» 
LogFatal
»»  
(
»»  !
jsonException
»»! .
)
»». /
;
»»/ 0
}
…… 
catch
   
(
   
	Exception
   
ex
   
)
    
{
ÀÀ 
	respuesta
ÃÃ 
.
ÃÃ 
	Resultado
ÃÃ #
=
ÃÃ$ %
(
ÃÃ& '
int
ÃÃ' *
)
ÃÃ* +
HttpStatusCode
ÃÃ+ 9
.
ÃÃ9 :!
InternalServerError
ÃÃ: M
;
ÃÃM N
	respuesta
ÕÕ 
.
ÕÕ 
Mensaje
ÕÕ !
=
ÕÕ" #
$"
ÕÕ$ &
$str
ÕÕ& 8
{
ÕÕ8 9
ex
ÕÕ9 ;
.
ÕÕ; <
Message
ÕÕ< C
}
ÕÕC D
"
ÕÕD E
;
ÕÕE F
_logger
ŒŒ 
.
ŒŒ 
LogFatal
ŒŒ  
(
ŒŒ  !
ex
ŒŒ! #
)
ŒŒ# $
;
ŒŒ$ %
}
œœ 
return
–– 
	respuesta
–– 
;
–– 
}
—— 
public
”” 
static
”” 
async
”” 
Task
””  $
<
””$ %
RespuestaSimple
””% 4
>
””4 5&
RechazarPublicacionAsync
””6 N
(
””N O
string
””O U
token
””V [
,
””[ \
int
””] `
idPublicacion
””a n
)
””n o
{
‘‘ 
RespuestaSimple
’’ 
	respuesta
’’  )
=
’’* +
new
’’, /
(
’’/ 0
)
’’0 1
;
’’1 2
using
÷÷ 
var
÷÷ 

httpClient
÷÷ $
=
÷÷% &
new
÷÷' *

HttpClient
÷÷+ 5
(
÷÷5 6
)
÷÷6 7
;
÷÷7 8

httpClient
◊◊ 
.
◊◊ #
DefaultRequestHeaders
◊◊ 0
.
◊◊0 1
Authorization
◊◊1 >
=
◊◊? @
new
◊◊A D'
AuthenticationHeaderValue
◊◊E ^
(
◊◊^ _
$str
◊◊_ g
,
◊◊g h
token
◊◊i n
)
◊◊n o
;
◊◊o p
try
ŸŸ 
{
⁄⁄ 
var
€€ 
response
€€  
=
€€! "
await
€€# (

httpClient
€€) 3
.
€€3 4

PatchAsync
€€4 >
(
€€> ?
$"
‹‹ 
{
‹‹ 
	Resources
‹‹ $
.
‹‹$ %
BASE_URL
‹‹% -
}
‹‹- .
$str
‹‹. <
{
‹‹< =
idPublicacion
‹‹= J
}
‹‹J K
$str
‹‹K T
"
‹‹T U
,
‹‹U V
null
›› 
)
ﬁﬁ 
;
ﬁﬁ 
var
‡‡ 
body
‡‡ 
=
‡‡ 
await
‡‡ $
response
‡‡% -
.
‡‡- .
Content
‡‡. 5
.
‡‡5 6
ReadAsStringAsync
‡‡6 G
(
‡‡G H
)
‡‡H I
;
‡‡I J
return
·· 
JsonConvert
·· &
.
··& '
DeserializeObject
··' 8
<
··8 9
RespuestaSimple
··9 H
>
··H I
(
··I J
body
··J N
)
··N O
??
··P R
	respuesta
··S \
;
··\ ]
}
‚‚ 
catch
„„ 
(
„„ "
HttpRequestException
„„ '"
httpRequestException
„„( <
)
„„< =
{
‰‰ 
	respuesta
ÂÂ 
.
ÂÂ 
	Resultado
ÂÂ #
=
ÂÂ$ %
(
ÂÂ& '
int
ÂÂ' *
)
ÂÂ* +
HttpStatusCode
ÂÂ+ 9
.
ÂÂ9 :!
InternalServerError
ÂÂ: M
;
ÂÂM N
	respuesta
ÊÊ 
.
ÊÊ 
Mensaje
ÊÊ !
=
ÊÊ" #
$"
ÊÊ$ &
$str
ÊÊ& 4
{
ÊÊ4 5"
httpRequestException
ÊÊ5 I
.
ÊÊI J
Message
ÊÊJ Q
}
ÊÊQ R
"
ÊÊR S
;
ÊÊS T
_logger
ÁÁ 
.
ÁÁ 
LogFatal
ÁÁ  
(
ÁÁ  !"
httpRequestException
ÁÁ! 5
)
ÁÁ5 6
;
ÁÁ6 7
}
ËË 
catch
ÈÈ 
(
ÈÈ 
JsonException
ÈÈ  
jsonException
ÈÈ! .
)
ÈÈ. /
{
ÍÍ 
	respuesta
ÎÎ 
.
ÎÎ 
	Resultado
ÎÎ #
=
ÎÎ$ %
(
ÎÎ& '
int
ÎÎ' *
)
ÎÎ* +
HttpStatusCode
ÎÎ+ 9
.
ÎÎ9 :!
InternalServerError
ÎÎ: M
;
ÎÎM N
	respuesta
ÏÏ 
.
ÏÏ 
Mensaje
ÏÏ !
=
ÏÏ" #
$"
ÏÏ$ &
$str
ÏÏ& K
{
ÏÏK L
jsonException
ÏÏL Y
.
ÏÏY Z
Message
ÏÏZ a
}
ÏÏa b
"
ÏÏb c
;
ÏÏc d
_logger
ÌÌ 
.
ÌÌ 
LogFatal
ÌÌ  
(
ÌÌ  !
jsonException
ÌÌ! .
)
ÌÌ. /
;
ÌÌ/ 0
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
	Exception
ÔÔ 
ex
ÔÔ 
)
ÔÔ  
{
 
	respuesta
ÒÒ 
.
ÒÒ 
	Resultado
ÒÒ #
=
ÒÒ$ %
(
ÒÒ& '
int
ÒÒ' *
)
ÒÒ* +
HttpStatusCode
ÒÒ+ 9
.
ÒÒ9 :!
InternalServerError
ÒÒ: M
;
ÒÒM N
	respuesta
ÚÚ 
.
ÚÚ 
Mensaje
ÚÚ !
=
ÚÚ" #
$"
ÚÚ$ &
$str
ÚÚ& 8
{
ÚÚ8 9
ex
ÚÚ9 ;
.
ÚÚ; <
Message
ÚÚ< C
}
ÚÚC D
"
ÚÚD E
;
ÚÚE F
_logger
ÛÛ 
.
ÛÛ 
LogFatal
ÛÛ  
(
ÛÛ  !
ex
ÛÛ! #
)
ÛÛ# $
;
ÛÛ$ %
}
ÙÙ 
return
ıı 
	respuesta
ıı 
;
ıı 
}
ˆˆ 
}
˜˜ 	
}¯¯ ÜÌ
ãC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\PerfilServicio.cs
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
$str	{ É
,
É Ñ
token
Ö ä
)
ä ã
;
ã å
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
$str	zz| é
)
zzé è
;
zzè ê
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
ÇÇ 
catch
ÉÉ 
(
ÉÉ "
HttpRequestException
ÉÉ +"
httpRequestException
ÉÉ, @
)
ÉÉ@ A
{
ÑÑ 
	respuesta
ÖÖ 
.
ÖÖ 
Estado
ÖÖ $
=
ÖÖ% &
(
ÖÖ' (
int
ÖÖ( +
)
ÖÖ+ ,
HttpStatusCode
ÖÖ, :
.
ÖÖ: ;!
InternalServerError
ÖÖ; N
;
ÖÖN O
	respuesta
ÜÜ 
.
ÜÜ 
Mensaje
ÜÜ %
=
ÜÜ& '
$"
ÜÜ( *
$str
ÜÜ* 8
{
ÜÜ8 9"
httpRequestException
ÜÜ9 M
.
ÜÜM N
Message
ÜÜN U
}
ÜÜU V
"
ÜÜV W
;
ÜÜW X
_logger
áá 
.
áá 
LogFatal
áá $
(
áá$ %"
httpRequestException
áá% 9
)
áá9 :
;
áá: ;
}
àà 
catch
ââ 
(
ââ 
	Exception
ââ  
ex
ââ! #
)
ââ# $
{
ää 
	respuesta
ãã 
.
ãã 
Estado
ãã $
=
ãã% &
(
ãã' (
int
ãã( +
)
ãã+ ,
HttpStatusCode
ãã, :
.
ãã: ;!
InternalServerError
ãã; N
;
ããN O
	respuesta
åå 
.
åå 
Mensaje
åå %
=
åå& '
$"
åå( *
$str
åå* <
{
åå< =
ex
åå= ?
.
åå? @
Message
åå@ G
}
ååG H
"
ååH I
;
ååI J
_logger
çç 
.
çç 
LogFatal
çç $
(
çç$ %
ex
çç% '
)
çç' (
;
çç( )
}
éé 
}
êê 
return
ëë 
	respuesta
ëë 
;
ëë 
}
íí 	
public
îî 
static
îî 
async
îî 
Task
îî  
<
îî  !
RespuestaApi
îî! -
>
îî- ."
DejarDeSeguirUsuario
îî/ C
(
îîC D
int
îîD G
idUsuarioSeguido
îîH X
,
îîX Y
string
îîZ `
token
îîa f
)
îîf g
{
ïï 	
var
ññ 
	respuesta
ññ 
=
ññ 
new
ññ 
RespuestaApi
ññ  ,
(
ññ, -
)
ññ- .
;
ññ. /
using
óó 
(
óó 
var
óó 

httpClient
óó !
=
óó" #
new
óó$ '

HttpClient
óó( 2
(
óó2 3
)
óó3 4
)
óó4 5
{
òò 
try
ôô 
{
öö 

httpClient
õõ 
.
õõ #
DefaultRequestHeaders
õõ 4
.
õõ4 5
Authorization
õõ5 B
=
õõC D
new
õõE H'
AuthenticationHeaderValue
õõI b
(
õõb c
$str
õõc k
,
õõk l
token
õõm r
)
õõr s
;
õõs t
var
úú 
	contenido
úú !
=
úú" #
new
úú$ '
StringContent
úú( 5
(
úú5 6
JsonConvert
úú6 A
.
úúA B
SerializeObject
úúB Q
(
úúQ R
new
úúR U
{
úúV W
idUsuarioSeguido
úúX h
}
úúi j
)
úúj k
,
úúk l
Encoding
úúm u
.
úúu v
UTF8
úúv z
,
úúz {
$strúú| é
)úúé è
;úúè ê
var
ûû 
request
ûû 
=
ûû  !
new
ûû" % 
HttpRequestMessage
ûû& 8
(
ûû8 9

HttpMethod
ûû9 C
.
ûûC D
Delete
ûûD J
,
ûûJ K
$"
ûûL N
{
ûûN O
	Resources
ûûO X
.
ûûX Y
BASE_URL
ûûY a
}
ûûa b
$str
ûûb z
"
ûûz {
)
ûû{ |
{
üü 
Content
†† 
=
††  !
	contenido
††" +
}
°° 
;
°° 
var
££ 
	resultado
££ !
=
££" #
await
££$ )

httpClient
££* 4
.
££4 5
	SendAsync
££5 >
(
££> ?
request
££? F
)
££F G
;
££G H
string
§§ 
json
§§ 
=
§§  !
await
§§" '
	resultado
§§( 1
.
§§1 2
Content
§§2 9
.
§§9 :
ReadAsStringAsync
§§: K
(
§§K L
)
§§L M
;
§§M N
	respuesta
¶¶ 
=
¶¶ 
JsonConvert
¶¶  +
.
¶¶+ ,
DeserializeObject
¶¶, =
<
¶¶= >
RespuestaApi
¶¶> J
>
¶¶J K
(
¶¶K L
json
¶¶L P
)
¶¶P Q
;
¶¶Q R
}
ßß 
catch
®® 
(
®® "
HttpRequestException
®® /"
httpRequestException
®®0 D
)
®®D E
{
©© 
	respuesta
™™ 
.
™™ 
Estado
™™ $
=
™™% &
(
™™' (
int
™™( +
)
™™+ ,
HttpStatusCode
™™, :
.
™™: ;!
InternalServerError
™™; N
;
™™N O
	respuesta
´´ 
.
´´ 
Mensaje
´´ %
=
´´& '
$"
´´( *
$str
´´* 8
{
´´8 9"
httpRequestException
´´9 M
.
´´M N
Message
´´N U
}
´´U V
"
´´V W
;
´´W X
_logger
¨¨ 
.
¨¨ 
LogFatal
¨¨ $
(
¨¨$ %"
httpRequestException
¨¨% 9
)
¨¨9 :
;
¨¨: ;
}
≠≠ 
catch
ØØ 
(
ØØ 
	Exception
ØØ $
ex
ØØ% '
)
ØØ' (
{
∞∞ 
	respuesta
±± 
.
±± 
Estado
±± $
=
±±% &
(
±±' (
int
±±( +
)
±±+ ,
HttpStatusCode
±±, :
.
±±: ;!
InternalServerError
±±; N
;
±±N O
	respuesta
≤≤ 
.
≤≤ 
Mensaje
≤≤ %
=
≤≤& '
$"
≤≤( *
$str
≤≤* <
{
≤≤< =
ex
≤≤= ?
.
≤≤? @
Message
≤≤@ G
}
≤≤G H
"
≤≤H I
;
≤≤I J
_logger
≥≥ 
.
≥≥ 
LogFatal
≥≥ $
(
≥≥$ %
ex
≥≥% '
)
≥≥' (
;
≥≥( )
}
¥¥ 
}
µµ 	
return
∂∂ 
	respuesta
∂∂ 
;
∂∂ 
}
∑∑ 	
public
ππ 
static
ππ 
async
ππ 
Task
ππ  
<
ππ  !
RespuestaApi
ππ! -
<
ππ- .
List
ππ. 2
<
ππ2 3 
UsuarioSeguimiento
ππ3 E
>
ππE F
>
ππF G
>
ππG H
ObtenerSeguidores
ππI Z
(
ππZ [
string
ππ[ a
token
ππb g
)
ππg h
{
∫∫ 	
var
ªª 
	respuesta
ªª 
=
ªª 
new
ªª 
RespuestaApi
ªª  ,
<
ªª, -
List
ªª- 1
<
ªª1 2 
UsuarioSeguimiento
ªª2 D
>
ªªD E
>
ªªE F
(
ªªF G
)
ªªG H
;
ªªH I
using
ºº 
(
ºº 
var
ºº 

httpClient
ºº !
=
ºº" #
new
ºº$ '

HttpClient
ºº( 2
(
ºº2 3
)
ºº3 4
)
ºº4 5
{
ΩΩ 
try
ææ 
{
øø 

httpClient
¡¡ 
.
¡¡ #
DefaultRequestHeaders
¡¡ 4
.
¡¡4 5
Authorization
¡¡5 B
=
¡¡C D
new
¡¡E H'
AuthenticationHeaderValue
¡¡I b
(
¡¡b c
$str
¡¡c k
,
¡¡k l
token
¡¡m r
)
¡¡r s
;
¡¡s t
var
¬¬ 
	resultado
¬¬ !
=
¬¬" #
await
¬¬$ )

httpClient
¬¬* 4
.
¬¬4 5
GetAsync
¬¬5 =
(
¬¬= >
$"
¬¬> @
{
¬¬@ A
	Resources
¬¬A J
.
¬¬J K
BASE_URL
¬¬K S
}
¬¬S T
$str
¬¬T j
"
¬¬j k
)
¬¬k l
;
¬¬l m
string
ƒƒ 
json
ƒƒ 
=
ƒƒ  !
await
ƒƒ" '
	resultado
ƒƒ( 1
.
ƒƒ1 2
Content
ƒƒ2 9
.
ƒƒ9 :
ReadAsStringAsync
ƒƒ: K
(
ƒƒK L
)
ƒƒL M
;
ƒƒM N
	respuesta
≈≈ 
=
≈≈ 
JsonConvert
≈≈  +
.
≈≈+ ,
DeserializeObject
≈≈, =
<
≈≈= >
RespuestaApi
≈≈> J
<
≈≈J K
List
≈≈K O
<
≈≈O P 
UsuarioSeguimiento
≈≈P b
>
≈≈b c
>
≈≈c d
>
≈≈d e
(
≈≈e f
json
≈≈f j
)
≈≈j k
;
≈≈k l
}
∆∆ 
catch
«« 
(
«« "
HttpRequestException
«« +"
httpRequestException
««, @
)
««@ A
{
»» 
	respuesta
…… 
.
…… 
Estado
…… $
=
……% &
(
……' (
int
……( +
)
……+ ,
HttpStatusCode
……, :
.
……: ;!
InternalServerError
……; N
;
……N O
	respuesta
   
.
   
Mensaje
   %
=
  & '
$"
  ( *
$str
  * 8
{
  8 9"
httpRequestException
  9 M
.
  M N
Message
  N U
}
  U V
"
  V W
;
  W X
_logger
ÀÀ 
.
ÀÀ 
LogFatal
ÀÀ $
(
ÀÀ$ %"
httpRequestException
ÀÀ% 9
)
ÀÀ9 :
;
ÀÀ: ;
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ 
	Exception
ÕÕ  
ex
ÕÕ! #
)
ÕÕ# $
{
ŒŒ 
	respuesta
œœ 
.
œœ 
Estado
œœ $
=
œœ% &
(
œœ' (
int
œœ( +
)
œœ+ ,
HttpStatusCode
œœ, :
.
œœ: ;!
InternalServerError
œœ; N
;
œœN O
	respuesta
–– 
.
–– 
Mensaje
–– %
=
––& '
$"
––( *
$str
––* <
{
––< =
ex
––= ?
.
––? @
Message
––@ G
}
––G H
"
––H I
;
––I J
_logger
—— 
.
—— 
LogFatal
—— $
(
——$ %
ex
——% '
)
——' (
;
——( )
}
““ 
}
”” 
return
‘‘ 
	respuesta
‘‘ 
;
‘‘ 
}
’’ 	
public
◊◊ 
static
◊◊ 
async
◊◊ 
Task
◊◊  
<
◊◊  !
RespuestaApi
◊◊! -
<
◊◊- .
List
◊◊. 2
<
◊◊2 3 
UsuarioSeguimiento
◊◊3 E
>
◊◊E F
>
◊◊F G
>
◊◊G H
ObtenerSeguidos
◊◊I X
(
◊◊X Y
string
◊◊Y _
token
◊◊` e
)
◊◊e f
{
ÿÿ 	
var
ŸŸ 
	respuesta
ŸŸ 
=
ŸŸ 
new
ŸŸ 
RespuestaApi
ŸŸ  ,
<
ŸŸ, -
List
ŸŸ- 1
<
ŸŸ1 2 
UsuarioSeguimiento
ŸŸ2 D
>
ŸŸD E
>
ŸŸE F
(
ŸŸF G
)
ŸŸG H
;
ŸŸH I
using
⁄⁄ 
(
⁄⁄ 
var
⁄⁄ 

httpClient
⁄⁄ !
=
⁄⁄" #
new
⁄⁄$ '

HttpClient
⁄⁄( 2
(
⁄⁄2 3
)
⁄⁄3 4
)
⁄⁄4 5
{
€€ 
try
‹‹ 
{
›› 

httpClient
ﬂﬂ 
.
ﬂﬂ #
DefaultRequestHeaders
ﬂﬂ 4
.
ﬂﬂ4 5
Authorization
ﬂﬂ5 B
=
ﬂﬂC D
new
ﬂﬂE H'
AuthenticationHeaderValue
ﬂﬂI b
(
ﬂﬂb c
$str
ﬂﬂc k
,
ﬂﬂk l
token
ﬂﬂm r
)
ﬂﬂr s
;
ﬂﬂs t
var
‡‡ 
	resultado
‡‡ !
=
‡‡" #
await
‡‡$ )

httpClient
‡‡* 4
.
‡‡4 5
GetAsync
‡‡5 =
(
‡‡= >
$"
‡‡> @
{
‡‡@ A
	Resources
‡‡A J
.
‡‡J K
BASE_URL
‡‡K S
}
‡‡S T
$str
‡‡T h
"
‡‡h i
)
‡‡i j
;
‡‡j k
string
‚‚ 
json
‚‚ 
=
‚‚  !
await
‚‚" '
	resultado
‚‚( 1
.
‚‚1 2
Content
‚‚2 9
.
‚‚9 :
ReadAsStringAsync
‚‚: K
(
‚‚K L
)
‚‚L M
;
‚‚M N
	respuesta
„„ 
=
„„ 
JsonConvert
„„  +
.
„„+ ,
DeserializeObject
„„, =
<
„„= >
RespuestaApi
„„> J
<
„„J K
List
„„K O
<
„„O P 
UsuarioSeguimiento
„„P b
>
„„b c
>
„„c d
>
„„d e
(
„„e f
json
„„f j
)
„„j k
;
„„k l
}
ÁÁ 
catch
ËË 
(
ËË "
HttpRequestException
ËË +"
httpRequestException
ËË, @
)
ËË@ A
{
ÈÈ 
	respuesta
ÍÍ 
.
ÍÍ 
Estado
ÍÍ $
=
ÍÍ% &
(
ÍÍ' (
int
ÍÍ( +
)
ÍÍ+ ,
HttpStatusCode
ÍÍ, :
.
ÍÍ: ;!
InternalServerError
ÍÍ; N
;
ÍÍN O
	respuesta
ÎÎ 
.
ÎÎ 
Mensaje
ÎÎ %
=
ÎÎ& '
$"
ÎÎ( *
$str
ÎÎ* 8
{
ÎÎ8 9"
httpRequestException
ÎÎ9 M
.
ÎÎM N
Message
ÎÎN U
}
ÎÎU V
"
ÎÎV W
;
ÎÎW X
_logger
ÏÏ 
.
ÏÏ 
LogFatal
ÏÏ $
(
ÏÏ$ %"
httpRequestException
ÏÏ% 9
)
ÏÏ9 :
;
ÏÏ: ;
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ 
	Exception
ÓÓ  
ex
ÓÓ! #
)
ÓÓ# $
{
ÔÔ 
	respuesta
 
.
 
Estado
 $
=
% &
(
' (
int
( +
)
+ ,
HttpStatusCode
, :
.
: ;!
InternalServerError
; N
;
N O
	respuesta
ÒÒ 
.
ÒÒ 
Mensaje
ÒÒ %
=
ÒÒ& '
$"
ÒÒ( *
$str
ÒÒ* <
{
ÒÒ< =
ex
ÒÒ= ?
.
ÒÒ? @
Message
ÒÒ@ G
}
ÒÒG H
"
ÒÒH I
;
ÒÒI J
_logger
ÚÚ 
.
ÚÚ 
LogFatal
ÚÚ $
(
ÚÚ$ %
ex
ÚÚ% '
)
ÚÚ' (
;
ÚÚ( )
}
ÛÛ 
}
ˆˆ 
return
˜˜ 
	respuesta
˜˜ 
;
˜˜ 
}
¯¯ 	
public
˙˙ 
static
˙˙ 
async
˙˙ 
Task
˙˙  
<
˙˙  !
RespuestaApi
˙˙! -
>
˙˙- ."
VerificarSeguimiento
˙˙/ C
(
˙˙C D
int
˙˙D G
idUsuarioSeguido
˙˙H X
,
˙˙X Y
string
˙˙Z `
token
˙˙a f
)
˙˙f g
{
˚˚ 	
var
¸¸ 
	respuesta
¸¸ 
=
¸¸ 
new
¸¸ 
RespuestaApi
¸¸  ,
(
¸¸, -
)
¸¸- .
;
¸¸. /
using
˝˝ 
(
˝˝ 
var
˝˝ 

httpClient
˝˝ !
=
˝˝" #
new
˝˝$ '

HttpClient
˝˝( 2
(
˝˝2 3
)
˝˝3 4
)
˝˝4 5
{
˛˛ 
try
ˇˇ 
{
ÄÄ 

httpClient
ÇÇ 
.
ÇÇ #
DefaultRequestHeaders
ÇÇ 4
.
ÇÇ4 5
Authorization
ÇÇ5 B
=
ÇÇC D
new
ÇÇE H'
AuthenticationHeaderValue
ÇÇI b
(
ÇÇb c
$str
ÇÇc k
,
ÇÇk l
token
ÇÇm r
)
ÇÇr s
;
ÇÇs t
var
ÉÉ 
	resultado
ÉÉ !
=
ÉÉ" #
await
ÉÉ$ )

httpClient
ÉÉ* 4
.
ÉÉ4 5
GetAsync
ÉÉ5 =
(
ÉÉ= >
$"
ÉÉ> @
{
ÉÉ@ A
	Resources
ÉÉA J
.
ÉÉJ K
BASE_URL
ÉÉK S
}
ÉÉS T
$str
ÉÉT j
{
ÉÉj k
idUsuarioSeguido
ÉÉk {
}
ÉÉ{ |
"
ÉÉ| }
)
ÉÉ} ~
;
ÉÉ~ 
string
ÖÖ 
json
ÖÖ 
=
ÖÖ  !
await
ÖÖ" '
	resultado
ÖÖ( 1
.
ÖÖ1 2
Content
ÖÖ2 9
.
ÖÖ9 :
ReadAsStringAsync
ÖÖ: K
(
ÖÖK L
)
ÖÖL M
;
ÖÖM N
	respuesta
ÜÜ 
=
ÜÜ 
JsonConvert
ÜÜ  +
.
ÜÜ+ ,
DeserializeObject
ÜÜ, =
<
ÜÜ= >
RespuestaApi
ÜÜ> J
>
ÜÜJ K
(
ÜÜK L
json
ÜÜL P
)
ÜÜP Q
;
ÜÜQ R
}
ää 
catch
ãã 
(
ãã "
HttpRequestException
ãã +"
httpRequestException
ãã, @
)
ãã@ A
{
åå 
	respuesta
çç 
.
çç 
Estado
çç $
=
çç% &
(
çç' (
int
çç( +
)
çç+ ,
HttpStatusCode
çç, :
.
çç: ;!
InternalServerError
çç; N
;
ççN O
	respuesta
éé 
.
éé 
Mensaje
éé %
=
éé& '
$"
éé( *
$str
éé* 8
{
éé8 9"
httpRequestException
éé9 M
.
ééM N
Message
ééN U
}
ééU V
"
ééV W
;
ééW X
_logger
èè 
.
èè 
LogFatal
èè $
(
èè$ %"
httpRequestException
èè% 9
)
èè9 :
;
èè: ;
}
êê 
catch
ëë 
(
ëë 
	Exception
ëë  
ex
ëë! #
)
ëë# $
{
íí 
	respuesta
ìì 
.
ìì 
Estado
ìì $
=
ìì% &
(
ìì' (
int
ìì( +
)
ìì+ ,
HttpStatusCode
ìì, :
.
ìì: ;!
InternalServerError
ìì; N
;
ììN O
	respuesta
îî 
.
îî 
Mensaje
îî %
=
îî& '
$"
îî( *
$str
îî* <
{
îî< =
ex
îî= ?
.
îî? @
Message
îî@ G
}
îîG H
"
îîH I
;
îîI J
_logger
ïï 
.
ïï 
LogFatal
ïï $
(
ïï$ %
ex
ïï% '
)
ïï' (
;
ïï( )
}
ññ 
}
ôô 
return
öö 
	respuesta
öö 
;
öö 
}
õõ 	
}
ûû 
}üü –ö
èC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\ComentarioServicio.cs
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
token	} Ç
)
Ç É
;
É Ñ
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
token	@@} Ç
)
@@Ç É
;
@@É Ñ
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
)	`` Ä
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
;	hh Ä
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
ÄÄ 
(
ÄÄ 
JsonException
ÄÄ $
jsonException
ÄÄ% 2
)
ÄÄ2 3
{
ÅÅ 
respuestaFinal
ÇÇ "
.
ÇÇ" #
	Resultado
ÇÇ# ,
=
ÇÇ- .
(
ÇÇ/ 0
int
ÇÇ0 3
)
ÇÇ3 4
HttpStatusCode
ÇÇ4 B
.
ÇÇB C!
InternalServerError
ÇÇC V
;
ÇÇV W
respuestaFinal
ÉÉ "
.
ÉÉ" #
Mensaje
ÉÉ# *
=
ÉÉ+ ,
$"
ÉÉ- /
$str
ÉÉ/ T
{
ÉÉT U
jsonException
ÉÉU b
.
ÉÉb c
Message
ÉÉc j
}
ÉÉj k
"
ÉÉk l
;
ÉÉl m
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
	Exception
ÖÖ  
ex
ÖÖ! #
)
ÖÖ# $
{
ÜÜ 
respuestaFinal
áá "
.
áá" #
	Resultado
áá# ,
=
áá- .
(
áá/ 0
int
áá0 3
)
áá3 4
HttpStatusCode
áá4 B
.
ááB C!
InternalServerError
ááC V
;
ááV W
respuestaFinal
àà "
.
àà" #
Mensaje
àà# *
=
àà+ ,
$"
àà- /
$str
àà/ A
{
ààA B
ex
ààB D
.
ààD E
Message
ààE L
}
ààL M
"
ààM N
;
ààN O
}
ââ 
}
ää 
return
åå 
respuestaFinal
åå !
;
åå! "
}
çç 	
public
êê 
static
êê 
async
êê 
Task
êê  
<
êê  !
	Respuesta
êê! *
?
êê* +
>
êê+ ,1
#VerificarPropietarioComentarioAsync
êê- P
(
êêP Q
string
êêQ W
token
êêX ]
,
êê] ^
int
êê_ b
idComentario
êêc o
)
êêo p
{
ëë 	
	Respuesta
íí 
	respuesta
íí 
=
íí  !
new
íí" %
(
íí% &
)
íí& '
;
íí' (
using
ìì 
var
ìì 

httpClient
ìì  
=
ìì! "
new
ìì# &

HttpClient
ìì' 1
(
ìì1 2
)
ìì2 3
;
ìì3 4

httpClient
îî 
.
îî #
DefaultRequestHeaders
îî ,
.
îî, -
Authorization
îî- :
=
îî; <
new
îî= @
System
îîA G
.
îîG H
Net
îîH K
.
îîK L
Http
îîL P
.
îîP Q
Headers
îîQ X
.
îîX Y'
AuthenticationHeaderValue
îîY r
(
îîr s
$str
îîs {
,
îî{ |
tokenîî} Ç
)îîÇ É
;îîÉ Ñ
try
ññ 
{
óó 
var
òò 
response
òò 
=
òò 
await
òò $

httpClient
òò% /
.
òò/ 0
GetAsync
òò0 8
(
òò8 9
$"
òò9 ;
{
òò; <
	Resources
òò< E
.
òòE F
BASE_URL
òòF N
}
òòN O
$str
òòO Z
{
òòZ [
idComentario
òò[ g
}
òòg h
$str
òòh ~
"
òò~ 
)òò Ä
;òòÄ Å
var
ôô 
body
ôô 
=
ôô 
await
ôô  
response
ôô! )
.
ôô) *
Content
ôô* 1
.
ôô1 2
ReadAsStringAsync
ôô2 C
(
ôôC D
)
ôôD E
;
ôôE F
var
õõ 
	resultado
õõ 
=
õõ 
JsonConvert
õõ  +
.
õõ+ ,
DeserializeObject
õõ, =
<
õõ= >
	Respuesta
õõ> G
>
õõG H
(
õõH I
body
õõI M
)
õõM N
;
õõN O
	resultado
úú 
.
úú 
	Resultado
úú #
=
úú$ %
(
úú& '
int
úú' *
)
úú* +
response
úú+ 3
.
úú3 4

StatusCode
úú4 >
;
úú> ?
return
ùù 
	resultado
ùù  
;
ùù  !
}
ûû 
catch
üü 
(
üü "
HttpRequestException
üü '"
httpRequestException
üü( <
)
üü< =
{
†† 
	respuesta
°° 
.
°° 
	Resultado
°° #
=
°°$ %
(
°°& '
int
°°' *
)
°°* +
HttpStatusCode
°°+ 9
.
°°9 :!
InternalServerError
°°: M
;
°°M N
	respuesta
¢¢ 
.
¢¢ 
Mensaje
¢¢ !
=
¢¢" #
$"
¢¢$ &
$str
¢¢& 4
{
¢¢4 5"
httpRequestException
¢¢5 I
.
¢¢I J
Message
¢¢J Q
}
¢¢Q R
"
¢¢R S
;
¢¢S T
_logger
££ 
.
££ 
LogFatal
££  
(
££  !"
httpRequestException
££! 5
)
££5 6
;
££6 7
}
§§ 
catch
•• 
(
•• 
JsonException
••  
jsonException
••! .
)
••. /
{
¶¶ 
	respuesta
ßß 
.
ßß 
	Resultado
ßß #
=
ßß$ %
(
ßß& '
int
ßß' *
)
ßß* +
HttpStatusCode
ßß+ 9
.
ßß9 :!
InternalServerError
ßß: M
;
ßßM N
	respuesta
®® 
.
®® 
Mensaje
®® !
=
®®" #
$"
®®$ &
$str
®®& K
{
®®K L
jsonException
®®L Y
.
®®Y Z
Message
®®Z a
}
®®a b
"
®®b c
;
®®c d
_logger
©© 
.
©© 
LogFatal
©©  
(
©©  !
jsonException
©©! .
)
©©. /
;
©©/ 0
}
™™ 
catch
´´ 
(
´´ 
	Exception
´´ 
ex
´´ 
)
´´  
{
¨¨ 
	respuesta
≠≠ 
.
≠≠ 
	Resultado
≠≠ #
=
≠≠$ %
(
≠≠& '
int
≠≠' *
)
≠≠* +
HttpStatusCode
≠≠+ 9
.
≠≠9 :!
InternalServerError
≠≠: M
;
≠≠M N
	respuesta
ÆÆ 
.
ÆÆ 
Mensaje
ÆÆ !
=
ÆÆ" #
$"
ÆÆ$ &
$str
ÆÆ& 8
{
ÆÆ8 9
ex
ÆÆ9 ;
.
ÆÆ; <
Message
ÆÆ< C
}
ÆÆC D
"
ÆÆD E
;
ÆÆE F
_logger
ØØ 
.
ØØ 
LogFatal
ØØ  
(
ØØ  !
ex
ØØ! #
)
ØØ# $
;
ØØ$ %
}
∞∞ 
return
±± 
	respuesta
±± 
;
±± 
}
≤≤ 	
}
≥≥ 
}¥¥ ‡æ
éC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Servicio\CatalogosServicio.cs
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
ÄÄ 
(
ÄÄ 

HttpClient
ÄÄ 
client
ÄÄ $
=
ÄÄ% &
new
ÄÄ' *

HttpClient
ÄÄ+ 5
(
ÄÄ5 6
)
ÄÄ6 7
)
ÄÄ7 8
{
ÅÅ 
try
ÇÇ 
{
ÉÉ 
string
ÑÑ 
urlFinal
ÑÑ #
=
ÑÑ$ %
string
ÑÑ& ,
.
ÑÑ, -
Concat
ÑÑ- 3
(
ÑÑ3 4
	Resources
ÑÑ4 =
.
ÑÑ= >
BASE_URL
ÑÑ> F
,
ÑÑF G
$str
ÑÑH X
)
ÑÑX Y
;
ÑÑY Z!
HttpResponseMessage
ÖÖ '
response
ÖÖ( 0
=
ÖÖ1 2
await
ÖÖ3 8
client
ÖÖ9 ?
.
ÖÖ? @
GetAsync
ÖÖ@ H
(
ÖÖH I
urlFinal
ÖÖI Q
)
ÖÖQ R
;
ÖÖR S
string
ÜÜ 
json
ÜÜ 
=
ÜÜ  !
await
ÜÜ" '
response
ÜÜ( 0
.
ÜÜ0 1
Content
ÜÜ1 8
.
ÜÜ8 9
ReadAsStringAsync
ÜÜ9 J
(
ÜÜJ K
)
ÜÜK L
;
ÜÜL M
var
àà 
respuestaApi
àà $
=
àà% &
JsonConvert
àà' 2
.
àà2 3
DeserializeObject
àà3 D
<
ààD E 
RespuestaCatalogos
ààE W
<
ààW X
List
ààX \
<
àà\ ]
Rama
àà] a
>
ààa b
>
ààb c
>
ààc d
(
ààd e
json
ààe i
)
àài j
;
ààj k
if
ää 
(
ää 
respuestaApi
ää $
!=
ää% '
null
ää( ,
)
ää, -
{
ãã 
respuestaFinal
åå &
.
åå& '
	Resultado
åå' 0
=
åå1 2
respuestaApi
åå3 ?
.
åå? @
	Resultado
åå@ I
;
ååI J
respuestaFinal
çç &
.
çç& '
Mensaje
çç' .
=
çç/ 0
respuestaApi
çç1 =
.
çç= >
Mensaje
çç> E
;
ççE F
respuestaFinal
éé &
.
éé& '
Datos
éé' ,
=
éé- .
respuestaApi
éé/ ;
.
éé; <
	Resultado
éé< E
==
ééF H
$num
ééI L
?
ééM N
respuestaApi
ééO [
.
éé[ \
Datos
éé\ a
:
ééb c
new
ééd g
List
ééh l
<
éél m
Rama
éém q
>
ééq r
(
éér s
)
éés t
;
éét u
}
èè 
else
êê 
{
ëë 
respuestaFinal
íí &
.
íí& '
	Resultado
íí' 0
=
íí1 2
(
íí3 4
int
íí4 7
)
íí7 8
HttpStatusCode
íí8 F
.
ííF G!
InternalServerError
ííG Z
;
ííZ [
respuestaFinal
ìì &
.
ìì& '
Mensaje
ìì' .
=
ìì/ 0
$str
ìì1 a
;
ììa b
respuestaFinal
îî &
.
îî& '
Datos
îî' ,
=
îî- .
new
îî/ 2
List
îî3 7
<
îî7 8
Rama
îî8 <
>
îî< =
(
îî= >
)
îî> ?
;
îî? @
}
ïï 
}
ññ 
catch
óó 
(
óó "
HttpRequestException
óó +"
httpRequestException
óó, @
)
óó@ A
{
òò 
respuestaFinal
ôô "
.
ôô" #
	Resultado
ôô# ,
=
ôô- .
(
ôô/ 0
int
ôô0 3
)
ôô3 4
HttpStatusCode
ôô4 B
.
ôôB C!
InternalServerError
ôôC V
;
ôôV W
respuestaFinal
öö "
.
öö" #
Mensaje
öö# *
=
öö+ ,
$"
öö- /
$str
öö/ =
{
öö= >"
httpRequestException
öö> R
.
ööR S
Message
ööS Z
}
ööZ [
"
öö[ \
;
öö\ ]
_logger
õõ 
.
õõ 
LogFatal
õõ $
(
õõ$ %"
httpRequestException
õõ% 9
)
õõ9 :
;
õõ: ;
}
úú 
catch
ùù 
(
ùù 
JsonException
ùù $
jsonException
ùù% 2
)
ùù2 3
{
ûû 
respuestaFinal
üü "
.
üü" #
	Resultado
üü# ,
=
üü- .
(
üü/ 0
int
üü0 3
)
üü3 4
HttpStatusCode
üü4 B
.
üüB C!
InternalServerError
üüC V
;
üüV W
respuestaFinal
†† "
.
††" #
Mensaje
††# *
=
††+ ,
$"
††- /
$str
††/ T
{
††T U
jsonException
††U b
.
††b c
Message
††c j
}
††j k
"
††k l
;
††l m
_logger
°° 
.
°° 
LogFatal
°° $
(
°°$ %
jsonException
°°% 2
)
°°2 3
;
°°3 4
}
¢¢ 
catch
££ 
(
££ 
	Exception
££  
ex
££! #
)
££# $
{
§§ 
respuestaFinal
•• "
.
••" #
	Resultado
••# ,
=
••- .
(
••/ 0
int
••0 3
)
••3 4
HttpStatusCode
••4 B
.
••B C!
InternalServerError
••C V
;
••V W
respuestaFinal
¶¶ "
.
¶¶" #
Mensaje
¶¶# *
=
¶¶+ ,
$"
¶¶- /
$str
¶¶/ A
{
¶¶A B
ex
¶¶B D
.
¶¶D E
Message
¶¶E L
}
¶¶L M
"
¶¶M N
;
¶¶N O
_logger
ßß 
.
ßß 
LogFatal
ßß $
(
ßß$ %
ex
ßß% '
)
ßß' (
;
ßß( )
}
®® 
}
©© 
return
´´ 
respuestaFinal
´´ !
;
´´! "
}
¨¨ 	
public
ÆÆ 
static
ÆÆ 
async
ÆÆ 
Task
ÆÆ  
<
ÆÆ  ! 
RespuestaCatalogos
ÆÆ! 3
<
ÆÆ3 4
List
ÆÆ4 8
<
ÆÆ8 9
Materia
ÆÆ9 @
>
ÆÆ@ A
>
ÆÆA B
>
ÆÆB C(
ObtenerMateriaPorRamaAsync
ÆÆD ^
(
ÆÆ^ _
int
ÆÆ_ b
idRama
ÆÆc i
)
ÆÆi j
{
ØØ 	
var
±± 
respuestaFinal
±± 
=
±±  
new
±±! $ 
RespuestaCatalogos
±±% 7
<
±±7 8
List
±±8 <
<
±±< =
Materia
±±= D
>
±±D E
>
±±E F
(
±±F G
)
±±G H
;
±±H I
using
≥≥ 
(
≥≥ 

HttpClient
≥≥ 
client
≥≥ $
=
≥≥% &
new
≥≥' *

HttpClient
≥≥+ 5
(
≥≥5 6
)
≥≥6 7
)
≥≥7 8
{
¥¥ 
try
µµ 
{
∂∂ 
var
∑∑ 
url
∑∑ 
=
∑∑ 
$"
∑∑  
{
∑∑  !
	Resources
∑∑! *
.
∑∑* +
BASE_URL
∑∑+ 3
}
∑∑3 4
$str
∑∑4 M
{
∑∑M N
idRama
∑∑N T
}
∑∑T U
"
∑∑U V
;
∑∑V W
var
∏∏ !
httpResponseMessage
∏∏ +
=
∏∏, -
await
∏∏. 3
client
∏∏4 :
.
∏∏: ;
GetAsync
∏∏; C
(
∏∏C D
url
∏∏D G
)
∏∏G H
;
∏∏H I
string
∫∫ 
json
∫∫ 
=
∫∫  !
await
∫∫" '!
httpResponseMessage
∫∫( ;
.
∫∫; <
Content
∫∫< C
.
∫∫C D
ReadAsStringAsync
∫∫D U
(
∫∫U V
)
∫∫V W
;
∫∫W X
var
ºº 
respuestaApi
ºº $
=
ºº% &
JsonConvert
ºº' 2
.
ºº2 3
DeserializeObject
ºº3 D
<
ººD E 
RespuestaCatalogos
ººE W
<
ººW X
List
ººX \
<
ºº\ ]
Materia
ºº] d
>
ººd e
>
ººe f
>
ººf g
(
ººg h
json
ººh l
)
ººl m
;
ººm n
if
ææ 
(
ææ 
respuestaApi
ææ $
!=
ææ% '
null
ææ( ,
)
ææ, -
{
øø 
respuestaFinal
¿¿ &
.
¿¿& '
	Resultado
¿¿' 0
=
¿¿1 2
respuestaApi
¿¿3 ?
.
¿¿? @
	Resultado
¿¿@ I
;
¿¿I J
respuestaFinal
¡¡ &
.
¡¡& '
Mensaje
¡¡' .
=
¡¡/ 0
respuestaApi
¡¡1 =
.
¡¡= >
Mensaje
¡¡> E
;
¡¡E F
respuestaFinal
¬¬ &
.
¬¬& '
Datos
¬¬' ,
=
¬¬- .
respuestaApi
¬¬/ ;
.
¬¬; <
	Resultado
¬¬< E
==
¬¬F H
$num
¬¬I L
?
¬¬M N
respuestaApi
¬¬O [
.
¬¬[ \
Datos
¬¬\ a
:
¬¬b c
new
¬¬d g
List
¬¬h l
<
¬¬l m
Materia
¬¬m t
>
¬¬t u
(
¬¬u v
)
¬¬v w
;
¬¬w x
}
√√ 
else
ƒƒ 
{
≈≈ 
respuestaFinal
∆∆ &
.
∆∆& '
	Resultado
∆∆' 0
=
∆∆1 2
(
∆∆3 4
int
∆∆4 7
)
∆∆7 8
HttpStatusCode
∆∆8 F
.
∆∆F G!
InternalServerError
∆∆G Z
;
∆∆Z [
respuestaFinal
«« &
.
««& '
Mensaje
««' .
=
««/ 0
$str
««1 a
;
««a b
respuestaFinal
»» &
.
»»& '
Datos
»»' ,
=
»»- .
new
»»/ 2
List
»»3 7
<
»»7 8
Materia
»»8 ?
>
»»? @
(
»»@ A
)
»»A B
;
»»B C
}
…… 
}
   
catch
ÀÀ 
(
ÀÀ "
HttpRequestException
ÀÀ +"
httpRequestException
ÀÀ, @
)
ÀÀ@ A
{
ÃÃ 
respuestaFinal
ÕÕ "
.
ÕÕ" #
	Resultado
ÕÕ# ,
=
ÕÕ- .
(
ÕÕ/ 0
int
ÕÕ0 3
)
ÕÕ3 4
HttpStatusCode
ÕÕ4 B
.
ÕÕB C!
InternalServerError
ÕÕC V
;
ÕÕV W
respuestaFinal
ŒŒ "
.
ŒŒ" #
Mensaje
ŒŒ# *
=
ŒŒ+ ,
$"
ŒŒ- /
$str
ŒŒ/ =
{
ŒŒ= >"
httpRequestException
ŒŒ> R
.
ŒŒR S
Message
ŒŒS Z
}
ŒŒZ [
"
ŒŒ[ \
;
ŒŒ\ ]
_logger
œœ 
.
œœ 
LogFatal
œœ $
(
œœ$ %"
httpRequestException
œœ% 9
)
œœ9 :
;
œœ: ;
}
–– 
catch
—— 
(
—— 
JsonException
—— $
jsonException
——% 2
)
——2 3
{
““ 
respuestaFinal
”” "
.
””" #
	Resultado
””# ,
=
””- .
(
””/ 0
int
””0 3
)
””3 4
HttpStatusCode
””4 B
.
””B C!
InternalServerError
””C V
;
””V W
respuestaFinal
‘‘ "
.
‘‘" #
Mensaje
‘‘# *
=
‘‘+ ,
$"
‘‘- /
$str
‘‘/ T
{
‘‘T U
jsonException
‘‘U b
.
‘‘b c
Message
‘‘c j
}
‘‘j k
"
‘‘k l
;
‘‘l m
_logger
’’ 
.
’’ 
LogFatal
’’ $
(
’’$ %
jsonException
’’% 2
)
’’2 3
;
’’3 4
}
÷÷ 
catch
◊◊ 
(
◊◊ 
	Exception
◊◊  
ex
◊◊! #
)
◊◊# $
{
ÿÿ 
respuestaFinal
ŸŸ "
.
ŸŸ" #
	Resultado
ŸŸ# ,
=
ŸŸ- .
(
ŸŸ/ 0
int
ŸŸ0 3
)
ŸŸ3 4
HttpStatusCode
ŸŸ4 B
.
ŸŸB C!
InternalServerError
ŸŸC V
;
ŸŸV W
respuestaFinal
⁄⁄ "
.
⁄⁄" #
Mensaje
⁄⁄# *
=
⁄⁄+ ,
$"
⁄⁄- /
$str
⁄⁄/ A
{
⁄⁄A B
ex
⁄⁄B D
.
⁄⁄D E
Message
⁄⁄E L
}
⁄⁄L M
"
⁄⁄M N
;
⁄⁄N O
_logger
€€ 
.
€€ 
LogFatal
€€ $
(
€€$ %
ex
€€% '
)
€€' (
;
€€( )
}
‹‹ 
}
›› 
return
ﬂﬂ 
respuestaFinal
ﬂﬂ !
;
ﬂﬂ! "
}
‡‡ 	
}
‚‚ 
}„„ ⁄G
ìC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Protos\FileServiceClientHandler.cs
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
}pp ˇ!
†C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\NotificacionesYChat\VentanaNotificacion.xaml.cs
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
}77 ∂?
°C:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\NotificacionesYChat\NotificacionSocketService.cs
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
_cancellationTokenSource	KKh Ä
.
KKÄ Å
Token
KKÅ Ü
)
KKÜ á
;
KKá à
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
}mm ú
ìC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\SolicitudBaneo.cs
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
} ˙"
ôC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\RespuestaSeguimiento.cs
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
}66 £

îC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\RespuestaPerfil.cs
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
} ∑ 
ãC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Usuarios\Perfil.cs
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
}44 π
ÖC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Respuesta.cs
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
} ™
ûC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Publicaciones\RespuestaPublicacion.cs
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
})) Î%
ïC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Publicaciones\Publicacion.cs
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
};; Ω
èC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\UsuarioLogin.cs
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
} è
íC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\UsuarioRegistro.cs
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
} Ê
òC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\UsuarioLoginRespuesta.cs
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
}## ü+
èC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\PerfilPropio.cs
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
}77 Æ
úC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Perfil\SolicitudCambioContrasena.cs
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
} –
õC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Comentarios\ComentarioRespuesta.cs
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
} ™
íC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Comentarios\Comentario.cs
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
}%% Ø

öC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\RespuestaInstitucion.cs
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
} ´

òC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\RespuestaCatalogos.cs
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
} ◊
äC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Rama.cs
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
} √
çC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Materia.cs
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
} —

ëC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Institucion.cs
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
} Î
èC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\Modelos\Catalogos\Categoria.cs
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
} ﬁ
ÉC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\MainWindow.xaml.cs
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
}.. ¢
ÄC:\Users\cumpl\OneDrive\Escritorio\Proyecto-EduShare\EduShare-Escritorio\EduShare-Escritorio\EduShare-Escritorio\AssemblyInfo.cs
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
 §
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