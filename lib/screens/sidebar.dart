import 'package:flutter/material.dart';
import 'package:tugasmokeup/screens/login.dart';

class sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding

        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Kemal Al Ghifari'),
            accountEmail: Text('Kemal@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white54,
              child: ClipOval(
                child: Image.asset(
                  'assets/user.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffFFC700),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: Colors.yellow,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'Catagories',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => null,
          ),
         
       
         
         
          Divider(),
             ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => login()),),
          ),
        
        ],
      ),
    );
  }
}
