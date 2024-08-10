import 'package:get/get.dart';
import 'package:suitmedia_msib/features/screen_2/controller/screen_2_controller.dart';
import 'package:suitmedia_msib/features/screen_3/data/user_datasource.dart';
import 'package:suitmedia_msib/features/screen_3/model/user.dart';

class Screen3Controller extends GetxController {
  final RxList<User> userList = <User>[].obs;
  final Screen2Controller screen2Controller = Get.find<Screen2Controller>();
  final userDatasource = UserDatasource();
  final RxBool isLoading = false.obs;
  final RxBool isRefreshing = false.obs;
  final RxBool isLoadingMore = false.obs;
  int currentPage = 1;

  Future<void> getUser({bool isRefresh = false}) async {
    if (isRefresh) {
      isRefreshing.value = true;
      currentPage = 1;
    } else {
      isLoading.value = true;
    }

    final result = await userDatasource.getUser(
      page: currentPage,
      perPage: 10,
    );

    result.fold(
      (failure) => Get.snackbar('Error', failure.message),
      (data) {
        if (isRefresh) {
          userList.clear();
          userList.addAll(data.data);
        } else {
          userList.addAll(data.data);
        }
      },
    );

    isLoading.value = false;
    isRefreshing.value = false;
    isLoadingMore.value = false;
  }

  void loadMore() {
    if (!isLoadingMore.value) {
      currentPage++;
      isLoadingMore.value = true;
      getUser();
    }
  }
}
