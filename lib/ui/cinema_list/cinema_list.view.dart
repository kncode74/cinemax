import 'package:cinemax/base/base_view.dart';
import 'package:cinemax/commons/constants/base_color.dart';
import 'package:cinemax/commons/enum.dart';
import 'package:cinemax/models/cinema_response.dart';
import 'package:cinemax/ui/_widget/cinema_item_list.dart';
import 'package:cinemax/ui/cinema_list/cinema_list.vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CinemaListView extends BaseView<CinemaListVM> {
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      backgroundColor: context.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:context.background,
        title: TextFormField(
          onChanged: controller.searchCinema,
          controller: controller.searchController,
          autofocus: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFF252836),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            hintText: 'Search...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none,
            ),
            hintStyle: TextStyle(color: context.primaryText),
          ),
          style: TextStyle(color: context.primaryText),
        ),
        actions: [
          TextButton(
            onPressed: () {
              controller.onCancelSearch();
            },
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: _listViewContent(),
    );
  }

  Widget _listViewContent() {
    return Stack(
      children: [
        Obx(
          () {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.cinemaList.value.length,
              itemBuilder: (context, index) {
                CinemaResponse? cinema = controller.cinemaList.value[index];
                return InkWell(
                  onTap: () {
                    controller.routeToDetailPage(cinema);
                  },
                  child: CinemaItemList(cinema: cinema),
                );
              },
            );
          },
        ),
        Obx(
          () => Visibility(
            visible: controller.pageSate.value == PageState.LOADING,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ],
    );
  }
}
