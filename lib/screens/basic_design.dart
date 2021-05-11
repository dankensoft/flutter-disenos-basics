import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Imagen
        Image(image: AssetImage('assets/landscape.jpg')),
        // Título
        Title(),
        // Button Section
        ButtonSection(),
        // Description
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque sapien est, sed fringilla arcu vestibulum eget. Sed porttitor, mi eget pharetra tincidunt, libero tellus porttitor neque, a porta libero risus vitae odio. Nullam viverra iaculis nisi, et vulputate purus tempus ac. Quisque et diam at orci egestas condimentum. Vestibulum venenatis condimentum ipsum et malesuada. Vivamus vel convallis dui. Praesent cursus sem at sem pellentesque cursus. Vestibulum id mi varius, commodo urna sed, vehicula dolor.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg Switzerland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
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
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE')
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blueAccent,
          size: 30,
        ),
        Text(this.text, style: TextStyle(color: Colors.blueAccent))
      ],
    );
  }
}
