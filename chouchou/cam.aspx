<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cam.aspx.cs" Inherits="cam" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    
    <title>テスト</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <link rel="stylesheet" href="css/base.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
    
</head>

<body>

    <form id="form1" runat="server">

    <section>
        <header id="header">
            <h1>テスト</h1>
            <p>【写真を撮影してください】</p>
        </header>

        <div id="container">
            <div id="preview-box">
                <img id="pic">
            </div>

            <div id="input-box">
                <form id="form">
                    <input id="FileUpload1" type="file" name="FileUpload1" runat="server" onchange="preview(this)" />
                    <input id="comment" type="text" name="comment" runat="server" placeholder="コメントを入れてください" />
                </form>
            </div>
        </div>

        <footer id="footer">
            <div id="footer-txt">撮影後フリック２</div>
        </footer>

        <script type="text/javascript">

            //URLからパラメータを取得
            var params = getQueryString();

            alert(params['dir']);

            //Animation
            var animationEndEvt = "oTransitionEnd mozTransitionEnd webkitTransitionEnd transitionend";
            
            function upload() {
                
                $("#pic").unbind(animationEndEvt, upload);

                var fileUpload = $("#FileUpload1").get(0);
                var files = fileUpload.files;

                var data = new FormData();
                for (var i = 0; i < files.length; i++) {
                    data.append(files[i].name, files[i]);
                }

                var options = {};
                options.url = "FileUploadHandler.ashx";
                options.type = "POST";
                options.data = data;
                options.contentType = false;
                options.processData = false;
                options.success = function (result) {
                    alert('アップロード完了');
                    $("#pic").attr('src', '');
                    $("#pic").removeClass("flick");
                    $("#file").val("");
                };
                options.error = function (err) {
                    alert('アップロードエラー');
                    $("#pic").removeClass("flick");
                };

                $.ajax(options);
                evt.preventDefault();

            }

            //写真プレビュー
            function preview(ele) {

                var pic = document.getElementById('pic');
                pic.src = "";

                if (!ele.files.length) return;                          // ファイル未選択

                var file = ele.files[0];
                if (!/^image\/(png|jpeg|gif)$/.test(file.type)) return; // typeプロパティでMIMEタイプを参照
                
                var fr = new FileReader();
                fr.onload = function () {
                    pic.src = fr.result;                               // 読み込んだ画像データをsrcにセット
                }

                fr.readAsDataURL(file);                                // 画像読み込み

                pic.addEventListener("touchstart", touchstartHandler, false);
                pic.addEventListener("touchmove", touchendHandler, false);
                pic.addEventListener("touchend", touchstartHandler, false);

                //pic.addEventListener("click", function () {
                //    $("#pic").unbind(animationEndEvt);
                //    $("#pic").bind(animationEndEvt, upload);
                //    $(this).addClass("flick");
                //}, false);
            }


            var st_pos;
            var ed_pos;
            
            //Touchイベント
            function touchstartHandler(e) {

                e.preventDefault();

                var touch = e.touches[0];

                if (e.type == "touchstart") {
                    st_pos = touch.pageY
                }

                if (e.type == "touchend") {
                    if (st_pos < ed_pos) {

                        $("#footer-txt").text("下へは投げれません。");

                    } else if (st_pos > (ed_pos + 30)) {

                        $("#footer-txt").text("上フリック");
                        $("#pic").unbind(animationEndEvt);
                        $("#pic").bind(animationEndEvt, upload);
                        $("#pic").addClass("flick");

                    }
                }

            }

            //Touchイベント
            function touchendHandler(e) {

                var touch = e.touches[0];
                if (e.type == "touchmove") {
                    ed_pos = touch.pageY
                }

            }

            //URL引数からディレクトリ名を識別
            function getQueryString() {
                var result = {};

                if (1 < document.location.search.length) {

                    var query = document.location.search.substring(1);
                    var parameters = query.split('&');

                    for (var i = 0; i < parameters.length; i++) {   
                        var element = parameters[i].split('=');
                        var paramName = decodeURIComponent(element[0]);
                        var paramValue = decodeURIComponent(element[1]);
                        result[paramName] = decodeURIComponent(paramValue);
                    }
                }
                return result;
            }
        </script>

    </section>

    </form>

</body>


</html>
