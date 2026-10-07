Imports Microsoft.VisualBasic
Imports System.data
Imports MySql.Data.MySqlClient

Public Class Pubmodule

    'メッセ－ジボックス
    Public Shared Function WebMessage(ByVal Form As System.Web.UI.Page, ByVal MsgErr As String) As Boolean

        Form.Response.Write("<script language=JavaScript> alert('" & MsgErr & "') </script>")

        Return True
    End Function

    'アクセスカウンタ
    Public Shared Sub PageCnt(ByVal intPageID As Integer, ByVal Str_pageName As String)

        Dim cn As Object
        Dim strSql As String
        Dim rs As Object
        Dim intCnt As Object
        On Error GoTo EXit_PageCnt

        '** MYSQL 接続
        cn = CreateObject("ADODB.Connection")
        cn.Open("dsn=ediweb;uid=USER1;pwd=trace;")
        strSql = ""
        strSql = "select PageCNT from page_auth where PageID = " & intPageID & " and unam = '" & Str_pageName & "'"
        rs = cn.Execute(strSql)

        If rs.eof = False Then
            intCnt = IIf(IsDBNull(rs(0).value) = True, -1, rs(0).value)
            If intCnt >= 0 Then
                intCnt = intCnt + 1
                strSql = "update page_auth set PageCNT = " & intCnt & " where PageID = " & intPageID & " and unam = '" & Str_pageName & "'"
                rs = cn.Execute(strSql)
            End If
        Else
            intCnt = 1
            strSql = "INSERT into page_auth ( PageID,PageCNT,unam)values(" & intPageID & "," & intCnt & ",'" & Str_pageName & "')"
            rs = cn.Execute(strSql)
        End If

        cn.Close()

EXit_PageCnt:
    End Sub


    'Express（MYSQL）接続
    Public Shared Function FunDBConnect_Express(ByRef con As MySqlConnection) As Boolean

        On Error GoTo Err_FunDBConnect

        FunDBConnect_Express = False

        Dim connectionStrings As String
        Dim connectionStringh As String

        Dim sqlStr As String

        '接続文字列(サーバ)
        connectionStrings = _
        "Database=db_usoft;User ID=EW20123634;Password=U-softfactory703;" & _
        "Host=mysql02.dataweb-ad.jp;Port=3306"

        '接続文字列(自宅用)
        connectionStringh = _
        "Database=db_usoft;User ID=EW20123634;Password=U-softfactory703;" & _
        "Host=localhost;Port=3306"

        'コネクション生成
        con = New MySqlConnection(connectionStrings)

        '接続
        con.Open()

        FunDBConnect_Express = True

Ext_FunDBConnect:
        Exit Function

Err_FunDBConnect:
        GoTo Ext_FunDBConnect

    End Function


    'メール送信
    Public Shared Function FunMailSend_Express(
                             ByRef str_from As String,
                             ByRef str_to As String,
                             ByRef str_subject As String,
                             ByRef strbText As String) As Boolean

        On Error GoTo Err_FunMailSend


        'MailMessageの作成（Gmail は認証アカウント以外の差出人を書き換えるため、差出人は送信用アカウントに固定）
        Dim msg As New System.Net.Mail.MailMessage(
            New System.Net.Mail.MailAddress("usoftfactory.agent@gmail.com", "UsoftFactory Agent"),
            New System.Net.Mail.MailAddress(str_to))
        msg.Subject = str_subject
        msg.Body = strbText.ToString

        'Gmail は TLS1.2 必須（.NET 4.0 には列挙値が無いため数値 3072 で指定）
        System.Net.ServicePointManager.SecurityProtocol = CType(3072, System.Net.SecurityProtocolType)

        Dim sc As New System.Net.Mail.SmtpClient()
        'SMTPサーバーなどを設定する
        sc.Host = "smtp.gmail.com"
        sc.Port = 587
        sc.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network
        sc.Timeout = 10000
        'ユーザー名とパスワードを設定する
        sc.UseDefaultCredentials = False
        sc.Credentials = New System.Net.NetworkCredential("usoftfactory.agent@gmail.com", "fnvnzjpointwyiuj")
        'SSLを使用する
        sc.EnableSsl = True
        'メッセージを送信する
        sc.Send(msg)

        '後始末
        msg.Dispose()
        '後始末（.NET Framework 4.0以降）
        sc.Dispose()


        FunMailSend_Express = True


Ext_FunMailSend:
        Exit Function

Err_FunMailSend:
        GoTo Ext_FunMailSend


    End Function



    '四捨五入
    Public Shared Function ToHalfAdjust(ByVal dValue As Double, ByVal iDigits As Integer) As Double
        Dim dCoef As Double = System.Math.Pow(10, iDigits)

        If dValue > 0 Then
            Return System.Math.Floor((dValue * dCoef) + 0.5) / dCoef
        Else
            Return System.Math.Ceiling((dValue * dCoef) - 0.5) / dCoef
        End If
    End Function


End Class
