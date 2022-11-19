import 'package:flutter/material.dart';

class LatestNewsRow2 extends StatelessWidget {
  const LatestNewsRow2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(9, 20, 0, 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Latest News",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'New York Small',
                    fontWeight: FontWeight.w700,
                    height: 1.00,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: const Text(
                        "See All",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 9, 0),
                      child: const Icon(Icons.arrow_forward,
                          color: Colors.blue, size: 15),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
