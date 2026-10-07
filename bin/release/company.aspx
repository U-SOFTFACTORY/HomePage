<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="company.aspx.vb" Inherits="company" title="U-SOFTFACTORY" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">
  <script type="text/javascript">
    window.onload = function () {
        if (GBrowserIsCompatible()) {
            var map = new GMap2(document.getElementById("map"));

            //座標と地図倍率を設定
            map.setCenter(new GLatLng(34.616125, 135.559029), 15);

            //マップ切り替えボタンを設置
            map.addControl(new GMapTypeControl());
            map.addControl(new GSmallMapControl());
            //マーカ
            var marker = new GMarker(new GLatLng(34.616125, 135.559029));
            map.addOverlay(marker);
        }
    } 	
  </script>

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

	<div id="main">		
		<h3 class="heading">ごあいさつ</h3>
		<div class="main">
                    U-SOFTFACTORYホームページに来場頂きありがとうございます。100年に一度と言われる不景気ですが、皆さんはこの先の｢未来｣に｢ビジョン｣はありますか？弊社の夢は｢ユビキタスな未来を創造し、豊かな社会を作ること｣です。目まぐるしく進化しつづけるITサービスですが、まだまだ一環性がなく、社会に浸透できるものではありません。システム開発を続けて20年、好きこそものの上手なれ。私たちの技術はきっと世界を変えられる。そう信じ、これからの豊かで明るい未来を作るため全力で邁進して参ります。 &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 代表 上間俊和
		</div>

		<h3 class="heading">会社情報</h3>
		<div class="main">
            
			<table style="margin: 20px 0 0 10px;" border="1" bordercolor="#cccccc" cellspacing="1" width="585" bgcolor="#bebebe">
				<tbody>
					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7" width="55">会社名</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
    U-SOFTFACTORY（英語表記 U-SOFTFACTORY Inc.）</td>
					</tr>
					
					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7" width="55">代表者</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
    上間　俊和</td>
					</tr>
					
					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7">設立</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
    平成24年9月1日</td>
					</tr>
					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7">登記上の住所</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
    〒547-0021 大阪市平野区喜連東1-1-10</td>
					</tr>
                    <%--<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7">活動拠点</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">    
                            <a href="http://kc-i.jp/access/"　>〒530-0011 大阪府大阪市北区大深町3−1<br />グランフロント大阪　北館7階（ナレッジサロン内）</a></td>
					</tr>--%>

					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7">事業内容</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
    デジタルサイネージの企画・販売・コンテンツ制作<br>
        システム開発、ホームページ製作・ITコンサルティングなど</td>
					</tr>
					
					<tr>
						<td style="padding: 10px;" valign="top" bgcolor="#efede7">主要取引銀行</td>
						<td style="padding: 10px;" valign="top" bgcolor="#ffffff">
    みずほ銀行　　　 平野支店 <br>
    東京三菱UFJ銀行　平野支店 <br>
    大阪商工信用金庫　平野支店</td>
					</tr>
					
				</tbody>
			</table>
		</div>

	<h3 class="heading">アクセス</h3>	
		<div class="main">
		
					
		<p>Map</p>
        <div id="map" style="width:600px; height:400px">
　　    </div>


					
					
　　　　</div>
	</div>

</asp:Content>

