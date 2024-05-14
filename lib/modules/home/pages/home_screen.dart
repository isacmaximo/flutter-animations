import 'package:app_animations/components/card_game.dart';
import 'package:app_animations/components/custom_text.dart';
import 'package:app_animations/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatelessWidget {
  final _controller = Modular.get<HomeController>();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black.withAlpha(220),
        title: const CustomText(
          text: 'Nostalgic Games',
          fontSize: 28,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 1,
                height: size.height * 0.9,
                child: ListView.builder(
                  itemCount: _controller.listGame.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Observer(
                        builder: (context) => CardGame(
                          index: index,
                          onTap: () {
                            _controller.expandCardGame(index);
                          },
                          optionsWidgets: _controller.loadOpacityOptions(index),
                          expanded: _controller.listGame[index].expand,
                          imagePath: _controller.listGame[index].imagePath!,
                          title: _controller.listGame[index].name!,
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
      ),
    );
  }
}
