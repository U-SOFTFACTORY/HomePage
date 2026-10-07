<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="inquiry.aspx.vb" Inherits="inquiry" title="U-SOFTFACTORY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">

    <%--Google Analytics トラッキングコード--%>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-46794656-1', 'u-softfactory.net');
        ga('send', 'pageview');

    </script>

<form id="form1" runat="server">

<h3 class="heading">お問い合わせ 資料請求</h3>
	
	<div class="main">
    &nbsp;<p>
        弊社へのお問い合わせは下記フォームに必要事項を</p> 
    <p>
        ご記入頂き送信ボタンをクリックしてください。<br/>
        
    <asp:Panel ID="Panel3" runat="server" Height="850px" Width="600px">
    <br />
    <br />
        
    <asp:Label ID="Label15" runat="server" Height="25px" Style="vertical-align: bottom;text-align: right" Text="メールアドレス：" Width="165px"></asp:Label>
    <asp:TextBox ID="mailaddress" runat="server" Width="300px" Height="25px" /><br />
    
    <br />
    <asp:Label ID="Label1" runat="server" Height="25px" Style="vertical-align: bottom;text-align: right" Text="確認のためもう一度：" Width="165px"></asp:Label>
    <asp:TextBox ID="mailaddress2" runat="server" Width="300px" Height="25px" /><br />
    
    <br />
    <asp:Label ID="Label8" runat="server" Height="25px" Style="vertical-align: bottom;text-align: right" Text="会社名：" Width="165px"></asp:Label>
    <asp:TextBox ID="txtcampany" runat="server" Width="300px" Height="25px" /><br />
    
    <br />
    <asp:Label ID="Label2" runat="server" Height="25px" Style="vertical-align: bottom;text-align: right" Text="お名前：" Width="165px"></asp:Label>
    <asp:TextBox ID="name" runat="server" Width="300px" Height="25px" /><br />
    
    <br />
    <asp:Label ID="Label9" runat="server" Height="25px" Style="vertical-align: bottom;text-align: right" Text="フリガナ：" Width="165px"></asp:Label>
    <asp:TextBox ID="name_kana" runat="server" Width="300px" Height="25px" /><br />
    
    <br />
    <asp:Label ID="Label5" runat="server" Style="text-align: right;vertical-align:bottom" Text="電話番号：" Width="165px" Height="25px"></asp:Label>
    <asp:TextBox ID="tel" runat="server"  Width="300px" Height="25px"></asp:TextBox><br />
    
    <br />    
    <asp:Label style="text-align: right;vertical-align:bottom" Height="25px" ID="Label3" runat="server" Text="郵便番号：" Width="165px" />
    <asp:TextBox ID="postcode" runat="server" Width="190px" Height="25px" />&nbsp;
    
    <br /><br>   
    <asp:Label Height="25px" ID="Label4" runat="server" Text="住所1：" Width="165px" style="text-align: right;vertical-align:bottom" />
    <asp:TextBox ID="address1" runat="server" Width="300px" Height="25px"></asp:TextBox><br />
    
    <br />    
    <asp:Label ID="Label7" runat="server" Style="text-align: right;vertical-align:bottom" Text="住所2：" Width="165px" Height="25px"></asp:Label>
    <asp:TextBox ID="address2" runat="server" Width="300px" Height="25px"></asp:TextBox><br />
    
    <br />
    <asp:Label ID="Label6" runat="server" Style="text-align: right;vertical-align:bottom" Text="FAX番号 ：" Width="165px" Height="25px"></asp:Label>
    <asp:TextBox ID="fax" runat="server"  Width="300px" Height="25px"></asp:TextBox><br />
    
    <br />
    <asp:Label ID="Label10" runat="server" Height="215px" Style="vertical-align: bottom;text-align: right" Text="お問合せ内容 ：" Width="165px"></asp:Label>
    <asp:TextBox ID="toiawase" runat="server" Height="211px" Width="300px" TextMode="MultiLine"></asp:TextBox>
    <br /><br>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/img/btn_t_reset.jpg" Width="169px" />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/img/btn_t_kakunin.jpg" Width="169px" />
    
    </asp:Panel>
    </p>
	</div>
	
<h2></h2>

</form>

</asp:Content>

