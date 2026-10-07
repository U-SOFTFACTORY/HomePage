<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uoloadtest.aspx.cs" Inherits="chouchou_uoloadtest" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    
    <title>テスト</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <link rel="stylesheet" href="css/base.css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Button1").click(function (evt) {
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
                options.success = function (result) { alert(result); };
                options.error = function (err) { alert(err.statusText); };

                $.ajax(options);

                evt.preventDefault();
            });
        });
    </script>
    
</head>


<body>
   
   <form id="form1" runat="server">

        <%--<asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />--%>
       <input id="FileUpload1" type="file" name="file" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload Selected File(s)" />
   
   </form>
   
</body>


</html>
