import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) =>
        SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 30,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  imageUrl,
                  width: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: darkColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );

    Widget senderBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 60,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: darkColor,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/back-removebg-preview.png',
              color: whiteColor,
              width: 25,
            ),
            SizedBox(width: 5),
            Image.asset(
              'assets/treasure.png',
              width: 40,
            ),
            SizedBox(
              width: 12,
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TREASURE EVENT',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '13 members',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: whiteColor,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/video-removebg-preview.png',
              color: whiteColor,
              width: 25,
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/call-removebg-preview.png',
              color: whiteColor,
              width: 25,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.more_vert,
              color: whiteColor,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: darkColor),
                child: Column(
                  children: [
                    Text('Yesterday',
                        style: whiteTextStyle.copyWith(fontSize: 10))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/suga.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/hoshi.png',
                text: 'Find here :P',
                time: '2:30',
              ),
              senderBubble(
                imageUrl: 'assets/lisa.png',
                text:
                    'Thinking about how to deal\nwith this client from hell...',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/jennie.png',
                text: 'when are we going?',
                time: '23:11',
              ),
              receiverBubble(
                imageUrl: 'assets/hoshi.png',
                text: 'Monday',
                time: '23:27',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (0 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: darkColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          children: [
            Image.asset('assets/emoji-removebg-preview.png',
                color: whiteColor, width: 25),
            SizedBox(width: 8),
            Text(
              'Type message ...',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff999999),
              ),
            ),
            Spacer(),
            Image.asset('assets/paperclip-removebg-preview.png',
                color: whiteColor, width: 25),
            SizedBox(width: 12),
            Image.asset(
              'assets/icon_send.png',
              width: 25,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
