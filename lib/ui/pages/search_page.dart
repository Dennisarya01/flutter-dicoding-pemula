import 'package:fasteairplane/model/tourism_place_international.dart';
import 'package:fasteairplane/shared/theme.dart';
import 'package:fasteairplane/ui/component/card_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController controller = new TextEditingController();
  final _scrollController = ScrollController();

  List<TourismPlaceInternational> _searchResult = [];
  List<TourismPlaceInternational> _initialList = [];

  onSearchTextChanged(String text) {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _initialList.forEach((destination) {
      if (destination.name.toLowerCase().contains(text.toLowerCase())) {
        print(destination.name);
        _searchResult.add(destination);
      }
    });

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    tourismPlaceInternationalList.forEach((element) {
      _initialList.add(element);
    });
    newTourismPlaceInternationalList.forEach((element) {
      _initialList.add(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget newDestinationList() => Container(
          height: double.infinity,
          child: _searchResult.length != 0
              ? ListView.separated(
                  separatorBuilder: (context, _) => SizedBox(
                    height: 12,
                  ),
                  itemCount: _searchResult.length,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    return CardItem(item: _searchResult[index]);
                  },
                )
              : ListView.separated(
                  separatorBuilder: (context, _) => SizedBox(
                    height: 12,
                  ),
                  itemCount: _initialList.length,
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    return CardItem(item: _initialList[index]);
                  },
                ),
        );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: TextField(
              controller: controller,
              onChanged: onSearchTextChanged,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    controller.clear();
                    onSearchTextChanged('');
                  },
                ),
                hintText: 'Cari Destinasimu disini...',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: newDestinationList(),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
