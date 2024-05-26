import 'package:flutter/material.dart';

class Mylocation extends StatelessWidget {
  const Mylocation({super.key});

  void locationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Enter Your Address"),
        content: const TextField(
          decoration: InputDecoration(hintText: "Search Addres"),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deliver Now",
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          GestureDetector(
            onTap: () => locationSearchBox(context),
            child: const Row(
              children: [
                //address
                Text(
                  "2 Prodot Street Jonnesburg",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
                //drop menu
              ],
            ),
          ),
        ],
      ),
    );
  }
}
