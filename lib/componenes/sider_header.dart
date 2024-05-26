import 'package:flutter/material.dart';
import 'package:fastfood_app/componenes/sidebar_naming.dart';

class MySiderBar extends StatelessWidget {
  const MySiderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 100.0, left: 2.0), // Adjust left padding as needed
            child: Container(
              width: 100.0, // Set the width of the circular container
              height: 100.0, // Set the height of the circular container
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make the container circular
                border: Border.all(
                  color: Colors.orange, // Set border color
                  width: 2.0, // Set border width
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'lib/image/pro/op.jpg',
                  fit: BoxFit
                      .cover, // Ensure the image covers the circular container
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          MySiderNaming(
            text: "Home",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),

          //about
          MySiderNaming(
            text: "Payments",
            icon: Icons.payments_outlined,
            onTap: () {},
          ),

          //service
          MySiderNaming(
            text: "Promotions",
            icon: Icons.supervised_user_circle_outlined,
            onTap: () {},
          ),

          //menu
          MySiderNaming(
            text: "Settings",
            icon: Icons.settings,
            onTap: () {},
          ),

          //contact us

          MySiderNaming(
            text: "About us",
            icon: Icons.info,
            onTap: () {},
          ),

          const Spacer(),
          //logout

          MySiderNaming(
            text: "Logout",
            icon: Icons.logout,
            onTap: () {},
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
