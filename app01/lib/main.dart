import 'package:app01/widgets/button.dart';
import 'package:app01/widgets/currency-card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
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
                const SizedBox(
                  height: 70.0,
                ),
                Text(
                  "Total Balanace",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 22.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 42.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      myText: "Transfer",
                      bgColor: Color.fromARGB(221, 242, 184, 68),
                      textColor: Colors.black,
                    ),
                    Button(
                      myText: "Request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Wallet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: "6 428",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(
                    0,
                    -20,
                  ),
                  child: const CurrencyCard(
                    name: "Bitcoin",
                    code: "BTC",
                    amount: "9 785",
                    icon: Icons.currency_bitcoin_outlined,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(
                    0,
                    -40,
                  ),
                  child: const CurrencyCard(
                    name: "Dollar",
                    code: "USD",
                    amount: "415 428",
                    icon: Icons.attach_money_rounded,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
