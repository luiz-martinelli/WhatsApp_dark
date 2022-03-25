import '../../domain/entities/message_entity.dart';
import '../../domain/repositories/get_messages_repository.dart';
import '../datasources/get_messages_datasourse.dart';

class GetMessagesRepositoryImpl implements GetMessagesRepository {
  final GetMessagesDatasource _getMessagesDatasource;
  GetMessagesRepositoryImpl(this._getMessagesDatasource);

  @override
  List<MessageEntity> call() {
    return _getMessagesDatasource();
  }
}
