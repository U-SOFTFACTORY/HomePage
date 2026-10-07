
Imports System.data
Imports System.Net
Imports System.Net.Mail

Partial Class inquiry

    Inherits System.Web.UI.Page

    Dim strSql As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then

            ImageButton1.Attributes("onmouseover") = "src='img/btn_t_reset_ovr.jpg'"
            ImageButton1.Attributes("onmouseout") = "src='img/btn_t_reset.jpg'"

            ImageButton2.Attributes("onmouseover") = "src='img/btn_t_kakunin_ovr.jpg'"
            ImageButton2.Attributes("onmouseout") = "src='img/btn_t_kakunin.jpg'"

        End If

    End Sub

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

        If mailaddress2.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "メールアドレス２が空白です")
            Exit Sub
        End If

        If mailaddress.Text <> mailaddress2.Text Then
            Pubmodule.WebMessage(Me.Page, "メールアドレスが不一致です")
            Exit Sub
        End If

        If name.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "お名前が空白です")
            Exit Sub
        End If

        If name_kana.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "フリガナは空白です")
            Exit Sub
        End If

        If tel.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "電話番号が空白です")
            Exit Sub
        End If

        If postcode.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "郵便番号が空白です")
            Exit Sub
        End If

        If address1.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "住所１が空白です")
            Exit Sub
        End If

        If address2.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "住所２が空白です")
            Exit Sub
        End If

        If toiawase.Text = "" Then
            Pubmodule.WebMessage(Me.Page, "お問い合わせ内容が空白です")
            Exit Sub
        End If

        '本文
        strbText.AppendLine("WEBサイトより問い合わせを受け付けました。")
        strbText.AppendLine("")
        strbText.AppendLine("メールアドレス：" & mailaddress.Text)
        strbText.AppendLine("会社名：" & txtcampany.Text)
        strbText.AppendLine("お名前：" & name.Text)
        strbText.AppendLine("フリガナ：" & name_kana.Text)
        strbText.AppendLine("お電話番号：" & tel.Text)
        strbText.AppendLine("郵便番号：" & postcode.Text)
        strbText.AppendLine("住所１：" & address1.Text)
        strbText.AppendLine("住所２：" & address2.Text)
        strbText.AppendLine("問い合わせ内容：" & toiawase.Text)

        'メール送信（自分宛て）
        If SendMail(New MailAddress("usoftfactory@gmail.com", "自分宛て"), "[お問い合わせ受付]", strbText.ToString) = False Then
            Pubmodule.WebMessage(Me.Page, "メール送信がエラーになりました")
            Exit Sub
        End If

        'メール送信（お客様控え）
        If SendMail(New MailAddress(mailaddress.Text), "[お問い合わせ受付]", strbText.ToString) = False Then
            Pubmodule.WebMessage(Me.Page, "メール送信がエラーになりました")
            Exit Sub
        End If


        mailaddress.Text = ""
        mailaddress2.Text = ""
        name.Text = ""
        name_kana.Text = ""
        tel.Text = ""
        postcode.Text = ""
        address1.Text = ""
        address2.Text = ""
        toiawase.Text = ""
        Pubmodule.WebMessage(Me.Page, "お問合せを受け付けました。折り返し担当よりご回答させて頂きます。")

Ext_Button2_Click:
        Exit Sub


Err_Button2_Click:

        Pubmodule.WebMessage(Me.Page, "メール送信がエラーになりました。")

        GoTo Ext_Button2_Click

    End Sub

   
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click

        mailaddress.Text = ""
        mailaddress2.Text = ""
        name.Text = ""
        name_kana.Text = ""
        tel.Text = ""
        postcode.Text = ""
        address1.Text = ""
        address2.Text = ""
        toiawase.Text = ""


    End Sub

    'メール送信（Gmail SMTP）
    Private Function SendMail(ByVal toAddress As MailAddress, ByVal mailsubject As String, ByVal mailBody As String) As Boolean

        Try
            '差出人情報
            Dim fromAddress As New MailAddress("usoftfactory.agent@gmail.com", "UsoftFactory Agent")
            Const fromPassword As String = "fnvnzjpointwyiuj"

            'Gmail は TLS1.2 必須（.NET 4.0 には列挙値が無いため数値 3072 で指定）
            ServicePointManager.SecurityProtocol = CType(3072, SecurityProtocolType)

            'SMTPクライアント設定
            Using smtp As New SmtpClient()
                smtp.Host = "smtp.gmail.com"
                smtp.Port = 587
                smtp.EnableSsl = True
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network
                smtp.UseDefaultCredentials = False
                smtp.Credentials = New NetworkCredential(fromAddress.Address, fromPassword)
                smtp.Timeout = 10000

                'メール作成と送信
                Using message As New MailMessage(fromAddress, toAddress)
                    message.Subject = mailsubject
                    message.Body = mailBody
                    message.IsBodyHtml = False
                    smtp.Send(message)
                End Using
            End Using

            Return True

        Catch ex As Exception
            Return False
        End Try

    End Function


End Class
