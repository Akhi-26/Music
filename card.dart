import 'package:flutter/material.dart';

class Musicard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Image(
                    image: NetworkImage(
                        "https://i.scdn.co/image/ab6761610000e5ebd319de19e7e02c419b5fec77"),
                    height: 150,
                    width: 150,fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                top: 120,left: 10,
                  child: Text(
                    "Tamil Mix",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  child: Container(height: 150,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),Positioned(left: 144,
                  child: Container(height: 150,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Anirudh Ravichander,\nHipHop Tamizha,Yuvan Shankar",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ));
  }
}
class Romanticcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Image(
                    image: NetworkImage(
                        "https://i.scdn.co/image/ab6761610000e5ebc6d13b5ee303dfd238a8c496"),
                    height: 150,
                    width: 150,fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 125,left: 15,
                  child: Text(
                    "Romantic Mix",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ), Positioned(
                  child: Container(height: 150,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),Positioned(left: 144,
                  child: Container(height: 150,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Haricharan, Rajesh\nMurugesan, Govind vasantha",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ));
  }
}
class Hindicard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          child: Column(
            children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Image(
                    image: NetworkImage(
                        "https://i.scdn.co/image/ab6761610000e5eb7d43d4980d430a8d17d3fcbc"),
                    height: 150,
                    width: 150,fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 125,left: 15,
                  child: Text(
                    "Hindi Mix",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ), Positioned(
                  child: Container(height: 150,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),Positioned(left: 144,
                  child: Container(height: 150,
                    width: 6,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Stebin Ben,Sachin Jigar,\nKing and more",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ));
  }
}
