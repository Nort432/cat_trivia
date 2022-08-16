import 'package:cat_trivia/src/config/app_widgets/containers/my_rounded_container.dart';
import 'package:cat_trivia/src/config/app_widgets/pages/my_page.dart';
import 'package:flutter/material.dart';

class FactBody extends StatelessWidget {
  const FactBody({Key? key}) : super(key: key);

  final String title = 'Cat Facts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.history),)],
      ),
      body: MyPage(
        child: ListView(
          children: [
            MyRoundedContainer(
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Flexible(
                      flex: 60,
                      child: MyRoundedContainer(
                        child: Image.network(
                            'https://miro.medium.com/max/1400/0*X7m39QJP5m5czziB'),
                      ),
                    ),
                    Flexible(
                      flex: 25,
                      child: Text('Text 123 ' * 10),
                    ),
                    const Flexible(
                      flex: 15,
                      child: Text('10 Jun 2022'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
