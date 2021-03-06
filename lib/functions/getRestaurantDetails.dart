import 'package:http/http.dart' as http;
import 'dart:convert';

getRestaurantDetails1(String resName) async{
  print(resName);
  String theUrl = "https://tables24.000webhostapp.com/Savio/getRestaurantDetails1.php";
  var res = await http.post(Uri.encodeFull(theUrl),headers: {"Accept":"application/json"},
      body: {
        "resName": resName
      }
  );

  print(resName);
  var respBody = json.decode(res.body);
  print(respBody);
  return respBody;
}

getRestaurantDetails(String resId) async{
  print(resId);
  String theUrl = "https://tables24.000webhostapp.com/Savio/getRestaurantDetails.php";
  var res = await http.post(Uri.encodeFull(theUrl),headers: {"Accept":"application/json"},
      body: {
        "resId": resId
      }
  );
  var respBody = json.decode(res.body);
  print(respBody);
  return respBody;
}


getRestaurants()async{
  String theUrl = 'https://tables24.000webhostapp.com/Savio/getRestaurants.php';
  var res = await http.get(Uri.encodeFull(theUrl),headers: {"Accept":"application/json"});
  var responsBody = json.decode(res.body);
  print(responsBody);
  return responsBody;

}
