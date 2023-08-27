// import 'package:firebase_database/firebase_database.dart';

// class MenuService {
//   Future<List<Menus>> getMenu() async {
//     List<Menus> mismenus = [];
//     try {
//       DataSnapshot snap = FirebaseDatabase.instance.ref().child('nombre').once()
//           as DataSnapshot;
//       print("snap.value");
//     } catch (e) {
//       return mismenus;
//     }
//     return mismenus;
//   }

//   Future<bool> saveMenus(String nombre, String precio) async {
//     try {
//       await FirebaseDatabase.instance
//           .ref()
//           .child('producto')
//           .push()
//           .set({'title': nombre, 'body': precio});
//       return true;
//     } catch (e) {
//       print(e);
//       return false;
//     }
//   }
// }

// class Menus {
//   Menus({
//     required this.nombre,
//     this.key,
//     required this.precio,
//   });
//   String? key;
//   String nombre;
//   String precio;
// }
