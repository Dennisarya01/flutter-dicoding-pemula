import 'package:fasteairplane/model/tourism_place_international.dart';
import 'package:fasteairplane/shared/theme.dart';
import 'package:fasteairplane/ui/component/card_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Widget buildCard({required TourismPlaceInternational item}) => Container(
          width: 200,
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Material(
                      child: Stack(
                        children: [
                          Ink.image(
                            image: AssetImage(item.imageAsset),
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/detail-information', arguments: item);
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(18)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      margin: EdgeInsets.only(right: 2),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/img-star-yellow.png'),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      item.rating.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 70,
                                  margin: EdgeInsets.only(left: 12),
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
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                item.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                item.location,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        );

    Widget newDestinationList() => Column(
          children: [
            Container(
              height: 300,
              child: ListView.separated(
                separatorBuilder: (context, _) => SizedBox(
                  height: 12,
                ),
                itemCount: 3,
                itemBuilder: (context, index) {
                  final TourismPlaceInternational place =
                      newTourismPlaceInternationalList[index];
                  return CardItem(item: place);
                },
              ),
            ),
          ],
        );

    Widget popularPlaceList() {
      return Column(
        children: [
          Container(
            height: 256,
            child: ListView.separated(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              itemCount: tourismPlaceInternationalList.length,
              separatorBuilder: (context, _) => SizedBox(
                width: 12,
              ),
              itemBuilder: (context, index) {
                TourismPlaceInternational places =
                    tourismPlaceInternationalList[index];
                return buildCard(item: places);
              },
            ),
          ),
        ],
      );
    }

    Widget textNewDestination() {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          child: Text(
            '3 Tempat Wisata Terhits Tahun ini',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Faster Airplane',
        ),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search-page');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          popularPlaceList(),
          textNewDestination(),
          newDestinationList(),
        ],
      ),
    );
  }
}
