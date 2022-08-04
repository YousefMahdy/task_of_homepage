// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import '../../layout/cubit/cubit.dart';
// import '../styles/color.dart';
//
//
// Widget defaultButton({
//   double width = double.infinity,
//   Color color = Colors.blue,
//   double radius = 10.0,
//   required Function function,
//   String text = "test",
// }) {
//   return Container(
//     width: double.infinity,
//     decoration: BoxDecoration(
//         color: color, borderRadius: BorderRadius.circular(radius)),
//     child: MaterialButton(
//       child: Text(
//         text,
//         style: const TextStyle(
//           color: Colors.white,
//         ),
//       ),
//       onPressed: () {
//         function();
//       },
//     ),
//   );
// }
//
// Widget defaultFormField({
//   String? labelText,
//   required TextEditingController controler,
//   bool isObSecureText = false,
//   required TextInputType keyboardType,
//   IconData? prefexIcon,
//   IconData? suffexIcon,
//   required Function validat,
//   Function? prefex_pressed,
//   Function? onSubmit,
//   //Function? onChange,
//   Function? onTap,
//   Function? suffexPressed,
// }) {
//   return TextFormField(
//     controller: controler,
//     obscureText: isObSecureText,
//     keyboardType: keyboardType,
//     onTap: (){
//
//     },
//     onFieldSubmitted: (value) {
//       //print(value);
//       onSubmit!(value);
//     },
//     onChanged: (s) {
//       //onChange!(s);
//     },
//     validator: (s) => validat(s),
//
//
//     decoration: InputDecoration(
// // border: InputBorder.none,
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
//         labelText: labelText,
// // label: Text("gggggg")
//
//         prefixIcon: IconButton(
//           icon: Icon(prefexIcon),
//           onPressed: () {}
//           //print("prefex presssed");
//           ,
//         ),
//         //suffixIcon: Icon(safexIcon)),
//           suffixIcon:  InkWell(
//                       child:Icon(suffexIcon),
//             onTap:(){
//               suffexPressed!();
//               //print("GGGGGGGGGGGGGGGGGGG");
//             } ,
//           ) ,
//
//
//
//         )
//   );
//
// }
//
//
// Widget BuildSeparateItem(){
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20),
//     child: Container(
//       width: double.infinity,
//       height: 1.0,
//       color: Colors.grey[300],
//     ),
//   );
// }
//
// void navigateTo(context,widget)=>Navigator.push(
//   context,MaterialPageRoute(builder: (context)=>widget ));
// void navigatePushAndRemove(context,widget)=>Navigator.pushAndRemoveUntil(
//     context, MaterialPageRoute(builder: (context)=>widget), (route) => false);
//
//
// enum ToastStates{ErrOR,WORNING,SUCCESS}
//
// Color chooseToastColor(ToastStates state){
//   Color color;
//
//   switch(state){
//     case ToastStates.SUCCESS:
//       color=Colors.greenAccent;
//       break;
//     case ToastStates.ErrOR:
//       color=Colors.red;
//       break;
//     case ToastStates.WORNING:
//       color=Colors.amber;
//       break;
//
//   }
//     return color;
// }
//
// Widget buildListProduct(
//     product,
//     context, {
//       bool isOldPrice = true,
//     }) =>
//     Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Container(
//         height: 120.0,
//         child: Row(
//           children: [
//             Stack(
//               alignment: AlignmentDirectional.bottomStart,
//               children: [
//                 // Image(
//                 //   image: NetworkImage(product!.image),
//                 //
//                 //   width: 120.0,
//                 //   height: 120.0,
//                 // ),
//                  CachedNetworkImage(
//                   imageUrl: product!.image,
//                    height: 120.0,
//                    width: 120.0,
//                   //fit: BoxFit.cover,
//
//                   // placeholder: (context, url) {
//                   //   return CircularProgressIndicator(
//                   //
//                   //   );
//                   // },
//                   errorWidget: (context, url, error) => Icon(Icons.error),
//                 ),
//                 if (product.discount != 0 && isOldPrice)
//                   Container(
//                     color: Colors.red,
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 5.0,
//                     ),
//                     child: Text(
//                       'DISCOUNT',
//                       style: TextStyle(
//                         fontSize: 8.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//             SizedBox(
//               width: 20.0,
//             ),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.name,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontSize: 14.0,
//                       height: 1.3,
//                     ),
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       Text(
//                         product.price.round().toString()+ " LE",
//                         style: TextStyle(
//                           fontSize: 12.0,
//                           color: defaultColor,
//                         ),
//                       ),
//                       SizedBox(
//                         width: 5.0,
//                       ),
//                       if (product.discount != 0 && isOldPrice)
//                         Text(
//                           product.oldPrice.toString(),
//                           style: TextStyle(
//                             fontSize: 10.0,
//                             color: Colors.grey,
//                             decoration: TextDecoration.lineThrough,
//                           ),
//                         ),
//                       Spacer(),
//                       IconButton(
//                         onPressed: () {
//
//                           print(HomeCubit.get(context).favoritesModel!.data!.data.length);
//                           HomeCubit.get(context).addOrDeleteFavorites(product_id: product.id);
//                         },
//                         icon: CircleAvatar(
//                           radius: 15.0,
//                           backgroundColor:
//                           HomeCubit.get(context).favorites[product.id]!
//                               ? defaultColor
//                               : Colors.grey,
//                           child: Icon(
//                             Icons.favorite_border,
//                             size: 14.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );