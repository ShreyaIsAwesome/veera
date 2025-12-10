import 'package:flutter/material.dart';
import 'package:main/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

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
                    child: GestureDetector(
                      onTap: () {
                        debugPrint("go to document reader!!");
                        Navigator.pushNamed(
                          context,
                          "/landing_page",
                          arguments: 1,   
                        );
                      },
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
                            child: Icon(Icons.article,
                            size: 150,
                            color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                        debugPrint("go to scanner!!");
                        Navigator.pushNamed(
                          context,
                          "/landing_page",
                          arguments: 2,   
                        );
                      },
                child: Container(decoration: BoxDecoration(
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
                ),
              )
            ],
          ),
        ),
      ),
  );
  }
}