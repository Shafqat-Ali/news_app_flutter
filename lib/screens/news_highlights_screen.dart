import 'package:flutter/material.dart';

class NewHiglightsWidget extends StatelessWidget {
  const NewHiglightsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 17, 0, 0),
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const HighlightedNews();
          },
        ),
      ),
    );
  }
}

class HighlightedNews extends StatelessWidget {
  const HighlightedNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        gradient: const LinearGradient(
          begin: Alignment(
            0.5,
            0.49999999999999994,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            Colors.grey,
            Colors.black,
          ],
        ),
        image: const DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1665876702126-12c052834d42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 297,
            margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: const Text(
              "5 things to know about the 'conundrum' of lupus",
              maxLines: null,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'New York Small',
                fontWeight: FontWeight.w600,
                height: 1.49,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 55,
                right: 16,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1),
                    child: Text(
                      "Matt Villano",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        height: 1.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1),
                    child: Text(
                      "Sunday, 9 May 2021",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
