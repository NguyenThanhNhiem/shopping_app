import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_showcase.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/product_cart/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../models/products/product_model.dart';

class BrandAndProductDisplay extends StatelessWidget {
  const BrandAndProductDisplay({
    super.key,
    required this.products,
    required this.index,
  });

  final List<ProductModel> products;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ----- Brands Showcase -----
        // BrandShowcase(
        //   brand: products.map((item) => item.brand).elementAt(index),
        //   images: products.map((item) => item.thumbnail).take(3).toList(),
        // ),
        // const SizedBox(height: AppSize.spaceBtwItems),

        // ----- Product you might like -----

        const SizedBox(height: AppSize.spaceBtwItems),

        // ===== Product Grid
        GridLayout(
          mainAxisExtent: AppSize.productVerticalAxisExtent,
          itemCount: products.length,
          itemBuilder: (_, index) => ProductCardVertical(
            productIndex: products[index],
          ),
        ),
      ],
    );
  }
}
