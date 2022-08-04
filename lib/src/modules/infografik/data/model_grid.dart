import 'package:equatable/equatable.dart';

import '../ui/widgets/widgets.dart';

class MGrid extends Equatable {
  final Widget image;
  const MGrid({
    required this.image,
  });

  @override
  List<Object> get props => [image];
}

List<MGrid> dummyGrid = [
  MGrid(
    image: Assets.images.infographic.maskGroup.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup1.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup2.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup4.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup5.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup6.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup7.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup8.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup9.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup10.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup11.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup12.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup13.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup14.image(fit: BoxFit.cover),
  ),
  MGrid(
    image: Assets.images.infographic.maskGroup15.image(fit: BoxFit.cover),
  ),
];
