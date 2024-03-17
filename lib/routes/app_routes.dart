import 'package:get/get.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/signup_screen/binding/signup_binding.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/home_container_screen/binding/home_container_binding.dart';
import '../presentation/search_tab_container_screen/search_tab_container_screen.dart';
import '../presentation/search_tab_container_screen/binding/search_tab_container_binding.dart';
import '../presentation/search_results_screen/search_results_screen.dart';
import '../presentation/search_results_screen/binding/search_results_binding.dart';
import '../presentation/single_story_screen/single_story_screen.dart';
import '../presentation/single_story_screen/binding/single_story_binding.dart';
import '../presentation/comments_screen/comments_screen.dart';
import '../presentation/comments_screen/binding/comments_binding.dart';
import '../presentation/events_tab_container_screen/events_tab_container_screen.dart';
import '../presentation/events_tab_container_screen/binding/events_tab_container_binding.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/notifications_screen/binding/notifications_binding.dart';
import '../presentation/video_chat_screen/video_chat_screen.dart';
import '../presentation/video_chat_screen/binding/video_chat_binding.dart';
import '../presentation/messages_tab_container_screen/messages_tab_container_screen.dart';
import '../presentation/messages_tab_container_screen/binding/messages_tab_container_binding.dart';
import '../presentation/archived_message_tab_container_screen/archived_message_tab_container_screen.dart';
import '../presentation/archived_message_tab_container_screen/binding/archived_message_tab_container_binding.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/settings_screen/binding/settings_binding.dart';
import '../presentation/user_profile_tab_container_screen/user_profile_tab_container_screen.dart';
import '../presentation/user_profile_tab_container_screen/binding/user_profile_tab_container_binding.dart';
import '../presentation/my_friends_screen/my_friends_screen.dart';
import '../presentation/my_friends_screen/binding/my_friends_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String searchResultsScreen = '/search_results_screen';

  static const String singleStoryScreen = '/single_story_screen';

  static const String commentsScreen = '/comments_screen';

  static const String eventsPage = '/events_page';

  static const String eventsTabContainerScreen = '/events_tab_container_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String videoChatScreen = '/video_chat_screen';

  static const String messagesPage = '/messages_page';

  static const String messagesTabContainerScreen =
      '/messages_tab_container_screen';

  static const String archivedMessagePage = '/archived_message_page';

  static const String archivedMessageTabContainerScreen =
      '/archived_message_tab_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String userProfilePage = '/user_profile_page';

  static const String userProfileTabContainerScreen =
      '/user_profile_tab_container_screen';

  static const String galleryPage = '/gallery_page';

  static const String myFriendsScreen = '/my_friends_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => SearchTabContainerScreen(),
      bindings: [
        SearchTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchResultsScreen,
      page: () => SearchResultsScreen(),
      bindings: [
        SearchResultsBinding(),
      ],
    ),
    GetPage(
      name: singleStoryScreen,
      page: () => SingleStoryScreen(),
      bindings: [
        SingleStoryBinding(),
      ],
    ),
    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),
      bindings: [
        CommentsBinding(),
      ],
    ),
    GetPage(
      name: eventsTabContainerScreen,
      page: () => EventsTabContainerScreen(),
      bindings: [
        EventsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: videoChatScreen,
      page: () => VideoChatScreen(),
      bindings: [
        VideoChatBinding(),
      ],
    ),
    GetPage(
      name: messagesTabContainerScreen,
      page: () => MessagesTabContainerScreen(),
      bindings: [
        MessagesTabContainerBinding(),
      ],
    ),
    GetPage(
      name: archivedMessageTabContainerScreen,
      page: () => ArchivedMessageTabContainerScreen(),
      bindings: [
        ArchivedMessageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: userProfileTabContainerScreen,
      page: () => UserProfileTabContainerScreen(),
      bindings: [
        UserProfileTabContainerBinding(),
      ],
    ),
    GetPage(
      name: myFriendsScreen,
      page: () => MyFriendsScreen(),
      bindings: [
        MyFriendsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
