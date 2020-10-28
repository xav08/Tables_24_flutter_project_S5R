import 'package:flutter/material.dart';
import 'package:tables_24_v1/screens/bookingPage.dart';
class RestaurantBookingButton extends StatelessWidget {
  List <dynamic> snap;
  RestaurantBookingButton(List <dynamic> this.snap);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        String temp = snap[0]['res_name'];
        String temp1 = snap[0]['restaurant_id'];
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookingPage(temp, temp1)),
        );
      },
      child: Container(
        alignment: Alignment(0, -1),
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            'Book Now',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
