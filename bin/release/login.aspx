<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" title="U-SOFTFACTORY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">

	<form id="form1" runat="server">
	
	<div class="main">
	
		<h3 class="heading">
            CONTENTS　FOR　WEB　ログイン</h3>
				
		<br/>
            <asp:Button ID="Button3" runat="server" BackColor="#424D5D" ForeColor="White" Height="30px"
                Text="ログアウト" Width="150px" /><br/><br/>
            &nbsp;<p>
            <asp:Panel ID="Panel1" runat="server" Height="200px" Width="600px">
                発行されているIDとパスワードでログインの上、ご利用ください<br />
                <br />
                <asp:Label ID="lblUser" runat="server" Style="text-align: right" Text="メールアドレス："
                    Width="165px"></asp:Label>
                <asp:TextBox ID="txtUser" runat="server" Width="220px"></asp:TextBox><br />
                <asp:Label ID="lblPass" runat="server" Style="text-align: right" Text="パスワード　　："
                    Width="165px"></asp:Label>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="220px"></asp:TextBox>&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#424D5D" ForeColor="White" Height="30px"
                    Text="ログイン" Width="100px" />
                <br />
                <br />
                <asp:Label ID="txtloginerr" runat="server" ForeColor="#FFC0C0" Width="582px"></asp:Label><br />
                <br />
                パスワードを忘れてしまった場合、<br />
                下記に登録したメールアドレスを入力して送信ボタンを押してください<br />
                <asp:Label ID="Label1" runat="server" Style="text-align: right" Text="メールアドレス：" Width="165px"></asp:Label>
                <asp:TextBox ID="txtmailaddress" runat="server" Width="220px"></asp:TextBox>&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#424D5D" ForeColor="White" Height="30px"
                    Text="送信" Width="100px" />
                <br />
            </asp:Panel>
        </p>
				
	</div>		
	
</form>

</asp:Content>

