import 'package:flutter/material.dart';
import 'package:zataca_technical_test/src/common_widgets/rounded_button.dart';
import 'package:zataca_technical_test/src/common_widgets/section_frame.dart';
import 'package:zataca_technical_test/src/constants/modals/my_modals.dart';
import 'package:zataca_technical_test/src/features/likes/presentation/widgets/likes_widget.dart';
import 'package:zataca_technical_test/src/features/main_page/presentation/widgets/header_image.dart';
import 'package:zataca_technical_test/src/features/main_page/presentation/widgets/my_tab_bar.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/screens/post_page.dart';
import 'package:zataca_technical_test/src/features/table/presentation/widget/my_data_table.dart';
import '../../../../constants/styles/styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(
          'Prueba nivel flutter Zataca',
          style: AppTextStyle.h3.copyWith(
            color: AppColors.primary,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: const EdgeInsets.all(AppSizes.p6),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(AppBorderRadius.br4),
              ),
              child: const Icon(
                Icons.settings,
              ),
            ),
            onPressed: () => MyModals.showSettingOptions(context),
          )
        ],
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderImage(),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  AppSizes.p16, 0, AppSizes.p16, AppSizes.p36),
              child: Column(
                children: [
                  gapH16,
                  const LikesWidget(),
                  gapH16,
                  const Divider(thickness: 1, height: 0),
                  gapH10,
                  const SectionFrame(
                    title: "Primera parte",
                    description:
                        "Vamos a mostrar dos tabs, que a su vez mostrarán información diferente en su interior.",
                    child: MyTabBar(),
                  ),
                  gapH16,
                  const SectionFrame(
                    title: "Segunda parte",
                    description:
                        "Aquí vamos a mostrar una tabla. Debes de intentar dejarlo lo mas parecido posible, al igual que hacerla dinámica.",
                    child: MyDataTable(),
                  ),
                  gapH20,
                  RoundedButton(
                    title: "Ir a la siguiente vista",
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (_) => const PostPage(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
