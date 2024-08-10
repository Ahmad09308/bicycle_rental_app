import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            accountName: Text(
              'Nate Samson',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'nate@email.com',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                  'assets/avatar.png'), // استخدم الصورة الخاصة بك هنا
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                createDrawerItem(
                  icon: Icons.history,
                  text: 'History',
                  onTap: () {
                    // Navigate to history page
                  },
                ),
                createDrawerItem(
                  icon: Icons.report,
                  text: 'Complain',
                  onTap: () {
                    // Navigate to complain page
                  },
                ),
                createDrawerItem(
                  icon: Icons.group,
                  text: 'Referral',
                  onTap: () {
                    // Navigate to referral page
                  },
                ),
                createDrawerItem(
                  icon: Icons.info,
                  text: 'About Us',
                  onTap: () {
                    // Navigate to about us page
                  },
                ),
                createDrawerItem(
                  icon: Icons.settings,
                  text: 'Settings',
                  onTap: () {
                    // Navigate to settings page
                  },
                ),
                createDrawerItem(
                  icon: Icons.help,
                  text: 'Help and Support',
                  onTap: () {
                    // Navigate to help and support page
                  },
                ),
                createDrawerItem(
                  icon: Icons.logout,
                  text: 'Logout',
                  onTap: () {
                    // Handle logout
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget createDrawerItem(
    {IconData? icon, String? text, GestureTapCallback? onTap}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text!),
    onTap: onTap,
  );
}
