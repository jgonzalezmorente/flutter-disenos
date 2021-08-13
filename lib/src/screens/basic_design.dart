import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image( image: AssetImage( 'assets/landscape.jpg' ) ),

          // Title
          Title(),

          // Button Section
          ButtonSection(),


          // Description
          Container(
            margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10 ) ,
            child: Text(
              'Voluptate minim sunt reprehenderit deserunt cupidatat est ea occaecat ipsum et. Ad ex mollit sit elit cillum enim tempor exercitation ea cupidatat fugiat. Et ad ipsum sit est cillum. Quis sunt dolor laborum duis consequat pariatur qui nisi culpa consectetur Lorem enim anim. Non nisi incididunt incididunt adipisicing proident ut qui.',
              textAlign: TextAlign.justify,
            )
          )
        ],
      )
   );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(        
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( 'Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold) ),
              Text( 'kandersteg, Switzerland', style: TextStyle( color: Colors.black45 ) ),
            ],
           ),
           Expanded(child: Container()),

          Icon( Icons.star, color: Colors.red ),
          Text( '41' )
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric( horizontal: 70, vertical: 30 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,              
        children: [
          CustomButton( icon: Icons.call, text: 'CALL' ),
          CustomButton( icon: Icons.navigation_sharp, text: 'ROUTE' ),
          CustomButton( icon: Icons.share, text: 'SHARE' ),
        ],
      ),
    );

  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  
  const CustomButton( 
    {
      Key? key,
      required this.icon, 
      required this.text,
    }) : super(key: key);  

  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( this.icon, color: Colors.blue.shade300, size: 30 ),
        SizedBox( height: 7 ),
        Text(
          this.text, 
          style: TextStyle(
            color: Colors.blue.shade300, 
            fontWeight: FontWeight.bold
          )
        )
      ],
    );
  }
}