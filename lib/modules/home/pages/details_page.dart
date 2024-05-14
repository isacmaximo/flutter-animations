import 'package:app_animations/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsPage extends StatefulWidget {
  final String drescription;
  const DetailsPage({super.key, required this.drescription});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _imageColorAnimationController;

  //já existe um widget para modificar a cor, apenas criei um para
  //mostrar como criar um widget de animação própio

  @override
  void initState() {
    _imageColorAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      lowerBound: 0,
      upperBound: 1,
    );

    _imageColorAnimationController.repeat(
      reverse: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _imageColorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black.withAlpha(220),
        title: const CustomText(
          text: 'Detalhes',
          fontSize: 28,
          color: Colors.white,
        ),
        leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            AnimatedColor(_imageColorAnimationController),
            SizedBox(
              height: size.height * 0.05,
            ),
            Center(
              child: SizedBox(
                width: size.width * 0.8,
                child: CustomText(
                  text: widget.drescription,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedColor extends AnimatedWidget {
  final Animation<double> imageColorAnimationController;
  const AnimatedColor(this.imageColorAnimationController, {super.key})
      : super(
          listenable: imageColorAnimationController,
        );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withAlpha(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Icon(
          Icons.sports_esports,
          color: Color.fromARGB(
            255,
            255,
            150,
            (255 * (imageColorAnimationController.value - 1).abs()).floor(),
          ),
          size: size.width * 0.3,
        ),
      ),
    );
  }
}
