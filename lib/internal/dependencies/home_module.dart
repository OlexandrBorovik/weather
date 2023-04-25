import 'package:wheather/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState(){
    return HomeState(
      RepositoryModule.weatherRepository(),
    )
  }
}

