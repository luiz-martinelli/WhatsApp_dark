import '../entities/message_entity.dart';

abstract class GetMessagesRepository {
  List<MessageEntity> call();
}
