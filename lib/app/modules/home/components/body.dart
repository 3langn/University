import 'package:flutter/material.dart';
import 'package:university_helper/app/global_widgets/search/search_appbar.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchAppBar(hintText: 'Search'),
            SizedBox(height: 10),
            DiscountBanner(),
            SizedBox(height: 20),
            Categories(),
            SizedBox(height: 20),
            SpecialOffers(),
            SizedBox(height: 20),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}