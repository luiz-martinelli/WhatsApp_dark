import '../entities/message_entity.dart';
import '../repositories/get_messages_repository.dart';
import 'get_messages_usecase.dart';

class GetMessagesUseCaseImpl implements GetMessagesUseCase {
  final GetMessagesRepository _getMessagesRepository;

  GetMessagesUseCaseImpl(this._getMessagesRepository);

  @override
  List<MessageEntity> call() {
    return _getMessagesRepository();
  }
}
