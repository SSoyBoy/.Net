import 'package:bai2/Register_Page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  var userNameController = TextEditingController();
  var passController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SafeArea(

        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/logo.png"),
              const SizedBox(
                height: 10,
              ),
              Text("Đăng nhập vào hệ thống"),
              const SizedBox(
                height: 30,
              ),
              TextFormField(

                controller: userNameController,
                decoration: InputDecoration(
                  label: Text("Tên đăng nhập"),
                  hintText: "Vui lòng nhập tên đăng nhập",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),

                ),
                validator: (str){
                  if (str == null || str.isEmpty)
                    return "Tên đăng nhập không được rỗng";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  label: Text("Mật khẩu"),
                  hintText: "Vui lòng nhập mật khẩu",
                  prefixIcon: Icon(Icons.key_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                ),
                validator: (str){
                  if (str == null || str.isEmpty)
                    return " Mật khẩu không đuọc rông";
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const  EdgeInsets.fromLTRB(80, 20, 80, 20)
                  ),
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {//dấu chấm thang có nghĩa là nếu _formKey ==null thì không thực hiện validate()
                      var userName = userNameController.text;
                      var pass = passController.text;
                      print("Xin chào: ${userName}");
                    }
                    else{
                      print("Dữ liệu không chính xác");
                    }
                  },

                  child: Text("Đăng nhập")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const  EdgeInsets.fromLTRB(80, 20, 80, 20)
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>RegisterPage())
                    );
                  },
                  child: Text("Đăng ký")),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )
    );
  }
}
