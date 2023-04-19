import 'package:flutter/material.dart';

void main() {
  runApp(const WidgetTest());
}

class WidgetTest extends StatelessWidget {
  const WidgetTest({super.key});

  Widget makeItem(context, i) {
    return Text('item : $i');
  }

  @override
  Widget build(BuildContext context) {
    var textItem = const SizedBox(
      height: 25,
      child: ListTile(
        leading: Icon(Icons.ad_units),
        title: Text('Text Item'),
      ),
    );

    var bottomAppBar = BottomAppBar(
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page),
          ],
        ),
      ),
    );

    var listViewItems = [
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
      textItem,
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // titleSpacing: 1,
          title: const Text('Header'),
          leading: const Icon(Icons.star),
          actions: const [Icon(Icons.star), Icon(Icons.star)],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),

          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            color: Colors.green,
          ),

          // height: 100,
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
              ),
              Text(
                '안녕',
                style: TextStyle(
                  color: Colors.blue[700],
                  backgroundColor: const Color.fromRGBO(20, 130, 50, 0.8),
                  fontWeight: FontWeight.w800,
                  fontSize: 100,
                ),
              ),
              Row(
                children: [
                  TextButton(
                    child: const Text('Text Button'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text('버튼임'),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.abc),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                        height: 100,
                      )),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 84, 71, 182),
                      height: 100,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: 30,
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 211, 204, 117),
                    width: 100,
                    height: 50,
                  ),
                ],
              ),
              Container(
                color: Colors.amber,
                height: 100,
                child: Align(
                    alignment: Alignment.bottomRight,
                    child:
                        Container(width: 50, height: 50, color: Colors.blue)),
              ),
              SizedBox(
                height: 150,
                child: Row(
                  children: [
                    const Icon(Icons.account_balance),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('카메라팝니다'),
                          const Text('금호동 3가'),
                          const Text('7000원'),
                          Row(
                            children: const [Icon(Icons.favorite), Text('4')],
                          ), //Row
                        ],
                      ), //Column
                    ),
                  ],
                ),
              ),
              SizedBox(
                // width: 100,
                height: 100,
                child: ListView(
                  children: listViewItems,
                ),
              ),
              SizedBox(
                // width: 100,
                height: 100,
                child: ListView.builder(
                  itemCount: 1000,
                  itemBuilder: makeItem,
                ),
              ),
              const SizedBox(
                height: 50,
                width: 300,
                child: NameLikeWidget(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar,
      ),
    );
  }
}

class NameLikeWidget extends StatefulWidget {
  const NameLikeWidget({super.key});

  @override
  State<NameLikeWidget> createState() => _NameLikeWidgetState();
}

class _NameLikeWidgetState extends State<NameLikeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class AppHomeWidget extends StatefulWidget {
  const AppHomeWidget({
    super.key,
  });

  @override
  State<AppHomeWidget> createState() => _AppHomeWidgetState();
}

class _AppHomeWidgetState extends State<AppHomeWidget> {
  @override
  Widget build(BuildContext context) {
    var column = Column(children: [
      const Text('안녕', style: TextStyle(color: Colors.black)),
      const Icon(Icons.star),
      Image.asset('assets/picture.png'),
      Container(
        width: 200,
        height: 30,
        color: Colors.blue,
      )
    ]);

    // return column;
    return Center(
      child: Container(
        width: 200,
        height: 30,
        color: Colors.blue,
      ),
    );
  }
}
