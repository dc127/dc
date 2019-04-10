<%@ page language="java"  contentType="text/html; charset=UTF-8" %>
<html>
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
    <input type="submit" value="富文本图片上传文件">T
</form>
</body>
</html>
