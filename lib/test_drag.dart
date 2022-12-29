import 'package:flutter/material.dart';

import 'deepak/hook_widget.dart';

class DragTest extends StatefulWidget {
  const DragTest({super.key});

  @override
  State<DragTest> createState() => _DragTestState();
}

class _DragTestState extends State<DragTest> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).padding.top +
            MediaQuery.of(context).padding.bottom);
    return Scaffold(
        body: Center(
          child:  Container(
            width: width * 0.86,
            height: height * 0.60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              // image: DecorationImage(
              //     fit: BoxFit.cover,
              //     image: NetworkImage(staticData.backgroundImage!)
              // )
            ),
            child: Row(
              children: [
                Container(
                  width: width * 0.35,
                  height: height,
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('https://images.unsplash.com/photo-1661956602868-6ae368943878?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                          opacity: 0.3
                      )
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1661956602868-6ae368943878?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        Text('staticData.businessName',),
                        const Spacer(),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // openDialPad(staticData.mobileNumber);
                                },
                                child: const Icon(Icons.account_balance_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10,),

                              Expanded(
                                child: Text('staticData.mobileNumber',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // openEmailApp();
                                },
                                child: const Icon(Icons.account_balance_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: Text('staticData.email',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  // openWebsite(staticData.websiteUrl);
                                },
                                child: const Icon(Icons.abc,
                                  size: 18,
                                  color: Colors.black,),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: Text('staticData.websiteUrl',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(Icons.abc_outlined,
                                  size: 18,
                                  color: Colors.black,),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                child: Text('staticData.address',
                                  style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.black
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: height * 0.03),
                          child: Container(
                            width: width * 0.4,
                            height: height * 0.05,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'SUBSCRIBE',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Icon(Icons.connected_tv_sharp,
                                    size: 16, color: Colors.black),
                              ],
                            ),
                          ),
                        ),

                        const Padding(
                          padding:  EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('Follow me: @socialmedia',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            InkWell(
                              onTap: () {
                                // openTwitterApp(staticData.twitterUrl);
                              },
                              child: const Icon(Icons.access_alarms_rounded,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                // openInstagramApp(staticData.instaUrl);
                              },
                              child: const Icon(Icons.account_balance_rounded,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),

                            InkWell(
                              onTap: () {

                              },
                              child: const Icon(Icons.account_balance_rounded,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                // openYouTubeApp(staticData.youtubeUrl);
                              },
                              child: const Icon(Icons.account_balance_rounded,
                                size: 18,
                                color: Colors.black,
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),


          // child: Container(
          //   width: width * 0.86,
          //   height: height * 0.60,
          //   decoration: BoxDecoration(
          //     color: Colors.grey,
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Stack(
          //     children: [
          //       Positioned(
          //         width: width * 0.86,
          //         height: height * 0.60,
          //         top: 0,
          //           left: 0,
          //           child: StatefulDragArea(
          //             child: Image.network('https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg',
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //       ),
          //
          //     ],
          //   ),
          // ),
        )
    );
  }
}
