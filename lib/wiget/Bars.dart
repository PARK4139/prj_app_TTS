import 'package:flutter/material.dart';

class BarBottom extends StatelessWidget {
  const BarBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white60,
        indicatorColor: Colors.transparent,
        tabs: <Widget>[
          Tab(
            icon: Icon(
              Icons.home,
              size: 18,
            ),
            child: Text('홈', style: TextStyle(fontSize: 9)),
          ),
          Tab(
            icon: Icon(
              Icons.search,
              size: 18,
            ),
            child: Text('검색', style: TextStyle(fontSize: 9)),
          ),
          Tab(
            icon: Icon(
              Icons.save_alt,
              size: 18,
            ),
            child: Text('저장한 콘텐츠 목록', style: TextStyle(fontSize: 9)),
          ),
          Tab(
            icon: Icon(
              Icons.list,
              size: 18,
            ),
            child: Text('더보기', style: TextStyle(fontSize: 9)),
          ),
        ],
      ),
    );
  }
}

class BarTop extends StatelessWidget {
  const BarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Image.network(
            'images/Netflix_logo.png',
            fit: BoxFit.contain,
            height: 27, //50,//27
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextButton(
            child: const Text(
              'TV 프로그램',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white38,
              ),
            ),
            onPressed: () {
              const Text('티비요');
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextButton(
            child: const Text(
              '영화',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white38,
              ),
            ),
            onPressed: () {
              const Text('영화요');
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: TextButton(
            child: const Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white38,
              ),
            ),
            onPressed: () {
              const Text('내찜콘');
            },
          ),
        ),
      ],
    ));
  }
}
