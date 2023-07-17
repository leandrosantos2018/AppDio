import 'package:flutter/Material.dart';
import 'package:trilhapp2/components/exemplo/page3.dart';

import '../exemplo/page1.dart';
import '../exemplo/page2.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController();
  int posicaopage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("HomePage"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text("Cadastrais"),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => page3(
                                  texo: "Dados Cadastrais",
                                )));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    print(value);
                    posicaopage = value;
                    print(posicaopage);
                  });
                },
                children: [page1(), page2()],
              ),
            ),
            BottomNavigationBar(
                onTap: (value) {
                  controller.jumpToPage(value);
                },
                currentIndex: posicaopage,
                items: const [
                  BottomNavigationBarItem(
                    label: "page1",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "page2",
                    icon: Icon(Icons.home),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
