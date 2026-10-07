<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" title="U-SOFTFACTORY" %>

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

    <!--<p id="mainImg">
    <img src="img/mainImg.jpg" alt="革新的な技術で世の中を動かす企業を目指します" title="" width="627" height="328" />
    </p>-->
    <div class="mainImg">
        <div id="slides">
　　　　　<div class="slides_container">
             <img src="slide/img01.jpg" width="627" height="328" alt="革新的な技術で世の中を動かす企業を目指します">
             <img src="slide/img02.jpg" width="627" height="328" alt="インタラクティブコンテンツ　訴求効果の高いコンテンツ作りを目指して">
             <img src="slide/img03.jpg" width="627" height="328" alt="KINECTで広がる未来型ソリューションの提供">
             <img src="slide/img04.jpg" width="627" height="328" alt="イノベーション　未来で普通に使われる技術　安心で明るい未来のために今、私たちができること">
　　　　  </div>
		</div>	
    </div>
    
    <h3 class="heading">
        U-SOFTFACTORについて</h3>
	
	<div class="main">
        <h4 class="heading">夢、情熱、そして挑戦。きっと世界は変えられる。</h4>
	    <p>U-SOFTFACTORYホームページに来場頂きありがとうございます。100年に一度と言われる不景気ですが、皆さんはこの先の｢未来｣に｢ビジョン｣はありますか？弊社の夢は｢ユビキタスな未来を創造し、豊かな社会を作ること｣です。目まぐるしく進化しつづけるITサービスですが、まだまだ一環性がなく、社会に浸透できるものではありません。システム開発を続けて20年、好きこそものの上手なれ。私たちの技術はきっと世界を変えられる。そう信じ、これからの豊かで明るい未来を作るため全力で邁進して参ります。</p> 
	</div>

    <div class="article top">

	<h3 class="heading">U-SOFTFACTORYのサービス案内</h3>
	
        <div class="menuBox article_cell" style="width: 627px">
			<div class="boxgrid caption">
				<img src="img/photo1.jpg" alt="デジタルサイネージソリューション" height="144" width="272">
				<div class="cover boxcaption">
					<h3><a href="http://u-softfactory.net/productsi.aspx">タッチパネルサイネージ<br><span>Digital Signage Solusion</span></a></h3>
					<p>見て!さわって!コンテンツは中身が重要!流れるだけのコンテンツはもう古い!</p>					
				</div>
			</div>			
           	<h4 >デジタルサイネージソリューション</h4>
           	<h5>デジタルサイネージは単なる広告媒体ではありません。弊社が開発するタッチパネルを活用したインタラクティブなアプリケーションは、自動化、無人化を実現し、独創的な企画と最新の技術で、ユビキタスな社会を創造します。</h5>            
         </div>
			
		<div class="menuBox article_cell" style="width: 627px">
			<div class="boxgrid caption">
				<img src="img/photo2.jpg" alt="オリジナルソフトウェア開発" height="144" width="274">
				<div class="cover boxcaption">
					<h3><a href="http://u-softfactory.net/originalsystem.aspx">業務・制御・基幹システム<br><span>Business Application</span></a></h3>
					<p>グローバルは破綻する。今こそ自社にあった最適なシステムを構築し、早急な利益確保が必要です。</p>					
				</div>
			</div>			
           	<h4 >オリジナルソフトウェア開発</h4>
           	<h5>市販のソフトは実態に合わない、毎日同じ仕事も自動化出れば楽なのに･･･そんな風に考えたことはありませんか？U-SOFTFACTORYでは、利用用途に応じた最適なシステムを提案し、開発・導入・運用・フォローまで一環して受託させて頂く事が可能です。</h5>            
         </div>
		
		<div class="menuBox article_cell" style="width: 627px">
			<div class="boxgrid caption">
				<img src="img/photo3.jpg" alt="WEBシステム/クラウド" height="144" width="274">
				<div class="cover boxcaption">
					<h3><a href="http://u-softfactory.net/productsh.aspx">ホームページ/クラウド<br><span>Home Page/Cloud System</span></a></h3>
					<p>あなたの会社のＷＥＢ担当。経験豊富なエンジニアにお任せください。</p>					
				</div>
			</div>			
           	<h4 >ホームページ/WEBアプリケーション製作</h4>
           	<h5>お客様のご要望に合わせオリジナルのデザインを起こして制作するオーダープラン、決まったひな型を利用した格安テンプレートプラン、IPhone・IPad・Andoroidと相互通信を行う高度なWEBサービスの開発まで、ご要望に合わせてさまざまなWEBアプリケーションの開発を行っています。</h5>            
         </div>
         
		<div class="menuBox article_cell" style="width: 627px">
			<div class="boxgrid caption">
				<img src="img/photo4.jpg" alt="ASP.NETテンプレート" height="144" width="274">
				<div class="cover boxcaption">
					<h3><a href="http://u-softfactory.net/template.aspx">ASP.NETテンプレート<br><span>ASP.NET Template</span></a></h3>
					<p>開発速度を加速する！ASP.NETテンプレートが破格の３,９８０円から！</p>					
				</div>
			</div>			
           	<h4 >ソース付き！ASP.NETテンプレート販売</h4>
           	<h5>ASP.NETマスターページを利用したWEBテンプレートです。さらにお問い合わせページにはSystem.Net.Mailクラスを利用したサンプルプログラムが標準で利用可です。商用利用可能、著作権表示なし、原型がなくなるほどカスタマイズし、自由にお値付の上、ご販売ください。</h5>            
         </div>

    </div>

</asp:Content>

