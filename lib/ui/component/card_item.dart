import 'package:fasteairplane/model/tourism_place_international.dart';
import 'package:fasteairplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardItem({required this.item, Key? key}) : super(key: key);

  TourismPlaceInternational item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail-information',
                  arguments: item);
            },
            child: Container(
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(item.imageAsset),
                          ),
                        ),
                      ),
                      item.isPopular
                          ? Container(
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                color: kAmberLight,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'POPULAR',
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ),
                            )
                          : Container(
                              width: 40,
                              height: 25,
                              decoration: BoxDecoration(
                                color: kBlueLight,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                      color: kWhiteColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              item.location,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/img-star-yellow.png'),
                          ),
                        ),
                      ),
                      Text(
                        item.rating.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
