//获取摄像头照片，并上传
function GetPhoto(resultid,getvideo){
	var e, f;
    e = document.getElementById("getphoto_canvas");
	f = e.getContext("2d");
	f.drawImage(getvideo, 0, 0, 346, 260);

	var a = document.getElementById("getphoto_canvas").toDataURL("image/jpeg");

	$.post("upload_photo.aspx", {
	  base64str: a,
      resultid:resultid
	}, function(a) {
		//alert(a);
	})
}