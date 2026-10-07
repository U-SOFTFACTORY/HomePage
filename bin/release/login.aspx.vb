
Imports System.data
Imports MySql.Data.MySqlClient


Partial Class login

    Inherits System.Web.UI.Page

    Dim con As MySqlConnection
    Dim cmd As MySqlCommand
    Dim dr As MySqlDataReader

    Dim strSql As String

    'ログイン
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        On Error GoTo Err_Button1_Click

        '** MYSQL 接続
        If Pubmodule.FunDBConnect_Express(con) = False Then
            Pubmodule.WebMessage(Me.Page, "サーバに接続できません。" & Err.Description)
            Exit Sub
        End If

        'SQL文
        strSql = "select * from m_user where userid='" & txtUser.Text & "' and userpass ='" & txtpass.Text & "'"

        'MySQLCommand作成
        cmd = New MySqlCommand(strSql, con)

        'SQL文実行
        dr = cmd.ExecuteReader

        '結果を表示   
        While dr.Read()

            Session("LoginLev") = CStr(dr("lev"))
            Session("LoginName") = CStr(dr("userid"))
            Session("Logintokuyakuid") = CStr(dr("tokuyakuid"))
            Session("Loginftppath") = CStr(dr("ftppath"))
            Response.Redirect("loginmen.aspx")

        End While

        If Panel1.Visible = True Then
            txtloginerr.Text = "ユーザIDまたはパスワードに誤りがあります"
            txtloginerr.Visible = True
        End If

        'クローズ
        con.Close()


Ext_Button1_Click:
        Exit Sub

Err_Button1_Click:

        Pubmodule.WebMessage(Me.Page, Err.Description)
        GoTo Ext_Button1_Click


    End Sub


    'メール送信
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        On Error GoTo Err_Button2_Click

        Dim dateEOF As Boolean = False

        '** MYSQL 接続
        If Pubmodule.FunDBConnect_Express(con) = False Then
            Pubmodule.WebMessage(Me.Page, "サーバに接続できません。" & Err.Description)
            Exit Sub
        End If

        'SQL文
        strSql = "select * from m_user where userid='" & txtmailaddress.Text & "' "

        'MySQLCommand作成
        cmd = New MySqlCommand(strSql, con)

        'SQL文実行
        dr = cmd.ExecuteReader

        '結果を表示
        While dr.Read()

            dateEOF = True

            txtloginerr.Visible = False

            '本文
            Dim strbText As New StringBuilder
            strbText.AppendLine("あなたのパスワードは " & CStr(dr("userpass")) & " です")

            'メール送信（引数：送信者、宛先、件名、本文）
            If Pubmodule.FunMailSend_Express("support@u-softfactory.net", CStr(dr("userid")), "ログイン情報のお知らせ", strbText.ToString) = False Then
                Pubmodule.WebMessage(Me.Page, "メール送信がエラーになりました")
                Exit Sub
            End If

            txtloginerr.Text = "メールを送信しました。パスワードをご確認ください。"
            txtloginerr.Visible = True

        End While

        If dateEOF = False Then
            txtloginerr.Text = "このメールアドレスは登録されていません。"
            txtloginerr.Visible = True
        End If

        'クローズ
        con.Close()


Ext_Button2_Click:
        Exit Sub

Err_Button2_Click:

        Pubmodule.WebMessage(Me.Page, Err.Description)
        GoTo Ext_Button2_Click

    End Sub




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        'ログイン
        Dim sLoginLev As String
        sLoginLev = IIf(Session("LoginLev") = Nothing, "", Session("LoginLev"))

        If sLoginLev = Nothing Then

        Else
            Response.Redirect("loginmen.aspx")
        End If

        If IsPostBack = False Then

            If Session("LoginName") = "" Then
                Panel1.Visible = True
                Button3.Visible = False
            Else
                Panel1.Visible = False
                Button3.Visible = True
            End If

        End If

    End Sub


    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        Session("LoginLev") = ""
        Session("LoginName") = ""

        txtUser.Text = ""
        txtpass.Text = ""

        Panel1.Visible = True
        Button3.Visible = False

    End Sub
End Class
