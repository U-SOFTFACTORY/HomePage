Imports System.Data
Imports MySql.Data.MySqlClient

Partial Class gpsget

    Inherits System.Web.UI.Page

    Dim con As MySqlConnection
    Dim cmd As MySqlCommand
    Dim dr As MySqlDataReader

    Dim strSql As String

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        On Error GoTo Err_load

        Dim id As String = Page.Request.QueryString.Get("id")
        Dim name As String = Page.Request.QueryString.Get("name")
        Dim ido As Double = Page.Request.QueryString.Get("ido")
        Dim keido As Double = Page.Request.QueryString.Get("keido")

        '** MYSQL 接続
        If Pubmodule.FunDBConnect_Express(con) = False Then Exit Sub

        'SQL文
        strSql = "INSERT into gps_location values(" & id & ",'" & name & "'," & ido & "," & keido & ",'" & Now() & "')"

        'MySQLCommand作成
        cmd = New MySqlCommand(strSql, con)

        '戻り値なしでコマンドを実行
        cmd.ExecuteNonQuery()
        cmd.Dispose()

Ext_load:
        Exit Sub

Err_load:
        GoTo Ext_load

    End Sub
End Class



