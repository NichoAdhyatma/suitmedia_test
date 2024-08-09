import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suitmedia_msib/core/commons/app_bar.dart';
import 'package:suitmedia_msib/core/themes/app_pallete.dart';
import 'package:suitmedia_msib/features/screen_3/controller/screen_3_controller.dart';

class Screen3 extends GetView<Screen3Controller> {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    controller.getUser();
    return Scaffold(
      appBar: buildAppBar("Third Screen"),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.getUser(isRefresh: true);
        },
        child: Obx(() {
          if (controller.isLoading.value && controller.userList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.userList.isEmpty) {
            return const Center(child: Text("Data Empty"));
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                      scrollInfo.metrics.maxScrollExtent &&
                  !controller.isRefreshing.value &&
                  !controller.isLoadingMore.value) {
                controller.loadMore();
                return true;
              }
              return false;
            },
            child: ListView.separated(
              itemCount: controller.userList.length +
                  (controller.isLoadingMore.value ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == controller.userList.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final user = controller.userList[index];
                var name = '${user.firstName} ${user.lastName}';

                return ListTile(
                  title: Text(
                    name,
                    style: const TextStyle(),
                  ),
                  subtitle: Text(
                    user.email,
                    style: const TextStyle(
                      color: AppPallete.secondaryColor,
                      fontSize: 10,
                    ),
                  ),
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  onTap: () {
                    controller.screen2Controller.selectedName.value = name;

                    Get.closeAllSnackbars();

                    Get.snackbar(
                      name,
                      "Successfully selected",
                      backgroundColor: AppPallete.primaryColor,
                      colorText: AppPallete.whiteColor,
                      duration: const Duration(seconds: 1),
                    );
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Divider(
                    thickness: 0.2,
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
