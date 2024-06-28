import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/controllers/user_controller.dart';
import 'package:flutter_getx_mvvm/shared/interfaces/text.dart';
import 'package:flutter_getx_mvvm/shared/theme/dimens.dart';
import 'package:flutter_getx_mvvm/views/widgets/users_list.dart';
import 'package:flutter_getx_mvvm/views/widgets/users_loading.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final uservm = Get.find<UserController>();
    
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        slivers: [
          const SliverAppBar(
            pinned: true,
            toolbarHeight: AppDimens.appBarSize,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: TitleText(
                label: 'Users'
              ),
              collapseMode: CollapseMode.pin,
              expandedTitleScale: 2.0,
            ),
            expandedHeight: AppDimens.primaryFlexibleAppBarSize,
            elevation: AppDimens.quaternaryDividerSize,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              uservm.obx(
                (state) => UsersList(users: uservm.users),
                onLoading: const UsersLoading()
              ),
              AppDimens.gap32,
            ])
          )
        ],
      )
    );
  }
}