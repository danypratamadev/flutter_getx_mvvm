import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/divider.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/shimmer.dart';
import 'package:flutter_getx_mvvm/shared/theme/dimens.dart';

class UsersLoading extends StatelessWidget {
  const UsersLoading({super.key});

  @override
  Widget build(BuildContext context) {

    final mediaApp = MediaQuery.of(context);

    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => ListTile(
        leading: const AppShimmer(
          width: AppDimens.quaternaryAvatarSize,
          height: AppDimens.quaternaryAvatarSize,
          radius: AppDimens.quaternaryRoundedCardSize,
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: AppShimmer(
            width: mediaApp.size.width * 0.35,
            height: AppDimens.size20,
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: AppShimmer(
            width: mediaApp.size.width * 0.5,
            height: AppDimens.size14,
          ),
        ),
        trailing: const AppShimmer(
          width: AppDimens.secondaryIconSize,
          height: AppDimens.secondaryIconSize,
        ),
      ), 
      separatorBuilder: (context, index) => const AppHorizontalDivider(), 
    );
  }
}