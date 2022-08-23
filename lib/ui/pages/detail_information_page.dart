import 'package:fasteairplane/model/tourism_place_international.dart';
import 'package:fasteairplane/shared/theme.dart';
import 'package:fasteairplane/ui/component/facility_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailInformation extends StatelessWidget {
  const DetailInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as TourismPlaceInternational;

    Widget arrowBack() {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget headerImage() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(args.imageAsset),
              ),
            ),
          ),
          arrowBack(),
        ],
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget contentDetailPage() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 60,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          args.name,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: kWhiteColor),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          args.location,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
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
                        args.rating.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 6),
                  Text(
                    args.description,
                    style: TextStyle(color: Colors.black, height: 2.6),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Facility',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12),
                  Column(
                    children: args.facility
                        .map((e) => FacilityItem(text: e))
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            headerImage(),
            customShadow(),
            contentDetailPage(),
          ],
        ),
      ),
    );
  }
}
