import 'package:bai2/login_page.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  var userNameController = TextEditingController();
  var passController = TextEditingController();
  var passwordController = TextEditingController();
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
                  height: 20,
                ),
                Text("Đăng ky"),
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
                      label: Text("nhap password"),
                      hintText: "Vui lòng nhập password",
                      prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  validator: (str){
                    if (str == null || str.isEmpty)
                      return "Mat khau không được rỗng";
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      label: Text("kiem tra password"),
                      hintText: "Vui lòng nhập lai password",
                      prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  validator: (str){
                    var pa = passController.text;
                    var npa = passwordController.text;
                    if (str == null || str.isEmpty)
                      return " Mật khẩu không đuọc rông";
                    else if (pa != npa)
                      return "Mat khẩu dưới phải trùng voi mật khẩu trên";
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
                        print("Dang ky thanh cong");
                      }
                      else{
                        print("Dữ liệu không chính xác");
                      }
                    },
                    child: Text("Đăng ky")),
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
                          MaterialPageRoute(builder: (context)=>LoginPage())//tao file dang ky r bo vao hihi
                      );
                    },
                    child: Text("quay lai")),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
    );
  }
}
