import 'package:bookspire/core/services/api_service.dart';
import 'package:bookspire/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    apiService: getIt.get<ApiService>(),
  ));

  // getIt.registerSingleton<AuthService>(AuthService());
  // getIt.registerSingleton<NavigationService>(NavigationService());
  // getIt.registerSingleton<DialogService>(DialogService());
  // getIt.registerSingleton<ThemeService>(ThemeService());
  // getIt.registerSingleton<LocalizationService>(LocalizationService());
  // getIt.registerSingleton<ConnectivityService>(ConnectivityService());
  // getIt.registerSingleton<NotificationService>(NotificationService());
  // getIt.registerSingleton<AnalyticsService>(AnalyticsService());
  // getIt.registerSingleton<AdService>(AdService());
  // getIt.registerSingleton<InAppPurchaseService>(InAppPurchaseService());
  // getIt.registerSingleton<ReviewService>(ReviewService());
  // getIt.registerSingleton<ShareService>(ShareService());
  // getIt.registerSingleton<RateService>(RateService());
  // getIt.registerSingleton<UpdateService>(UpdateService());
  // getIt.registerSingleton<CrashService>(CrashService());
  // getIt.registerSingleton<PermissionService>(PermissionService());
  // getIt.registerSingleton<DeepLinkService>(DeepLinkService());
  // getIt.registerSingleton<ShortcutService>(ShortcutService());
  // getIt.registerSingleton<WidgetService>(WidgetService());
  // getIt.registerSingleton<BackgroundService>(BackgroundService());
  // getIt.registerSingleton<GeofenceService>(GeofenceService());
  // getIt.registerSingleton<BeaconService>(BeaconService());
  // getIt.registerSingleton<BluetoothService>(BluetoothService());
  // getIt.registerSingleton<WifiService>(WifiService());
  // getIt.registerSingleton<HotspotService>(HotspotService
}

class AuthRepo {
  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
