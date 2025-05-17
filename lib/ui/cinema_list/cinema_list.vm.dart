import 'package:cinemax/base/base_vm.dart';
import 'package:cinemax/commons/enum.dart';
import 'package:cinemax/data/repository/api_repository.dart';
import 'package:cinemax/models/cinema_response.dart';
import 'package:cinemax/ui/cinema_detail/cinema_detail.binding.dart';
import 'package:cinemax/ui/cinema_detail/cinema_detail.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CinemaListVM extends BaseVM {
  final TextEditingController searchController = TextEditingController();

  final ApiRepository _apiRepository = Get.find<ApiRepository>();
  final RxList<CinemaResponse> cinemaList = <CinemaResponse>[].obs;

  List<CinemaResponse> _cinemaList = <CinemaResponse>[];

  @override
  onInit() {
    super.onInit();
    _loadCinemaResponse();
  }

  @override
  dispose() {
    print('dispose');
    super.dispose();
    searchController.dispose();
  }

  _loadCinemaResponse() {
    pageSate.value = PageState.LOADING;
    _apiRepository.getCinemaList().then((List<CinemaResponse>? data) {
      if (data?.isEmpty ?? true) {
        pageSate.value = PageState.DATA_EMPTY;
        return;
      }
      pageSate.value = PageState.DEFAULT;
      _cinemaList = data!;
      cinemaList.value = _cinemaList;
    }).catchError((e) {
      pageSate.value = PageState.DEFAULT;
      print('_loadCinemaResponse : $e');
    });
  }

  onCancelSearch() {
    searchController.clear();
    cinemaList.value = _cinemaList;
  }

  searchCinema(String query) {
    if (query.isEmpty) {
      cinemaList.value = _cinemaList;
    }
    cinemaList.value = cinemaList
        .where((CinemaResponse item) =>
            item.movie?.toLowerCase().contains(query.toLowerCase()) ?? false)
        .toList();
  }

  routeToDetailPage(CinemaResponse data) {
    Get.to(
      () => CinemaDetailView(),
      arguments: {
        'cinema': data,
        'cinema_list': cinemaList.value,
      },
      binding: CinemaDetailBinding(),
    );
  }
}
