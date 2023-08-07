import 'package:flutter/material.dart';

import '../../controller/ColorManager.dart';
import '../custom_widgets/container/MyContainer.dart';

class InitPage extends StatelessWidget {

  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorManager.PRIMARY,
      body: Center(
        child: Column(
          children: [
            _showImg(),

            _showBottom(context, width)
          ],
        ),
      )
    );
  }//WID

  Widget _showImg() => Expanded(
    flex: 4,
    child: Image.asset('lib/assets/images/first_time_character_dark.png'),
  );

  Widget _showBottom(BuildContext context, double width) => Expanded(
    child: Column(
      children: [
        GestureDetector(
          onTap: () => _goToCreatePlayer(context),
          child: MyContainer(
            width: width * 0.8,
            height: 50,
            borderRadius: 10,
            text: 'Crear Personaje',
            fontFamily: 'Font_Anima',
            textSize: 30,
            backgroundColor: ColorManager.BTN,
          ),
        ),
      ],
    ),
  );

  void _goToCreatePlayer(BuildContext context) => Navigator.pushReplacementNamed(context, 'createCharacter');
}//CLASS