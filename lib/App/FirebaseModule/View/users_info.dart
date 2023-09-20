import 'package:ecommerce/App/APISModule/Service/albums_service.dart';
import 'package:ecommerce/App/APISModule/ViewModel/album_view_model.dart';
import 'package:ecommerce/App/FirebaseModule/Service/firebase_service.dart';
import 'package:ecommerce/Statemanagent/counter_app_view_model.dart';
import 'package:ecommerce/Statemanagent/test_a.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersInfoView extends StatefulWidget {
  UsersInfoView({super.key});

  @override
  State<UsersInfoView> createState() => _UsersInfoViewState();
}

class _UsersInfoViewState extends State<UsersInfoView> with FirebaseService {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        saveUserInfo();
        // getUserInfo();
      }),
      appBar: AppBar(
        title: Text("Users App"),
      ),
      // body: Container(
      //     child: Obx(
      //   () => albumViewModel.isFetchingData.value == true
      //       ? Center(
      //           child: CircularProgressIndicator(),
      //         )
      //       : albumViewModel.albumsData.value.isEmpty
      //           ? Center(child: Text("No Data Found"))
      //           : ListView.builder(
      //               itemCount: albumViewModel.albumsData.value.length,
      //               itemBuilder: (context, index) {
      //                 return InkWell(
      //                   onTap: () {
      //                     // albumViewModel.onDateAlbumData(
      //                     //     id: albumViewModel.albumsData.value[index].id
      //                     //         .toString(),
      //                     //     index: index);

      //                     albumViewModel.onUpdateAlbum(
      //                       id: albumViewModel.albumsData.value[index].id
      //                           .toString(),
      //                     );
      //                   },
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(10.0),
      //                     child: Container(
      //                       decoration: BoxDecoration(
      //                           border: Border.all(color: Colors.red)),
      //                       child: Column(
      //                         children: [
      //                           Text(albumViewModel.albumsData.value[index].id
      //                               .toString()),
      //                           Text(albumViewModel
      //                               .albumsData.value[index].title
      //                               .toString()),
      //                           Text(albumViewModel
      //                               .albumsData.value[index].userId
      //                               .toString()),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 );
      //               }),
      // )),
    );
  }
}
