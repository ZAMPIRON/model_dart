class Equipamentos {
  final String nome;
  final String patrimonio;
  final String categoria;
  final String marca;
  final String modelo;

  Equipamentos({
    required this.nome,
    required this.patrimonio,
    required this.categoria,
    required this.marca,
    required this.modelo,
  });

  factory Equipamentos.fromJson(Map<String, dynamic> json) {
    return Equipamentos(
      nome: json['nome'] as String,
      patrimonio: json['patrimonio'] as String,
      categoria: json['categoria'] as String,
      marca: json['marca'] as String,
      modelo: json['modelo'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'patrimonio': patrimonio,
      'categoria': categoria,
      'marca': marca,
      'modelo': modelo,
    };
  }
}