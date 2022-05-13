import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.camera_enhance, size: 28),
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
                  style: greyTextStyle.copyWith(fontSize: 20),
                ),
                SizedBox(width: 15),
                Text(
                  'Status',
                  style: whiteTextStyle.copyWith(fontSize: 20),
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
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/jeonghan.png',
                          width: 55,
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Status',
                              style: whiteTextStyle.copyWith(fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Ketuk untuk menambahkan pembaruan status',
                              style: greyTextStyle.copyWith(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pembaruan terkini',
                            style: greyTextStyle.copyWith(fontSize: 12),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset('assets/status1.png', width: 55),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lisa',
                                    style:
                                        whiteTextStyle.copyWith(fontSize: 15),
                                  ),
                                  Text(
                                    '10 menit lalu',
                                    style: greyTextStyle.copyWith(fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset('assets/status2.png', width: 55),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alma',
                                    style:
                                        whiteTextStyle.copyWith(fontSize: 15),
                                  ),
                                  Text(
                                    'Hari ini 10:23',
                                    style: greyTextStyle.copyWith(fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset('assets/status3.png', width: 55),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Diva',
                                    style:
                                        whiteTextStyle.copyWith(fontSize: 15),
                                  ),
                                  Text(
                                    'Hari ini 07:41',
                                    style: greyTextStyle.copyWith(fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pembaruan yang telah dilihat',
                                style: greyTextStyle.copyWith(fontSize: 12),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/status4.png',
                                    width: 55,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jessica',
                                        style: whiteTextStyle.copyWith(
                                            fontSize: 15),
                                      ),
                                      Text(
                                        'Hari ini 08:12',
                                        style: greyTextStyle.copyWith(
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 400),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
