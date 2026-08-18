import 'package:flutter_test/flutter_test.dart';
import 'package:model_dart/model/equipamentos.dart';

void main() {
  group('Testes da classe Equipamentos', () {
    final Map<String, dynamic> jsonMock = {
      "nome": "Notebook Dell",
      "patrimonio": "PAT-001",
      "categoria": "Informática",
      "marca": "Dell",
      "modelo": "Inspiron 15"
    };

    test('Deve instanciar a classe e mapear todos os campos corretamente a partir do JSON (fromJson)', () {

      final equipamento = Equipamentos.fromJson(jsonMock);

      // testar o tipo do objeto
      expect(equipamento, isA<Equipamentos>());


      // validar todos os campos do objeto
      expect(equipamento.nome, equals("Notebook Dell"));
      expect(equipamento.patrimonio, equals("PAT-001"));
      expect(equipamento.categoria, equals("Informática"));
      expect(equipamento.marca, equals("Dell"));
      expect(equipamento.modelo, equals("Inspiron 15"));
    });
    test('Deve converter o objeto Equipamentos de volta para Map/JSON corretamente (toJson)', () {
      // arrange
      final equipamento = Equipamentos(
        nome: "Notebook Dell",
        patrimonio: "PAT-001",
        categoria: "Informática",
        marca: "Dell",
        modelo: "Inspiron 15",
      );
      // act
      final jsonResultante = equipamento.toJson();
      // assert
      expect(jsonResultante, equals(jsonMock));
    });
  });
}