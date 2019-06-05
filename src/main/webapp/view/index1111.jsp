<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<html>
<style>
    #header {
        background-color:black;
        color:white;
        text-align:center;
        padding:5px;
    }
    #nav {
        line-height:30px;
        background-color:#eeeeee;
        height:300px;
        width:100px;
        float:left;
        padding:5px;
    }
    #section {
        width:350px;
        float:left;
        padding:10px;
    }
    #footer {
        background-color:black;
        color:white;
        clear:both;
        text-align:center;
        padding:5px;
    }
</style>
</head>

<body>

<div id="header">
    <h1>City Gallery</h1>
</div>

<div id="nav">
    <div>
        London<br>
        Paris<br>
        Tokyo<br>
    </div>
</div>

<div id="section">
    <h2>London</h2>
    <p>
        London is the capital city of England. It is the most populous city in the United Kingdom,
        with a metropolitan area of over 13 million inhabitants.
    </p>
    <p>
        Standing on the River Thames, London has been a major settlement for two millennia,
        its history going back to its founding by the Romans, who named it Londinium.
    </p>
</div>

<div id="footer">
    Copyright ? W3Schools.com
</div>

</body>
<%--
<body>
<h2>Hello World!</h2>
springMVC上传文件
<form action="/manage/product/upload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file">
    <input type="submit" value="springmvc上传文件">
</form>
富文本图片上传文件
<form action="/manage/product/richtextImgUpload.do" method="post" enctype="multipart/form-data">
    <input type="file" name="upload_file">
    <input type="submit" value="富文本图片上传文件">
</form>
</body>
--%>
</html>
