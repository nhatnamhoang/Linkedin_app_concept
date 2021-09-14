import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:linkedin_app_concept/resources/styles/colors.dart';

class NetworkAvatar extends StatelessWidget {
  final String? avatarUrl;
  final double? width;
  final double? radius;
  NetworkAvatar(
      {@required this.avatarUrl, @required this.width, @required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.all(
          Radius.circular(radius!),
        ),
      ),
      child: _buildCircleImage(radius!),
    );
  }

  Widget _buildCircleImage(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: this.avatarUrl!,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Center(
          child: Icon(
            Icons.error_outline,
            color: AppColors.red,
            size: radius,
          ),
        ),
      ),
    );
  }
}
