import 'package:flutter/material.dart';

import '../models/external_image_model.dart';

Widget chooseNetworkImage(
  List<ExternalImageModel> images,
) {
  images.sort((a, b) => a.height.compareTo(b.height));
  return Expanded(
    child: LayoutBuilder(builder: (context, constraints) {
      ExternalImageModel fittingImage = images.firstWhere(
          (ExternalImageModel image) => image.height > constraints.maxHeight,
          orElse: () => images.last);
      return Image.network(fittingImage.url);
    }),
  );
}
