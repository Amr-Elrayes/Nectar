import 'package:flutter/material.dart';
import 'package:nacter/core/utils/favorite_list.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/favorite/widgets/favorite_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Favorite", style: TextStyles.titlestyle()),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return FavoriteItem(model: favoriteItems[index]);
                },
                itemCount: favoriteItems.length,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
              ),
            ),
            customButtom(txt: "Add All To Cart", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
