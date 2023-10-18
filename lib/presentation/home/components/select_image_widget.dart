
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_/constants/color/color_const.dart';
import 'package:test_/presentation/home/cubit/home_cubit.dart';
import 'package:test_/presentation/widgets/buildable.dart';
import 'package:test_/utils/app_size/app_size_const.dart';

class SelectImageWidget extends StatelessWidget {
  const SelectImageWidget(
      {super.key, });

 
  @override
  Widget build(BuildContext context) {
    return Buildable<HomeCubit,HomeState,HomeBuildableState>(
      properties: (buildable) => [
        buildable.imagePath
      ],
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
           context.read<HomeCubit>().selectImage();
          },
          child: Container(
            height: AppSizes.getH(context, 0.080),
            width: AppSizes.getH(context, 0.080),
            decoration: BoxDecoration(
                border:
                    Border.all(color: ColorConstants.black.withOpacity(0.3)),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: state.imagePath == null
                ? const Icon(Icons.add_photo_alternate)
                : Image.file(
                    state.imagePath!,
                    fit: BoxFit.cover,
                  ),
          ),
        );
      },
    );
  }
}
