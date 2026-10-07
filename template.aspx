<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="template.aspx.vb" Inherits="template" title="U-SOFTFACTORY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">

	<form id="form1" runat="server">
	
	<h3 class="heading">
            ASP.NETテンプレート</h3>
		<div class="main">
		
		
		<table style="margin: 0 0 0 10px;" border="1" bordercolor="#cccccc" cellspacing="1" width="585" bgcolor="#bebebe">
				<tbody>
					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff" width="180px">
                            テンプレートNo001<br />
                            <br />
                            <img src="img/tpl_001.jpg" alt="tpl001" height="192" width="160" start=""></td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff" width="180px">
                            テンプレートNo002<br />
                            <br />
                            <img src="img/tpl_002.jpg" alt="tpl001" height="192" width="160"></td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
                            テンプレートNo003<br />
                            <br />
                            <img src="img/tpl_001.jpg" alt="tpl003" height="192" width="160"></td>
					</tr>
				</tbody>
			</table>
            &nbsp;<br />
            <br />
            ※本テンプレートはASP.NET専用テンプレートとなっておりますので、ASP.NETが動作する環境でご利用可能です。購入後のご返金は出来ませんので、あらかじめご了承お願い致します。<br />
            <br />
        </div>			
               
        
        
        
        
	
		<h3 class="heading">
            購入方法について</h3>
		<div class="main">
    		
		<h4>・銀行振り込みでの購入手順</h4><br>



（１）このページの下の「銀行振込み申込みフォーム」の内容を確認した後、<br>
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
      画面最下部の「送信」ボタンを押してください。<br>
      <br>
（２）弊社指定の銀行口座（下に記載）に、商品の代金をお振込み下さい<br>
            &nbsp; &nbsp; &nbsp;&nbsp;
      （※振込手数料はご負担願います。）。<br>
        <br>
　　※  お申し込み日から１０日以内にお振込みください。<br>
　　１０日過ぎますとキャンセル扱いとさせていただきます。<br><br>

（３）弊社で入金確認後、ダウンロードに必要な処理を行います。<br>
            &nbsp;
　　商品をダウンロードしてご利用ください。<br>
<br>
        <h4>・お振込み先</h4><br>
            &nbsp; &nbsp; &nbsp;&nbsp;

お振込み先：<br />
            &nbsp; &nbsp;&nbsp; &nbsp;[銀行名]　ジャパンネット銀行<br />
            &nbsp; &nbsp; &nbsp;
[支店名]　すずめ支店（支店番号002）<br />
            &nbsp; &nbsp; &nbsp;
[口座種別]　普通<br />
            &nbsp; &nbsp; &nbsp;
[口座番号]　5566490<br />
            &nbsp; &nbsp; &nbsp;
[口座名義]　Ｕ－ＳｏｆｔＦａｃｔｏｒｙ上間俊和<br />
            &nbsp; &nbsp; &nbsp;
[口座名義フリガナ]　ユーソフトファクトリウエマトシカズ<br />
            &nbsp; &nbsp; &nbsp;
--------------&nbsp;<br />
            &nbsp; &nbsp; &nbsp; ※入金確認は基本的に月～金の９：００～１７：００となります。<br />
            &nbsp; &nbsp;&nbsp; それ以外の時間帯は、入金確認が翌営業日となりますのでご了承願います。<br>

　	
　
　      <h4>・銀行振込み申込みフォーム</h4>
　
　<br>
            &nbsp; &nbsp;&nbsp;

●購入テンプレートNO:<br />
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="155px">
                <asp:ListItem>tpl_001</asp:ListItem>
                <asp:ListItem>tpl_002</asp:ListItem>
                <asp:ListItem>tpl_003</asp:ListItem>
            </asp:DropDownList><br />
            &nbsp; &nbsp;&nbsp;
●購入者氏名：<br />
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br>
            &nbsp; &nbsp;&nbsp;
●購入者Eメールアドレス:<br />
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="mailaddress" runat="server" Width="209px"></asp:TextBox><br />
            &nbsp; &nbsp;&nbsp; ●ご依頼人名（※法人名で振り込む場合など、振込みのご購入者名と異なる場合のみご記入ください。）:&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="mailaddress2" runat="server" Width="209px"></asp:TextBox><br />
            <br />
            &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/img/btn_t_reset.jpg"
                Width="169px" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/img/btn_t_kakunin.jpg"
                    Width="169px" /><br />




	</div>


	
</form>

</asp:Content>

