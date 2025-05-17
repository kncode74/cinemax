import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax/assets/image.dart' as image;
import 'package:cinemax/commons/constants/base_ui_constant.dart';
import 'package:cinemax/models/cinema_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CinemaItemList extends StatelessWidget {
  final CinemaResponse? cinema;

  const CinemaItemList({super.key, this.cinema});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      height: 147,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: cinema?.poster ?? '',
              placeholder: (context, url) => SvgPicture.asset(
                image.icon.placeholder,
                fit: BoxFit.cover,
              ),
              errorWidget: (context, url, error) => SvgPicture.asset(
                image.icon.placeholder,
                fit: BoxFit.cover,
              ),
              fit: BoxFit.cover,
              width: 100,
              height: 147,
            ),
          ),
          HSpacings.small,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF12CDD9),
                  ),
                  child: Text('free'),
                ),
                VSpacings.xSmall,
                Text(
                  cinema?.movie ?? '-',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                _iconTextContent(
                  icon: Icons.calendar_month,
                  text: cinema?.year.toString(),
                ),
                SizedBox(height: 12),
                _iconTextContent(
                  icon: Icons.access_time_filled_sharp,
                  text: cinema?.movieDuration,
                ),
              ],
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
        Icon(
          icon,
          color: Color(0xFF92929D),
        ),
        HSpacings.xxxxSmall,
        Text(
          (text ?? '-'),
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF92929D),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
