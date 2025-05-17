import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax/assets/image.dart' as image;
import 'package:cinemax/commons/constants/base_color.dart';
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
                    color: context.primaryText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VSpacings.xSmall,
                _iconTextContent(
                  context,
                  icon: Icons.calendar_month,
                  text: cinema?.year.toString(),
                ),
                VSpacings.xSmall,
                _iconTextContent(
                  context,
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

  Widget _iconTextContent(
    BuildContext context, {
    required IconData icon,
    String? text,
  }) {
    return Row(
      children: [
        Icon(icon, color: context.secondText),
        HSpacings.xxxxSmall,
        Text(
          (text ?? '-'),
          style: TextStyle(
            fontSize: 12,
            color: context.secondText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
