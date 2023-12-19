
import 'package:around_egypt/catergoryModels.dart';
import 'package:around_egypt/views/catergorScreenTrips.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.category});

  final CategoryMomel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: (4.0), top: (50), bottom: (8.0)),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 220,
            decoration: BoxDecoration(
                //  color: Colors.black,
                image: DecorationImage(image: AssetImage(category.images)),
                borderRadius: BorderRadius.circular(100)),
          ),
          const SizedBox(),
          MaterialButton(
            onPressed: () {
              () => selectCategory(context);
            },
            color: Color.fromRGBO(255, 206, 59, 1),
            child: Text(category.categorName),
          )
        ],
      ),
    );
  }

  selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(
      builder: (c) => CategoryTripsScreen(),
    ));
  }
}
