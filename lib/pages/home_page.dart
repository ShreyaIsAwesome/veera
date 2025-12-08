import 'package:flutter/material.dart';
import 'package:main/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: Icon(Icons.logo_dev, color: Colors.white,),
        title: Text("V    E    E    R    A",
        style: TextStyle(
          color: Colors.white
        ),),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              debugPrint("go to settings!");
            } ,
             icon: Icon(Icons.settings, color: Colors.white,))
        ],
        backgroundColor: AppColors.accentGrey
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.accentGrey
                ),
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Document Reader",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Icon(Icons.document_scanner,
                          size: 150,
                          color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(decoration: BoxDecoration(
                  color: AppColors.accentGrey
                ),
                child: SizedBox(
                  width: 400,
                  height: 290,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Scanner",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Icon(Icons.qr_code_scanner,
                          size: 150,
                          color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.accentGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.document_scanner_outlined), label: "Reader"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: "Scanner"),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "Library"),
          ]),
    );
  }
}