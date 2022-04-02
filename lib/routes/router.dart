import 'package:auto_route/auto_route.dart';
import 'package:bottom_navbar/home_page.dart';
import 'package:bottom_navbar/posts/posts_page.dart';
import 'package:bottom_navbar/posts/single_post_page.dart';
import 'package:bottom_navbar/settings/settings_page.dart';
import 'package:bottom_navbar/users/user_profile_page.dart';
import 'package:bottom_navbar/users/users_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
          path: 'posts',
          name: 'PostRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', page: SinglePostPage),
          ]),
      AutoRoute(
        path: 'users',
        name: 'UsersRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(path: '', page: UsersPage),
          AutoRoute(path: ':userId', page: UserProfilePage),
        ],
      ),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: SettingsPage,
      )
    ])
  ],
)
class $AppRouter {}
