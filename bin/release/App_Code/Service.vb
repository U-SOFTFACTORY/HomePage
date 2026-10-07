Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class Service
     Inherits System.Web.Services.WebService

    'http://localhost:52325/U_WEB_USOFTFACTORY_New/Service.asmx
    'http://u-softfactory/Service.asmx
    'http://u-softfactory/Service.asmx?wsdl

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function

    <WebMethod(Description:="サーバの現在時刻を返します")> _
    Public Function ServerTime() As String
        'サーバーの現在時刻を返します 
        Return DateTime.Now.ToLongTimeString()
    End Function

    <WebMethod(Description:="誕生日から今日までの日数を算出します")> _
    Public Function LiveDate(ByVal BirthDay As Date) As Integer
        ' 引数で渡された日付から今日までの日数を計算します 
        LiveDate = DateTime.Now.Subtract(BirthDay).Days()
    End Function


    <WebMethod(Description:="バス停名称からのアクション")> _
        Public Function BussStop(ByVal strPlace As String) As String

        On Error GoTo Err_bussstop

        ' 引数でバス停名称から

        'メール送信（引数：送信者、宛先、件名、本文）
        If Pubmodule.FunMailSend_Express("support@u-softfactory.net", "u.softfactory@gmail.com", "[幼稚園バス停アクション]", "今" & strPlace & "です") = False Then

        End If

        BussStop = "ok"

Ext_bussstop:
        Exit Function

Err_bussstop:
        BussStop = "ng"
        GoTo Ext_bussstop

    End Function

    <WebMethod(Description:="バス-GPSからのアクション")> _
        Public Function BussNow(ByVal strGps As String) As String

        On Error GoTo Err_BussNow

        ' 引数で渡されたGPS情報から

        'メール送信（引数：送信者、宛先、件名、本文）
        If Pubmodule.FunMailSend_Express("support@u-softfactory.net", "u.softfactory@gmail.com", "[幼稚園バス停アクション]", "今" & strGps & "です") = False Then

        End If

        BussNow = "ok"

Ext_BussNow:
        Exit Function

Err_BussNow:
        BussNow = "ng"
        GoTo Ext_BussNow

    End Function


End Class
