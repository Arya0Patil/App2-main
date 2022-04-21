import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //add images to this list
  List banner = ['one', 'two', 'three', 'four'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.local_offer_rounded)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ],
          )
        ],
        title: Row(
          children: [
            const Text(
              'netmeds',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text('.com')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(31, 104, 100, 100),
                    border: Border.all(width: 1)),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.search)),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: const Text(
                        'Search for medicine & wellness products',
                        overflow: TextOverflow.fade,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    Text(
                      'Deliver to ',
                    ),
                    Text(
                      '400001',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: banner.length,
                    itemBuilder: (BuildContext, int i) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amberAccent),
                        width: MediaQuery.of(context).size.width / 2,
                        height: 70,
                        child: Text(banner[i]),
                      );
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                height: 500,
                child: GridView.count(
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: [
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                    Card(
                      color: Colors.cyan[50],
                      child: Text('data'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
