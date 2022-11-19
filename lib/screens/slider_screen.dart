import 'package:flutter/material.dart';
import '../utils/colors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Expanded(
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const ListbyryanbrowneItemWidget();
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListbyryanbrowneItemWidget extends StatelessWidget {
  const ListbyryanbrowneItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          gradient: LinearGradient(
            begin: const Alignment(
              0.4985507404992214,
              0.4999999843178951,
            ),
            end: const Alignment(
              0.5000000157643216,
              0.9999999763892755,
            ),
            colors: [
              fromHex('#59616161'),
              ColorConstant.black900,
            ],
          ),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1665876702126-12c052834d42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 50, 16, 0),
                child: Text(
                  "by Ryan Browne",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: 10,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                width: 266,
                margin: const EdgeInsets.fromLTRB(16, 5, 16, 0),
                child: Text(
                  "Crypto investors should be prepared to lose all their money, BOE governor says",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
                    fontSize: 16,
                    fontFamily: 'New York Small',
                    fontWeight: FontWeight.w700,
                    height: 1.30,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 276.00,
                  margin: const EdgeInsets.fromLTRB(16, 41, 16, 18),
                  child: Text(
                    "“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: 10,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Color fromHex(String hexString) {
  final buffer = StringBuffer();
  if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  buffer.write(hexString.replaceFirst('#', ''));
  return Color(int.parse(buffer.toString(), radix: 16));
}
