// ignore_for_file: overridden_fields

import 'package:cat_trivia/src/features/fact/domain/entities/image_entity.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

// part 'image_model.g.dart';

// @JsonSerializable()
class ImageModel extends ImageEntity {
  const ImageModel(this.image) : super(image);

  @override
  final Image image;

  // factory ImageModel.fromJson(Map<String, dynamic> json) =>
  //     _$ImageModelFromJson(json);
}
