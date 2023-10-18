import 'dart:io';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:test_/presentation/widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BuildableCubit<HomeState, HomeBuildableState> {
  HomeCubit() : super(const HomeBuildableState());

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
    );
  }

  changeObsecure(bool val) {
    build((buildable) => buildable.copyWith(obsecure: val));
  }
  selectImage()async{
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
     build((buildable) => buildable.copyWith(imagePath: imageTemporary));
    } on PlatformException catch (e) {
      print("failed image to pick: $e");
    }
  }
}
