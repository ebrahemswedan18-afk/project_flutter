import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        //  SingleChildScrollView
        // يسمح بالتمرير عند الحاجة، مما يمنع مشاكل تجاوز المحتوى على الشاشة وخاصة عند ظهور لوحة المفاتيح
        child: SingleChildScrollView(
          // يضيف مسافة داخلية بمقدار 24 بكسل من جميع الاتجاهات حتى لا تلتصق الحقول بحواف الشاشة.
          padding: const EdgeInsets.all(24),

          child: Column(
            // محاذاة العناصر إلى بداية المحور العمودي (من الأعلى)
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              const SizedBox(height: 40),

              // الشعار
              const Center(
                child: Icon(
                  Icons.content_cut,
                  size: 110,
                  color: Color(0xFFC9A545),
                ),
              ),

              const SizedBox(height: 50),

              // حقل البريد الإلكتروني
              const Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 8),
              // حقل إدخال البريد الإلكتروني
              TextField(
                style: const TextStyle(color: Colors.white),
                //مظهر داخل الحقل
                decoration: InputDecoration(
                  // نص تلميحي داخل حقل البريد الإلكتروني
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: false,
                  fillColor: Color(0xFF1E1E1E),
                  // تصميم الحدود لحقل البريد الإلكتروني
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    // لون الحدود
                    borderSide: const BorderSide(color: Color(0xFFC9A545)),
                  ),
                  // تصميم الحدود عند الضغط
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFFC9A545),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // حقل كلمة المرور
              const Text(
                'Password',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),

              const SizedBox(height: 8),

              TextField(
                //متغير لاخفاء كلمة المرور
                obscureText: hidePassword,

                style: const TextStyle(color: Colors.white),
                //مظهر داخل الحقل
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Color(0xFF1E1E1E),
                  // IconButton يجعل لأيقونة قابلة للضغط
                  //suffixIcon لوضع ايقونة نهاية الحقل
                  suffixIcon: IconButton(
                    icon: Icon(
                      // تغيير الأيقونة بناءً على حالة إخفاء كلمة المرور
                      hidePassword ? Icons.visibility_off : Icons.visibility,
                      color: Color(0xFFC9A545),
                    ),
                    //  setState عند الضغط على الأيقونة، يتم تغيير حالة إخفاء كلمة المرور
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  // تصميم الحدود لحقل البريد الإلكتروني

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: Color(0xFFC9A545)),
                  ),
                  // تصميم الحدود عند الضغط
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(
                      color: Color(0xFFC9A545),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // زر تسجيل الدخول
              SizedBox(
                width: double.infinity,
                height: 54,

                child:
                    //الزر نفسة
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFC9A545),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
              ),
              const SizedBox(height: 14),

              // إنشاء حساب ونسيت كلمة المرور
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Create Account',
                    style: TextStyle(color: Color(0xFFC9A545), fontSize: 17),
                  ),
                  // Text(
                  //   'Forgot Password',
                  //   style: TextStyle(color: Color(0xFFC9A545), fontSize: 17),
                  // ),
                ],
              ),
              const SizedBox(height: 60),

              // عنوان تسجيل الدخول الاجتماعي
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'login to',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // أزرار Google وApple وFacebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.g_mobiledata, color: Color(0xFFC9A545), size: 60),
                  Icon(Icons.apple, color: Color(0xFFC9A545), size: 50),
                  Icon(Icons.facebook, color: Color(0xFFC9A545), size: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
