// {/* <script>
// //ユーザーの現在の位置情報を取得
// navigator.geolocation.getCurrentPosition(successCallback, errorCallback);

// /***** ユーザーの現在の位置情報を取得 *****/
// function successCallback(position) {
//   var lat = position.coords.latitude;
//   var lon = position.coords.longitude;

//   var gl_text = "緯度：" + lat + "<br>";
//     gl_text += "経度：" + lon + "<br>";

//   document.getElementById("show_result").innerHTML = gl_text;

//   $.ajax({
//             url: "/shops/index",
//             type: "GET",
//             dataType: 'html.erb',
//             async: true,
//             data: {lat : position.coords.latitude,
//                   lon : position.coords.longitude},
//             success: function(data) {
//                 alert("success");
//             },
//             error: function(data) {
//                 alert("errror");
//             }
//           });
// }

// /***** 位置情報が取得できない場合 *****/
// function errorCallback(error) {
//   var err_msg = "";
//   switch(error.code)
//   {
//     case 1:
//       err_msg = "位置情報の利用が許可されていません";
//       break;
//     case 2:
//       err_msg = "デバイスの位置が判定できません";
//       break;
//     case 3:
//       err_msg = "タイムアウトしました";
//       break;
//   }
//   document.getElementById("show_result").innerHTML = err_msg;
//   // デバッグ用→　document.getElementById("show_result").innerHTML = error.message;
// }
// </script> */}