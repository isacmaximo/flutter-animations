import 'package:app_animations/components/custom_button.dart';
import 'package:app_animations/shared/custom_curve.dart';
import 'package:flutter/material.dart';

class OptionsWidget extends StatefulWidget {
  final bool favorite;
  final void Function()? onTapFavorite;
  final void Function()? onTapDetails;
  const OptionsWidget({
    super.key,
    required this.favorite,
    this.onTapFavorite,
    this.onTapDetails,
  });

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  double rotation = 0.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.02,
        ),
        // const Divider(),

        SizedBox(
          width: size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtom(
                title: 'Detalhes',
                fontSize: size.width * 0.045,
                otherwidget: GestureDetector(
                  onTap: widget.onTapDetails,
                  child: Icon(
                    Icons.menu_book,
                    color: Colors.white.withAlpha(150),
                    size: size.width * 0.08,
                  ),
                ),
              ),
              CustomButtom(
                title: 'Favoritar',
                fontSize: size.width * 0.045,
                otherwidget: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: rotation),
                  curve: const CustomCurve(),
                  onEnd: () {
                    setState(() {
                      rotation = 0.0;
                    });
                  },
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.onTapFavorite!();
                          rotation = 0.2;
                        });
                      },
                      child: Transform.rotate(
                        angle: value,
                        child: Icon(
                          Icons.star,
                          color: widget.favorite == true
                              ? Colors.yellow
                              : Colors.white.withAlpha(150),
                          size: size.width * 0.08,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
