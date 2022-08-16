import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ImageEntity extends Equatable {
  const ImageEntity(this.image);

  final Image image;

  @override
  List<Object?> get props => [image];
}
