import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "asset/img/people.jpg";
  String name = "Rodolfo Neutron";
  String detalles = "1 review 5 photos";
  String comentario = "There is an amazin place in Sri Lanka";

  Review(this.pathImage, this.name, this.detalles, this.comentario);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComenta =  Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        comentario,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 13.0,
          fontWeight: FontWeight.w900 
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        detalles,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 13.0,
          color: Color(0xFFa3a5a7)  
        ),
      ),
    );


    final userName = Container(

      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
            fontSize: 17.0
        ),
      ),
  
    );
    
    
    final userDetalles = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComenta
      ],
    );
    
    final photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage)
        )
      ),

    );

    return Row (
      children: <Widget>[
      photo,
      userDetalles
      ],
    );

  }

}