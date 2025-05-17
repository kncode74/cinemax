import 'package:cinemax/base/base_view.dart';
import 'package:cinemax/commons/constants/base_ui_constant.dart';
import 'package:cinemax/models/cinema_response.dart';
import 'package:cinemax/ui/_widget/cinema_item_list.dart';
import 'package:cinemax/ui/_widget/video_player_content.dart';
import 'package:cinemax/ui/cinema_detail/cinema_detail.vm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CinemaDetailView extends BaseView<CinemaDetailVM> {
  final CinemaResponse _cinemaResponse =
      Get.arguments['cinema'] as CinemaResponse;

  @override
  Widget render(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF1F1D2B),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _videoContent(),
          VSpacings.xxSmall,
          _detailContent(),
          VSpacings.xxSmall,
          Expanded(child: _listview()),
        ],
      ),
    );
  }

  Widget _videoContent() {
    return VideoPlayerContent(url: _cinemaResponse.video!.video480p!);
  }

  Widget _detailContent() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _cinemaResponse.movie ?? '-',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          VSpacings.medium,
          _iconTextContent(
            icon: Icons.calendar_month,
            text: _cinemaResponse.releaseDate,
          ),
          VSpacings.xxSmall,
          _iconTextContent(
            icon: Icons.access_time,
            text: _cinemaResponse.movieDuration,
          ),
          VSpacings.medium,
          Text(
            'Detail',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          VSpacings.xxSmall,
          Text(
            'DIRECTOR : ${_cinemaResponse.director}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          VSpacings.xxSmall,
          Text(
            'CHARACTER : ${_cinemaResponse.character}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconTextContent({
    required IconData icon,
    String? text,
  }) {
    return Row(
      children: [
        Icon(icon, color: Colors.lightGreenAccent),
        HSpacings.xxSmall,
        Text(
          text ?? '-',
          style: TextStyle(
            fontSize: 14,
            color: Colors.lightGreenAccent,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _listview() {
    return Obx(
      () => ListView.builder(
        shrinkWrap: true,
        itemCount: controller.cinemaList.length,
        itemBuilder: (context, index) {
          CinemaResponse cinemaResponse = controller.cinemaList[index];
          return CinemaItemList(cinema: cinemaResponse);
        },
      ),
    );
  }
}
