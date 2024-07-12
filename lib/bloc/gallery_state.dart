part of "gallery_cubit.dart";

@immutable
abstract  class GalleryState extends Equatable{

  const GalleryState();

  @override
  List<Object> get props => [];
}

class GalleryInitial extends GalleryState{
  const GalleryInitial();
}

class GalleryLoading extends GalleryState{
  const GalleryLoading();
}

class GalleryLoaded extends GalleryState{

  final List<String> images;

  GalleryLoaded({required this.images});

  @override
  List<Object> get props => [images];
}

class Galleryfailure extends GalleryState{

  final String message;

  Galleryfailure({required this.message});

  @override
  List<Object> get props => [message];
}