import 'package:ecommerce/App/APISModule/Model/album_model.dart';
import 'package:get/get.dart';

import '../Service/albums_service.dart';

class AlbumViewModel extends GetxController with AlbumRepo {
  RxList<AlbumModel> albumsData = <AlbumModel>[].obs;
  RxBool isFetchingData = false.obs;
  onFetchAlbumsData() async {
    isFetchingData.value = true;
    albumsData.value = await fetchAlbum();
    isFetchingData.value = false;
    albumsData.refresh();
    print("    albumsData.value ");
    print(albumsData.value);
  }

  onDateAlbumData({required String id, required int index}) async {
    albumsData.value.removeAt(index);
    albumsData.refresh();

    await onDelAlbum(id);
  }

  onUpdateAlbum({required String id}) async {
    await onUpdateAlbumService(id);
  }

  onCreateAlbumsData() async {
    await createAlbum();
  }
}
