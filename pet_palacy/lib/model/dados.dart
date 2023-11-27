
class Dados {
  final String id;
  final String titulo;
  final String eventoDoDia;
  final String data;
  final String descricao;
  final int nota;

  const Dados({
    required this.id,
    required this.titulo,
    required this.eventoDoDia,
    required this.data,
    required this.descricao,
    required this.nota,
  });

  factory Dados.fromJson(Map<String, dynamic> json) {
    return Dados(
      id: json['id'],
      titulo: json['titulo'],
      eventoDoDia: json['eventoDoDia'],
      data: json['data'],
      descricao: json['descricao'],
      nota: json['nota'].toInt(),
    );
  }
}
