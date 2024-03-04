import 'package:flutter/material.dart';
import 'package:orakom/core/constant/app_colors.dart';
import 'package:orakom/core/constant/assets_manager.dart';
import 'package:orakom/features/auth/presentation/login/presentation/views/login_view.dart';
import 'package:orakom/features/complaints/presentation/views/complaints_view.dart';
import 'package:orakom/features/create_credit_card/presentation/views/create_credit_card_view.dart';
import 'package:orakom/features/favorite/presentation/views/favorite_view.dart';
import 'package:orakom/features/my_account/presentation/views/my_account_view.dart';
import 'package:orakom/features/portfolio/presentation/views/portfolio_view.dart';
import 'package:orakom/features/setting/presentation/views/setting_view.dart';
import '../../../../about_platform/presentation/views/about_platform_view.dart';
import '../../../../connect_us/presentation/views/connect_us_view.dart';
import '../../../../follow_service/presentation/views/follow_service_view.dart';
import '../../../../receipt/presentation/views/receipt_view.dart';
import 'custom_item_page_more.dart';

class CustomListPageMore extends StatelessWidget {
  const CustomListPageMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomItemPageMore(
          text: 'حسابي',
          image: AssetsManager.user,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyAccountView(),
            ));
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'المحفظة',
          image: AssetsManager.poket,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PortfolioView(),
              ),
            );
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'الفواتير',
          image: AssetsManager.purchese,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ReceiptView(),
              ),
            );
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'بطاقات الدفع',
          image: AssetsManager.cards,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CreateCreditCardView(),
              ),
            );
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'مقدمي الخدمة المتابعيين',
          image: AssetsManager.purchese,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FollowServiceView(),
              ),
            );
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'كن مقدم خدمة',
          image: AssetsManager.Group,
          onTap: () {},
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'المفضلة',
          image: AssetsManager.hearts,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FavoriteView(),
            ));
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'قيمنا',
          image: AssetsManager.starrrr,
          onTap: () {},
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'تواصل معنا',
          image: AssetsManager.calll,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ConnectUsView(),
            ));
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'الشكاوي والمقترحات',
          image: AssetsManager.calll,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ComplaintsView(),
              ),
            );
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'مشاركة المنصة',
          image: AssetsManager.share,
          onTap: () {},
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'الإعدادات',
          image: AssetsManager.setting,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SettingView(),
              ),
            );
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'عن المنصة',
          image: AssetsManager.setting,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AboutPlatformView(),
            ));
          },
          color: AppColors.primary.withOpacity(.48),
        ),
        CustomItemPageMore(
          text: 'تسجيل خروج',
          image: AssetsManager.setting,
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const LoginView(),
              ),
              (route) => false,
            );
          },
          color: Colors.red,
        ),
      ],
    );
  }
}
