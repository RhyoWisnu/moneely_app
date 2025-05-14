import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  bool _savePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),

                // Tombol kembali
                IconButton(
                  icon: Image.asset(
                    'assets/icons/back.png',
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),

                const SizedBox(height: 16),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),

                // Input nomor telepon
                const Text("Phone"),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '+62 811–1044–104',
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
                        // Optional: validasi nomor telepon
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Input password
                const Text("Password"),
                const SizedBox(height: 8),
                TextField(
                  obscureText: _obscurePassword,
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
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Checkbox + Forgot Password
                Row(
                  children: [
                    Checkbox(
                      value: _savePassword,
                      onChanged: (val) {
                        setState(() {
                          _savePassword = val!;
                        });
                      },
                    ),
                    const Text('Save password'),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        // TODO: Forgot password logic
                      },
                      child: const Text("Forgot password?"),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Tombol Login
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigasi ke home screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C63FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Link ke Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t have account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
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
        ),
      ),
    );
  }
}
