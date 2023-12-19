
import 'package:around_egypt/catergoryModels.dart';
import 'package:around_egypt/views/catergorScreenTrips.dart';
import 'package:around_egypt/widgets/catergoryCard.dart';
import 'package:flutter/material.dart';

class listCategorycards extends StatelessWidget {
  listCategorycards({
    super.key,
  });

  final List<CategoryMomel> categories = const [
    CategoryMomel(images: 'images/Image.jpeg', categorName: "Cairo"),
    CategoryMomel(images: 'images/Aswan2.jpeg', categorName: "Aswan"),
    CategoryMomel(images: 'images/Hurgade.jpeg', categorName: "Hurgada"),
    CategoryMomel(images: 'images/Alex.jpg', categorName: "Alex"),
  ];
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (c) => CategoryTripsScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.deepOrange,
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: ((context, index) {
              return CategoryCard(
                category: categories[index],
              );
            })),
      ),
    );
  }
}
