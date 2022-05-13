import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';
import 'package:whatsapp_clone/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.message, size: 28),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'HelloApp',
                  style: greyTextStyle.copyWith(fontSize: 24),
                ),
                Spacer(),
                Image.asset('assets/icon_search.png', width: 20),
                SizedBox(width: 25),
                Icon(
                  Icons.more_vert,
                  color: whiteColor,
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.camera_enhance,
                  color: whiteColor,
                ),
                SizedBox(width: 15),
                Text(
                  'Chat',
                  style: whiteTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(width: 15),
                Text(
                  'Status',
                  style: greyTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(width: 15),
                Text(
                  'Panggilan',
                  style: greyTextStyle.copyWith(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: blackColor),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    ChatTile(
                        imageUrl: 'assets/jennie.png',
                        name: 'Alma',
                        text: "Oke, let's go!",
                        time: '09:32',
                        unread: false),
                    ChatTile(
                        imageUrl: 'assets/jisoo.png',
                        name: 'Diva',
                        text: "Now we are playing",
                        time: '7:23',
                        unread: true),
                    ChatTile(
                        imageUrl: 'assets/lisa.png',
                        name: 'Lisa',
                        text: "Maybe",
                        time: 'Yesterday',
                        unread: true),
                    ChatTile(
                        imageUrl: 'assets/treasure.png',
                        name: 'TREASURE EVENT',
                        text: "jihoon:   Monday",
                        time: 'Yesterday',
                        unread: true),
                    ChatTile(
                        imageUrl: 'assets/seventeen.png',
                        name: 'SEVENTEEN EVENT',
                        text: "Hoshi:   Yeah",
                        time: 'Tuesday',
                        unread: false),
                    ChatTile(
                        imageUrl: 'assets/profile.png',
                        name: 'Jessica',
                        text: "Oke, let's go!",
                        time: 'Sunday',
                        unread: false),
                    SizedBox(height: 363),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
