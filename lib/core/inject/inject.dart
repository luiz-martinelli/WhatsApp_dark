import 'package:get_it/get_it.dart';
import '../../layers/data/datasources/get_messages_datasourse.dart';
import '../../layers/data/datasources/local/get_messages_local_datasource_imp.dart';
import '../../layers/data/repositories/get_messages_repository_imp.dart';
import '../../layers/domain/repositories/get_messages_repository.dart';
import '../../layers/domain/usecases/get_messages_usecase.dart';
import '../../layers/domain/usecases/get_messages_usecase_impl.dart';
import '../../layers/presentation/controlles/whatsapp_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<GetMessagesDatasource>(
        () => GetMessagesLocalDatasourceImpl());

    getIt.registerLazySingleton<GetMessagesRepository>(
        () => GetMessagesRepositoryImpl(getIt()));

    getIt.registerLazySingleton<GetMessagesUseCase>(
        () => GetMessagesUseCaseImpl(getIt()));

    getIt
        .registerFactory<WhatsappController>(() => WhatsappController(getIt()));
  }
}
