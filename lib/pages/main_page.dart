import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static final String id = "main_page";

  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF031F2B),
        title: Text(
          "Sayohat",
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF263238),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: "Buxoro",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              fontSize: 18),
                          border: InputBorder.none),
                    )),
                    Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.6),
                      size: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                margin: EdgeInsets.all(12),
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemCategory(text: "Barchasi"),
                    itemCategory(text: "Tog'"),
                    itemCategory(text: "Dacha"),
                    itemCategory(text: "Shahar"),
                  ],
                ),
              ),
              Text(
                "Mashhur Joylar",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemLocation(image: "assets/1.png",text: "Orol Dengizi",location: "Qoraqalpog'iston"),
                    itemLocation(image: "assets/2.png",text: "Orol Dengizi",location: "Qoraqalpog'iston"),
                    itemLocation(image: "assets/3.png",text: "Orol Dengizi",location: "Qoraqalpog'iston"),
                    itemLocation(image: "assets/1.png",text: "Orol Dengizi",location: "Qoraqalpog'iston"),
                    itemLocation(image: "assets/1.png",text: "Orol Dengizi",location: "Qoraqalpog'iston"),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget itemCategory({text}) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF5EDFFF),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }


  Widget itemLocation({image,text,location}){
    return AspectRatio(
      aspectRatio: 1.4/2,
      child: Container(
      margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(image),fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            Text(location),
          ],
        ),
      ),
    );
  }
}
