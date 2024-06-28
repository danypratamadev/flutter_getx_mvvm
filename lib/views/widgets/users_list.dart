import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/models/user_model.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/divider.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/image.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/text.dart';
import 'package:flutter_getx_mvvm/shared/theme/dimens.dart';
import 'package:smooth_corner/smooth_corner.dart';

class UsersList extends StatelessWidget {

  final List<UserModel> users;
  
  const UsersList({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => UserCard(user: users[index]), 
      separatorBuilder: (context, index) => const AppHorizontalDivider(), 
    );
  }
}

class UserCard extends StatelessWidget {

  final UserModel user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SmoothClipRRect(
        borderRadius: BorderRadius.circular(AppDimens.quinaryRoundedCardSize),
        smoothness: AppDimens.smoothnessCorner,
        child: ImageNetwork(
          width: AppDimens.quaternaryAvatarSize,
          height: AppDimens.quaternaryAvatarSize,
          src: user.avatar,
        ),
      ),
      title: SubtitleText(label: user.firstName + user.lastName),
      subtitle: CaptionText(label: user.email),
      trailing: const Icon(
        Icons.chevron_right_rounded
      ),
    );
  }
}