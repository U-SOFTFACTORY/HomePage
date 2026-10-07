Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

Imports System.Runtime.Serialization
Imports System.Runtime.Serialization.Json

' この Web サービスを、スクリプトから ASP.NET AJAX を使用して呼び出せるようにするには、次の行のコメントを解除します。
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class WebService
     Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function



End Class


<DataContract> _
Public Class FriendInfo
    <DataMember> _
    Public Property id() As String
        Get
            Return m_id
        End Get
        Set(value As String)
            m_id = value
        End Set
    End Property
    Private m_id As String
    <DataMember> _
    Public Property page() As String
        Get
            Return m_page
        End Get
        Set(value As String)
            m_page = value
        End Set
    End Property
    Private m_page As String
    <DataMember> _
    Public Property txt() As Integer
        Get
            Return m_txt
        End Get
        Set(value As Integer)
            m_txt = value
        End Set
    End Property
    Private m_txt As Integer

End Class
