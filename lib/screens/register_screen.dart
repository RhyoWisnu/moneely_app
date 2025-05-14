import 'package:flutter/material.dart';
import 'signup_success_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F2FD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset('assets/icons/back.png', width: 24, height: 24),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(height: 16),
            Text(
              'Register',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),

            /// Username Field
            Text('Username', style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Rhyo Wisnuwardhana',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    'assets/icons/checkmark.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    // Validasi atau aksi tertentu
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Phone Field (readonly)
            Text('Phone', style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(height: 8),
            TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: '+62 811–1044–104',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Password Field
            Text('Password', style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(height: 8),
            TextField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                hintText: 'At least 8 characters',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    'assets/icons/eye.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Confirm Password Field
            Text(
              'Confirm password',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: !_isConfirmPasswordVisible,
              decoration: InputDecoration(
                hintText: 'At least 8 characters',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    'assets/icons/eye.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),

            /// Terms & Conditions Checkbox
            Row(
              children: [
                Checkbox(
                  value: _agree,
                  onChanged: (val) {
                    setState(() {
                      _agree = val!;
                    });
                  },
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text:
                          'By creating your account you have to agree\nwith our ',
                      children: [
                        TextSpan(
                          text: 'Teams and conditions',
                          style: TextStyle(
                            color: Color(0xFF6C63FF),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            /// Register Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpSuccessScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6C63FF),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text('Register', style: TextStyle(fontSize: 16)),
            ),

            SizedBox(height: 20),

            /// Login Redirect
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have account ? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // kembali ke login
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFF6C63FF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
