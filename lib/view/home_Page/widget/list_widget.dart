import 'package:flutter/material.dart';
import 'package:test_page/view/home_Page/contact.dart';
import 'package:test_page/view/home_Page/widget/widgetpages/calls.dart';
import 'package:test_page/view/home_Page/widget/widgetpages/nearby.dart';
import 'package:test_page/view/home_Page/widget/widgetpages/newgroup.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Newgroup(),));
        },
        leading: Icon(Icons.group),
        title: Text(
          "New group",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      ListTile(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Contact(),));
        },
        leading: Icon(Icons.person),
        title: Text(
          "Contacts",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Calls(),));
        },
        leading: Icon(Icons.call_outlined),
        title: Text(
          "calls",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      ListTile(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => Nearby(),));
        },
        leading: Icon(Icons.location_on_outlined),
        title: Text(
          "People Nearby",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.bookmark),
        title: Text(
          "Saved Messages",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.settings),
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      Divider(
        thickness: 1,
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.person_add_alt_outlined),
        title: Text(
          "Invite Friends",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.help_outline),
        title: Text(
          "Telegram Feattures",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    ]);
  }
}
