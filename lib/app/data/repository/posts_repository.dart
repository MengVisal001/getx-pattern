import 'package:getx_pattern/app/data/provider/api.dart';

import '../model/model.dart';

//Repositório responsável pela entidade post !!
//lembrando que cada entidade que persiste de alguma forma com o banco de dados, seja ela uma api ou sqlite
//deve possuir um repositório excluisivo
class MyRepository {
  final MyApiClient apiClient;

  MyRepository({required this.apiClient});

  Future<List<MyModel>?>  getAll() {
    return apiClient.getAll();
  }
}
