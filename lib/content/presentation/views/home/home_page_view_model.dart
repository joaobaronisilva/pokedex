import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../infra/mvvm/mvvm.dart';
import '../../../content.dart';
import '../../../domain/entities/entities.dart';
import 'home_page_state.dart';

class HomePageViewModel extends ViewModel<HomePageState> {
  final IGetPokemonsUsecase _getPokemonsUsecase;

  HomePageViewModel(this._getPokemonsUsecase) : super(HomePageState.initial());

  final PagingController<int, PokemonEntity> pagingController = PagingController(firstPageKey: 0);

  @override
  void initViewModel() {
    super.initViewModel();
    pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  Future<List<PokemonEntity>> fetchItems({required int offset}) async {
    final fetchedItems = await _getPokemonsUsecase(offset: offset);
    final result = fetchedItems.fold((l) => null, (r) => r);

    ///Tratar erros.
    return result!;
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await fetchItems(offset: pageKey);
      final isLastPage = newItems.length < 10;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }
}
