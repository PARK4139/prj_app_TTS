import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../wiget/Bars.dart';
import '../wiget/sliders.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}
class _ScreenHomeState extends State<ScreenHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenHomeSub();
  }
}
class ScreenHomeSub extends StatelessWidget {
  const ScreenHomeSub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 130,
        // height: 130,
        // padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
        // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        color: Colors.black,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BarTop(),
                ],
              ),
            ),
            ImageCarouselSlider(),
          ],
        ));
  }
}
class ScreenSearch extends StatefulWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}
class _ScreenSearchState extends State<ScreenSearch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const ScreenSearchSub();
  }
}
class ScreenSearchSub extends StatefulWidget {
  const ScreenSearchSub({Key? key}) : super(key: key);

  @override
  State<ScreenSearchSub> createState() => _ScreenSearchSubState();
}
class _ScreenSearchSubState extends State<ScreenSearchSub> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("검색"),
      ),
    );
  }
}

class ScreenTextToSpeach extends StatelessWidget {
  // const TextToSpeach({Key? key}) : super(key: key);
  FlutterTts flutterTts = FlutterTts();
  TextEditingController textEditingController = TextEditingController();

  ScreenTextToSpeach({super.key});

  speak(String text) async {
    List<dynamic> languages = await flutterTts.getLanguages;
    print(languages);
    var language;
    // language = "en-US";
    // language = "ja-JP";
    language = "ko-KR";
    await flutterTts.setLanguage(language);
    await flutterTts.isLanguageAvailable(language);
    await flutterTts.setSpeechRate(1.5);
    await flutterTts.setPitch(1.9);
    await flutterTts.setVolume(1.0);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          TextFormField(
            controller: textEditingController,
            // initialValue: '한국어를 입력하세요',
            decoration: InputDecoration(
              labelText: '한국어를 입력하세요',
              hintText: 'ex )  한글',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return '입력되지 않았네요.다시 작성해주세요.';
              }
              return null;
            },
            onChanged: (value) {
              print("onChanged: ${value}");
            },
            onFieldSubmitted: (value) {},
          ),
          TextButton(
            onPressed: () => speak(textEditingController.text),
            child: Text(
              'Convert To Voice',
              style: TextStyle(color: Colors.white38),
            ),
          ),
        ],
      ),
    );
  }
}

