import 'package:authentication/core/style/app_color.dart';
import 'package:flutter/material.dart';
class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  String selectedPaymentMethod = 'Debit Card';
  @override
  Widget build(BuildContext context) {
    return (
    Scaffold(
     backgroundColor: MyColors.mainColor,
     body: Column(
       children: [
         const SizedBox(
           height: 205,
           width: double.infinity,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: EdgeInsets.all(30.0),
                 child: Icon(
                   Icons.arrow_circle_left_outlined,
                   size: 40,
                   color: Colors.black,
                 ),
               ),
               Center(
                   child: Text(
                     "Confirmation",
                     style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                   )),
               SizedBox(
                 height: 10,
               ),
               Center(
                   child: Text(
                     "Please see below the total amount",
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                   )),
               Center(
                   child: Text(
                     "of subscription in 12 months",
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                   ))
             ],
           ),
         ),
         const SizedBox(height: 20,),
         Expanded(
           child: Container(
             width: MediaQuery.sizeOf(context).width,
             padding: const EdgeInsets.symmetric(horizontal: 30),
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: const BorderRadius.only(
                     topLeft: Radius.circular(50),
                     topRight: Radius.circular(50)),
                 boxShadow: [
                   BoxShadow(
                     offset: const Offset(0, 1),
                     color: Colors.black.withOpacity(0.25),
                     blurRadius: 1,
                   )
                 ]),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const SizedBox(height: 20,),
                 const Center(
                   child: Text(
                     'Total amount of Subscription',
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                   ),
                 ),
                 const SizedBox(height: 20),
                 Container(
                   decoration: const BoxDecoration(

                     color: Color(0xa52dbc4e),
                   ),
               
                   height: 54,
                   width: 383,
                   child: const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('All Applications', style: TextStyle(fontSize: 18)),
                         Text('QR 5999', style: TextStyle(fontSize: 18)),
                       ],
                     ),
                   ),
                 ),

                 Container(
                   decoration: const BoxDecoration(

                     color: Color(0xabb5cfed),
                   ),

                   height: 54,
                   width: 383,

                   child: const Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Total Bill', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                         Text('QR 5999', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(height: 10),
                 const Row(
                   children: [
                     Text(
                       'Subscription ends ',
                       style: TextStyle(color: Colors.grey,
                       fontSize: 18
                       ),
                     )  ,
                     Text(
                       '30 August 2024 ',
                       style: TextStyle(color: Colors.black,
                       fontSize: 18
                       ),
                     ),

                   ],
                 ),
                 const SizedBox(height: 20),
                 const Text(
                   'Choose Payments',
                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                 ),
                 RadioListTile<String>(
                   title: const Row(
                     children: [
                       Icon(Icons.credit_card),
                       SizedBox(width: 10),
                       Text('Debit Card'),
                       Spacer(),
                       Text('Ending 8008'),
                     ],
                   ),
                   value: 'Debit Card',
                   groupValue: selectedPaymentMethod,
                   onChanged: (value) {
                     setState(() {
                       selectedPaymentMethod = value!;
                     });
                   },
                 ),
                 RadioListTile<String>(
                   title: const Row(
                     children: [
                       Icon(Icons.credit_card),
                       SizedBox(width: 10),
                       Text('Credit Card'),
                     ],
                   ),
                   value: 'Credit Card',
                   groupValue: selectedPaymentMethod,
                   onChanged: (value) {
                     setState(() {
                       selectedPaymentMethod = value!;
                     });
                   },
                 ),
                 RadioListTile<String>(
                   title:  Row(
                     children: [
                       Image.asset('assets/images/img_14.png',
                         height: 24,
                         width: 24,
                       ),
                       const SizedBox(width: 10),
                       const Text('Apple Pay'),
                     ],
                   ),
                   value: 'Apple Pay',
                   groupValue: selectedPaymentMethod,
                   onChanged: (value) {
                     setState(() {
                       selectedPaymentMethod = value!;
                     });
                   },
                 ),
                 RadioListTile<String>(
                   title:  Row(
                     children: [
                       Image.asset('assets/images/img_15.png',
                       height: 24,
                         width: 24,
                       ),
                       const SizedBox(width: 10),
                       const Text('Google Pay'),
                     ],
                   ),
                   value: 'Google Pay',
                   groupValue: selectedPaymentMethod,
                   onChanged: (value) {
                     setState(() {
                       selectedPaymentMethod = value!;
                     });
                   },
                 ),
                 const SizedBox(height: 20),
                 ElevatedButton(
                   onPressed: () {
                   },
                   style: ElevatedButton.styleFrom(
                     minimumSize: const Size(double.infinity, 50),
                     backgroundColor: MyColors.PColor,
                   ),
                   child: const Text('Pay now',style: TextStyle(
                     color: Colors.white,
                     fontSize: 18
                   ),),
                 ),
                 const SizedBox(height: 10),
                 const Center(
                   child: Text(
                     'Proceed to process payments',
                     style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:FontWeight.w500),
                   ),
                 ),
               ],
             ),
           ),
         )
       ],
     ),
   )
    );
  }
}
