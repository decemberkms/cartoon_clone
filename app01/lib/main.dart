import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hello world!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Hi",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120.0,
              ),
              Text(
                "Total Balanace",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "\$5 194 482",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 42.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      child: Text(
                        "Transfer",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
