// GENERATED CODE - manually restored for build compatibility.

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    GalleryRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const GalleryPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
      );
    },
    EditorRoute.name: (routeData) {
      final args = routeData.argsAs<EditorRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: EditorPage(
          key: args.key,
          image: args.image,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          GalleryRoute.name,
          path: '/gallery',
        ),
        RouteConfig(
          EditorRoute.name,
          path: '/editor',
        ),
      ];
}

/// generated route for
/// [GalleryPage]
class GalleryRoute extends PageRouteInfo<void> {
  const GalleryRoute({List<PageRouteInfo>? children})
      : super(
          GalleryRoute.name,
          path: '/gallery',
          initialChildren: children,
        );

  static const String name = 'GalleryRoute';
}

/// generated route for
/// [EditorPage]
class EditorRoute extends PageRouteInfo<EditorRouteArgs> {
  EditorRoute({
    Key? key,
    required AssetEntity image,
    List<PageRouteInfo>? children,
  }) : super(
          EditorRoute.name,
          path: '/editor',
          args: EditorRouteArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'EditorRoute';
}

class EditorRouteArgs {
  const EditorRouteArgs({
    this.key,
    required this.image,
  });

  final Key? key;

  final AssetEntity image;
}
