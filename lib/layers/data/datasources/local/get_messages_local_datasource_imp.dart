import '../../../domain/entities/message_entity.dart';
import '../../dtos/message_dto.dart';
import '../get_messages_datasourse.dart';

class GetMessagesLocalDatasourceImpl implements GetMessagesDatasource {
  var json = [
    {
      "usuario": "Amor",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Compra pão",
      "horario": "16:22"
    },
    {
      "usuario": "Mãe",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Olá, tudo bem?",
      "horario": "16:21"
    },
    {
      "usuario": "Pedal Maravilha",
      "usuarioImagem": "assets/default.png",
      "ultimaMensagem": "Maci: Bora pedalar",
      "horario": "16:20"
    },
    {
      "usuario": "Usuário 123",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Olá, tudo bem?",
      "horario": "16:19"
    },
    {
      "usuario": "Empresa",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Rodrigo: Parabéns!!",
      "horario": "16:18"
    },
    {
      "usuario": "Usuário XYZ",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "tudo bem",
      "horario": "16:17"
    },
    {
      "usuario": "Grupo Amigos",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Mozer: Bora fazer uma carne",
      "horario": "16:16"
    },
    {
      "usuario": "+55 49 9102-0304",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Tem promoção",
      "horario": "16:15"
    },
    {
      "usuario": "+55 49 9102-0305",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Obrigado pelo retorno",
      "horario": "16:14"
    },
    {
      "usuario": "+55 49 9102-0306",
      "usuarioImagem": "assets/default.jpg",
      "ultimaMensagem": "Seu pedido saiu para entrega",
      "horario": "16:13"
    },
  ];

  @override
  List<MessageEntity> call() {
    List<MessageEntity> messages = [];
    json.map((e) => messages.add(MessageDto.fromMap(e))).toList();
    return messages;
  }
}
