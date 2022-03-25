import '../entities/message_entity.dart';

abstract class GetMessagesUseCase {
  List<MessageEntity> call();
}
