import 'package:flutter/material.dart';
import 'package:nacter/core/utils/colors.dart';
import 'package:nacter/core/utils/text_styles.dart';
import 'package:nacter/core/widgets/custom_buttom.dart';
import 'package:nacter/features/details/widgets/custom_row.dart';
import 'package:nacter/features/details/widgets/image_container.dart';
import 'package:nacter/features/details/widgets/modal_bottom_sheet.dart';
import 'package:nacter/features/details/widgets/stars_row.dart';
import 'package:nacter/features/home/models/product_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key, required this.product});
  final ProductModel product;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;
  bool isExpanded = false;
  late double price;
  int copies = 1;
  @override
  void initState() {
    super.initState();
    price = widget.product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: customButtom(
            txt: "Add To Basket",
            onPressed: () {
              showModalBottomSheet(
                useSafeArea: true,
                context: context,
                builder: (context) {
                  return modalBottomSheet();
                },
              );
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              imageContainer(widget: widget),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name,
                              style: TextStyles.titlestyle(),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${widget.product.quantaty},Price",
                              style: TextStyles.smallstyle(),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: isFavorite
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color: AppColors.darkColor,
                                  size: 30,
                                ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (copies > 1) {
                                    copies--;
                                    widget.product.price -= price;
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.bgColor,
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: AppColors.borderColor,
                                  ),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: AppColors.grayColor,
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              copies.toString(),
                              style: TextStyles.bodystyle(),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  copies++;
                                  widget.product.price += price;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.bgColor,
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: AppColors.borderColor,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "\$${widget.product.price}",
                          style: TextStyles.titlestyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(color: AppColors.accentcolor, thickness: 1),
                    Theme(
                      data: ThemeData().copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        trailing: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: AppColors.darkColor,
                          size: 30,
                        ),
                        onExpansionChanged: (value) {
                          setState(() {
                            isExpanded = value;
                          });
                        },
                        tilePadding: EdgeInsets.all(0),
                        title: Row(
                          children: [
                            Text("Description", style: TextStyles.bodystyle()),
                          ],
                        ),
                        children: [
                          Text(
                            widget.product.description,
                            style: TextStyles.smallstyle(),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    Divider(color: AppColors.accentcolor, thickness: 1),
                    SizedBox(height: 10),
                    customRow(
                      title: "Nutritions",
                      sign: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("100gr", style: TextStyles.smallstyle()),
                      ),
                    ),
                    Divider(color: AppColors.accentcolor, thickness: 1),
                    SizedBox(height: 10),
                    customRow(title: "Review", sign: StarsRow()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
