import 'package:get/get.dart';
import '../model/note_model.dart';

class NoteBookController extends GetxController {
  // Define a RxList to hold the NoteBook data
  RxList<NoteBook> noteBooks = <NoteBook>[].obs;
  RxList<NoteBook> favoriteNoteBooks = <NoteBook>[].obs;
  var isIconFav = false.obs;
  var iconStates = <bool>[false, false, false, false,false,].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize some sample data (you can replace this with your actual data source)
    noteBooks.addAll([
      NoteBook(
        subjectName: "Math",
        isFav: false,
        notes: [
          Note(title: "Note 1", comment: "Comment for Note 1"),
          Note(title: "Note 2", comment: "Comment for Note 2"),
        ],
      ),
      NoteBook(
        subjectName: "Science",
        isFav: false,
        notes: [
          Note(title: "Note 3", comment: "Comment for Note 3"),
          Note(title: "Note 4", comment: "Comment for Note 4"),
        ],
      ),
      NoteBook(
        subjectName: "History",
        isFav: false,
        notes: [
          Note(title: "Note 5", comment: "Comment for Note 5"),
          Note(title: "Note 6", comment: "Comment for Note 6"),
        ],
      ),
      NoteBook(
        subjectName: "English",
        isFav: false,
        notes: [
          Note(title: "Note 7", comment: "Comment for Note 7"),
          Note(title: "Note 8", comment: "Comment for Note 8"),
        ],
      ),
      NoteBook(
        subjectName: "Geography",
        isFav: false,
        notes: [
          Note(title: "Note 9", comment: "Comment for Note 9"),
          Note(title: "Note 10", comment: "Comment for Note 10"),
        ],
      ),
    ]);
  }

  // Function to toggle the favorite status of a NoteBook
  void toggleFavorite(NoteBook notebook) {
    notebook.isFav = !notebook.isFav;
    if (notebook.isFav) {
      // If the NoteBook is marked as favorite, add it to the favorites list
      favoriteNoteBooks.add(notebook);
    } else {
      // If the NoteBook is unmarked as favorite, remove it from the favorites list
      favoriteNoteBooks.remove(notebook);
    }
  }

  // Function to add a NoteBook to the favorites list
  void addToFavorites(NoteBook notebook) {
    // Check if the notebook is already in the favorites list
    if (!favoriteNoteBooks.contains(notebook)) {
      favoriteNoteBooks.add(notebook);
    }
  }

  // Function to remove a NoteBook from the favorites list
  void removeFromFavorites(NoteBook notebook) {
    favoriteNoteBooks.remove(notebook);
  }
  //added by me
  bool? isFav(NoteBook notebook) {
    if(notebook.isFav){
      isIconFav.value=!isIconFav.value;
    }else{
      return null;
    }
    return null;
  }
  void toggleIcon(var index) {
    iconStates[index] = !iconStates[index]; // Toggle the state of the icon at the specified index
  }
}
/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var iconStates = <bool>[false, false, false, false].obs; // List of observable boolean variables

  void toggleIcon(int index) {
    iconStates[index] = !iconStates[index]; // Toggle the state of the icon at the specified index
  }
}

class MyWidget extends StatelessWidget {
  final MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon List'),
      ),
      body: ListView.builder(
        itemCount: myController.iconStates.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Obx(() => IconButton(
              icon: myController.iconStates[index]
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              onPressed: () => myController.toggleIcon(index),
            )),
            title: Text('Icon $index'),
          );
        },
      ),
    );
  }
}
 */
