
Partial Class template

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then

            ImageButton1.Attributes("onmouseover") = "src='img/btn_t_reset_ovr.jpg'"
            ImageButton1.Attributes("onmouseout") = "src='img/btn_t_reset.jpg'"

            ImageButton2.Attributes("onmouseover") = "src='img/btn_t_kakunin_ovr.jpg'"
            ImageButton2.Attributes("onmouseout") = "src='img/btn_t_kakunin.jpg'"

        End If

    End Sub

    '送信
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

        Dim str_sender As String = ""
        Dim str_address As String = ""
        Dim str_subject As String = ""
        Dim strbText As New StringBuilder

        On Error GoTo Err_Button2_Click


        '内容チェック
        If mailaddress.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "メールアドレスが空白です")
            Exit Sub
        End If


        If name.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "お名前が空白です")
            Exit Sub
        End If

        'If mailaddress2.Text = "" Then
        '    Pubmodule.WebMessage(Me.Page, "電話番号が空白です")
        '    Exit Sub
        'End If


        '本文
        strbText.AppendLine("WEBサイトより問い合わせを受け付けました。")
        strbText.AppendLine("")
        strbText.AppendLine("購入テンプレートNo：" & DropDownList1.Text)
        strbText.AppendLine("お名前：" & name.Text)
        strbText.AppendLine("メールアドレス：" & mailaddress.Text)
        strbText.AppendLine("振込み名義：" & mailaddress2.Text)
        

Ext_Button2_Click:
        Exit Sub


Err_Button2_Click:

        Pubmodule.WebMessage(Me.Page, Err.Description)



    End Sub

    'リセット
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click

    End Sub

End Class
