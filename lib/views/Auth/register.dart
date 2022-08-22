import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:my_tsel/views/Auth/verif.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 32,
                ),
                Image.asset(
                  'assets/images/gambar.png',
                  width: 147,
                ),
                SizedBox(
                  height: 46,
                ),
                Text(
                  'Silahkan masuk dengan nomor telkomsel kamu',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Nomor Hp',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  style: TextStyle(),
                  decoration: InputDecoration(
                    hintText: 'Cth. 08129011xxxx',
                    hintStyle: TextStyle(color: Color(0xffD9D9D9)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffCED6E0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffCED6E0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/check.png',
                      width: 16,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: RichText(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Saya menyetujui '),
                            TextSpan(
                                text: 'syarat',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(text: ', '),
                            TextSpan(
                                text: 'ketentuan',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(text: ', '),
                            TextSpan(text: 'dan '),
                            TextSpan(
                                text: 'privasi ',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(text: 'Telkomsel'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: const Size(double.infinity, 42),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return VerifPage();
                    }));
                  },
                  child: const Text(
                    'LANJUT',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                  child: Text(
                    'Atau masuk menggunakan',
                    style: TextStyle(
                      color: Color(0xffD9D9D9),
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        side: BorderSide(
                          color: Color(0xff3B5998),
                          width: 1.5,
                        ),
                        minimumSize: Size(157, 42),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/facebook.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              color: Color(0xff3B5998),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        side: BorderSide(
                          color: Color(0xff1DA1F2),
                          width: 1.5,
                        ),
                        minimumSize: Size(157, 42),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/twitter.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Twitter',
                            style: TextStyle(
                              color: Color(0xff1DA1F2),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
