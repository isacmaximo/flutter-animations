import 'package:app_animations/components/custom_text.dart';
import 'package:flutter/material.dart';

class CardGame extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool expanded;
  final int index;
  final void Function()? onTap;
  final Future<Widget> optionsWidgets;
  const CardGame({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    required this.expanded,
    required this.optionsWidgets,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      margin: const EdgeInsets.only(bottom: 20, top: 20),
      width: size.width * 0.8,
      height: expanded ? size.height * 0.4 : size.height * 0.3,
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(200),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOutQuint,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: size.width * 0.65,
            height: size.height * 0.18,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
          ),
          CustomText(
            text: title,
            fontSize: size.width * 0.05,
            color: Colors.white,
          ),
          Center(
            child: GestureDetector(
              onTap: onTap,
              child: Icon(
                size: size.width * 0.07,
                expanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ),
          ),
          FutureBuilder<Widget>(
            future: optionsWidgets,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return expanded
                    ? Column(children: [snapshot.data!])
                    : Container();
              } else {
                // Enquanto o Future estiver sendo processado, você pode retornar um widget de carregamento, por exemplo:
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
