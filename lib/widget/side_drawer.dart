import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text(
                'Test GetX',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text("Change name"),
              onTap: () => Navigator.pushNamed(
                context,
                'edit_name',
              ),
            ),
            ListTile(
              title: Text("Add/Remove followers"),
              onTap: () => Navigator.pushNamed(
                context,
                'add_followers',
              ),
            ),
            ListTile(
              title: Text("Increment/Decrement followers"),
              onTap: () => Navigator.pushNamed(
                context,
                'edit_follower_count',
              ),
            ),
            ListTile(
              title: Text("Toggle Open status"),
              onTap: () => Navigator.pushNamed(
                context,
                'toggle_status',
              ),
            ),
            ListTile(
              title: Text("Add/Remove reviews"),
              onTap: () => Navigator.pushNamed(
                context,
                'add_reviews',
              ),
            ),
            ListTile(
              title: Text("Update Menu"),
              onTap: () => Navigator.pushNamed(
                context,
                'update_menu',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
