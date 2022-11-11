import 'package:flutter/material.dart';

import '../../../../constants/styles/styles.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                margin: const EdgeInsets.only(bottom: AppSizes.p16),
                decoration: BoxDecoration(
                  color: AppColors.secondary1,
                  borderRadius: BorderRadius.circular(AppBorderRadius.br4),
                ),
                child: TabBar(
                  unselectedLabelColor: AppColors.secondary3,
                  labelColor: AppColors.background,
                  labelStyle: AppTextStyle.h4,
                  indicator: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(AppBorderRadius.br4),
                  ),
                  tabs: const [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.35,
                child: Card(
                  color: AppColors.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppBorderRadius.br4),
                    side: const BorderSide(color: AppColors.secondary2),
                  ),
                  elevation: 0,
                  child: const Padding(
                    padding: EdgeInsets.all(AppSizes.p10),
                    child: TabBarView(
                      children: <Widget>[
                        Text(
                          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese. Alps. Situated 1,578 meters above sea level, it is one of the. Larger Alpine Lakes. A gondola ride from Kandersteg, followed by a.',
                          style: AppTextStyle.p1,
                        ),
                        Text(
                          'Vestibulum eu quam nec neque pellentesque efficitur id eget nisl. Proin porta est convallis lacus blandit pretium sed non enim. Maecenas lacinia non orci at aliquam.',
                          style: AppTextStyle.p1,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
