// import 'package:get/get.dart';
//
// import '../model/note_model.dart';
//
// class NoteBookController extends GetxController {
//   // Define a RxList to hold the NoteBook data
//   RxBool isFav = false.obs; //added by me
//   RxList<NoteBook> noteBooks = <NoteBook>[].obs;
//   RxList<NoteBook> favoriteNoteBooks = <NoteBook>[].obs;
//   var isIconFav= false.obs;
//
//
//   @override
//   void onInit() {
//     super.onInit();
//     // Initialize some sample data (you can replace this with your actual data source)
//     noteBooks.addAll([
//       NoteBook(
//         subjectName: "Math",
//         isFav: false,
//         notes: [
//           Note(title: "Note 1", comment: "Comment for Note 1"),
//           Note(title: "Note 2", comment: "Comment for Note 2"),
//         ],
//       ),
//       NoteBook(
//         subjectName: "Science",
//         isFav: false,
//         notes: [
//           Note(title: "Note 3", comment: "Comment for Note 3"),
//           Note(title: "Note 4", comment: "Comment for Note 4"),
//         ],
//       ),
//       NoteBook(
//         subjectName: "History",
//         isFav: false,
//         notes: [
//           Note(title: "Note 5", comment: "Comment for Note 5"),
//           Note(title: "Note 6", comment: "Comment for Note 6"),
//         ],
//       ),
//       NoteBook(
//         subjectName: "English",
//         isFav: false,
//         notes: [
//           Note(title: "Note 7", comment: "Comment for Note 7"),
//           Note(title: "Note 8", comment: "Comment for Note 8"),
//         ],
//       ),
//       NoteBook(
//         subjectName: "Geography",
//         isFav: false,
//         notes: [
//           Note(title: "Note 9", comment: "Comment for Note 9"),
//           Note(title: "Note 10", comment: "Comment for Note 10"),
//         ],
//       ),
//     ]);
//   }
//
//   // in this below code heart icons change um akunila, favorite il ninu pettan delete akuna yum ila
//   void toggleFavorite(NoteBook notebook) {
//     notebook.isFav = !notebook.isFav;
//     if (notebook.isFav) {
//       // addToFavorites(notebook);
//       favoriteNoteBooks.add(notebook);// Add to favorites list
//       isIconFav.value=!isIconFav.value;
//     } else {
//       removeFromFavorites(notebook);
//       // favoriteNoteBooks.remove(notebook); // Remove from favorites list
//     }
//   }
//
//   /*
//   in this code home il ninu subject shift akunnu , favorite il ottu
//   Function to toggle the favorite status of a NoteBook
//   void toggleFavorite(NoteBook notebook) {
//     notebook.isFav = !notebook.isFav;
//     if (notebook.isFav) {
//       // If the NoteBook is marked as favorite, add it to the favorites list
//       addToFavorites(notebook);
//     } else {
//       // If the NoteBook is unmarked as favorite, remove it from the favorites list
//       removeFromFavorites(notebook);
//     }
//   }
//    */
//
//   // Function to add a NoteBook to the favorites list
//   void addToFavorites(NoteBook notebook) {
//     // Check if the notebook is already in the favorites list
//     if (!noteBooks.contains(notebook)) {
//       noteBooks.add(notebook);
//     }
//   }
//
//   // Function to remove a NoteBook from the favorites list
//   void removeFromFavorites(NoteBook notebook) {
//     // noteBooks.remove(notebook); //engane aa enkil home il ninum delete akunu
//     favoriteNoteBooks.remove(notebook);
//   }
//
//   /*
// //added by refering video
//   void addToFavorites(NoteBook noteBook) {
//     favoriteNoteBooks.add(noteBook);
//   }
//
//   void removeFromFavorites(NoteBook noteBook) {
//     noteBooks.remove(noteBook);
//   }
//
//    */
// }
