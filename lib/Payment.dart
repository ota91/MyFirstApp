import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'اسم حامل البطاقة',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'ادخل الاسم ',
                hintTextDirection: TextDirection.rtl,
              ),
              // textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'رقم البطاقة',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'ادخل رقم البطاقة',
                hintTextDirection: TextDirection.rtl,
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'تاريخ الانتهاء',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'الشهر',
                      hintTextDirection: TextDirection.rtl,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'السنه',
                      hintTextDirection: TextDirection.rtl,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'رقم التحقق',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'ادخل رقم التحقق ',
                hintTextDirection: TextDirection.rtl,
              ),
              keyboardType: TextInputType.number,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("ادفع "),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  side: BorderSide(
                      color: Color.fromARGB(45, 255, 230, 0), width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  shadowColor: Colors.lightBlue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
