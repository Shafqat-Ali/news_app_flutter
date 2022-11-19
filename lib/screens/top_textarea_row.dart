import 'package:flutter/material.dart';

class TopTextAreaWidget extends StatelessWidget {
  const TopTextAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 10.0, height: 1, color: Colors.black),
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  isDense: true,
                  hintText: 'Dogecoin on the Moon...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipOval(
              child: Material(
                color: Colors.blue, // Button color
                child: InkWell(
                  splashColor: Colors.red, // Splash color
                  onTap: () {
                    print("notification clicked");
                  },
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        alignment: Alignment.center,
                        child:
                            Image.asset('assets/images/img_notification.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
