import '../../domain/entities/message_entity.dart';

abstract class GetMessagesDatasource {
  List<MessageEntity> call();
}
