import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubscriptionScreen(),
    );
  }
}

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Subscriptions"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SubscriptionCard(
                title: "Advance User",
                price: "\$24.99",
                isDark: true,
              ),
              SizedBox(width: 20),
              SubscriptionCard(
                title: "Enterprise User",
                price: "\$24.99",
                isDark: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final String title;
  final String price;
  final bool isDark;

  const SubscriptionCard({
    required this.title,
    required this.price,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 500,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? Colors.blueGrey[900] : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 13),
          Text(
            price,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Subscription Expiry: MM/DD/YYYY",
            style: TextStyle(
              fontSize: 12,
              color:
                  isDark ? Colors.white60 : const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: List.generate(
              6,
              (index) => Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: isDark ? Colors.white : Colors.black,
                    size: 26,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      "nascetur ridiculus mus.",
                      style: TextStyle(
                        fontSize: 16,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 160),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 12, 136, 238),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              onPressed: () {},
              child: Text("Buy"),
            ),
          ),
        ],
      ),
    );
  }
}
