import 'package:dio/dio.dart';
import 'package:flutter_clean_arch_news_app/src/presentation/bloc/local_articles/local_articles_bloc.dart';
import 'package:flutter_clean_arch_news_app/src/presentation/bloc/remote_articles/remote_articles_bloc.dart';
import 'package:get_it/get_it.dart';

 import 'core/utils/constant.dart';
import 'data/datasources/local/app_database.dart';
import 'data/datasources/remote/news_api_service.dart';
import 'data/repositories/articles_repository_impl.dart';
import 'domain/repositories/articles_repository.dart';
import 'domain/usecases/get_articles_usecase.dart';
import 'domain/usecases/get_saved_articles_usecase.dart';
import 'domain/usecases/remove_article_usecase.dart';
import 'domain/usecases/save_article_usecase.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // *
  final database = await $FloorAppDatabase.databaseBuilder(kDataBaseName).build();
  injector.registerSingleton<AppDatabase>(database);

  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Dependencies
  injector.registerSingleton<NewsApiService>(NewsApiService(injector()));

  // *
  injector.registerSingleton<ArticlesRepository>(
    ArticlesRepositoryImpl(injector(), injector()),
  );

  // UseCases
  injector.registerSingleton<GetArticlesUseCase>(GetArticlesUseCase(injector()));

  // *
  injector.registerSingleton<GetSavedArticlesUseCase>(GetSavedArticlesUseCase(injector()));
  injector.registerSingleton<SaveArticleUseCase>(SaveArticleUseCase(injector()));
  injector.registerSingleton<RemoveArticleUseCase>(RemoveArticleUseCase(injector()));

  // Blocs
  injector.registerFactory<RemoteArticlesBloc>(
        () => RemoteArticlesBloc(injector()),
  );

  // *
  injector.registerFactory<LocalArticlesBloc>(
        () => LocalArticlesBloc(injector(), injector(), injector()),
  );
}