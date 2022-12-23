import 'package:flutter/material.dart';

import 'deepak/hook_widget.dart';

class DragTest extends StatefulWidget {
  const DragTest({super.key});

  @override
  State<DragTest> createState() => _DragTestState();
}

class _DragTestState extends State<DragTest> {
  bool _isDropped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width,
                child: StatefulDragArea(
                  child: Image.network(
                    'https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg',
                    // width: 200,
                    // height: 200,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 200,
                  width: MediaQuery.of(context).size.width,
                  child: StatefulDragArea(
                    child: Image.network(
                      'https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg',
                      // width: 200,
                      // height: 200,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width,
            child: StatefulDragArea(
              child: Image.network(
                'https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg',
                width: 200,
                height: 200,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width,
            child: StatefulDragArea(
              child: Image.network(
                'https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg',
                width: 200,
                height: 200,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width,
            child: StatefulDragArea(
              child: Image.network(
                'https://www.visitdubai.com/-/media/gathercontent/article/t/take-the-perfect-photo-of-burj-khalifa/media/v3/best-burj-khalifa-picture-header-2.jpg',
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
