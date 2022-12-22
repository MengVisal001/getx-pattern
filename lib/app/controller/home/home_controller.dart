import 'package:get/get.dart';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:getx_pattern/app/data/repository/posts_repository.dart';

class HomeController extends GetxController {
  //repository required
  final MyRepository repository;
  HomeController({required this.repository});

  //use o snippet getfinal para criar está variável
  final RxList<MyModel> _postsList = <MyModel>[].obs;
  List<MyModel> get postList => _postsList;
  set postList(value) => _postsList.addAll(value);

  ///função para recuperar todos os posts
  void getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }
}
