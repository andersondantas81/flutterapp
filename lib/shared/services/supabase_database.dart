import 'package:flutter/foundation.dart';
import 'package:flutterapp/shared/services/app_database.dart';
import 'package:supabase/supabase.dart';

class SupabaseDatabase implements AppDatabase {
  late final SupabaseClient client;

  SupabaseDatabase() {
    init();
  }

  @override
  void init() {
    client = SupabaseClient(const String.fromEnvironment("SUPABASEURL"),
        const String.fromEnvironment("SUPABASEKEY"));
    /* if (!kReleaseMode) {
      print("Database initialiazed");
      print("URL: ${client.supabaseUrl}, KEY: ${client.supabaseKey}");
    } */
  }

  @override
  Future<bool> createAccount(
      {required String email,
      required String password,
      required String name}) async {
    final response = await client.auth.signUp(email, password);
    return response.error == null;
  }

  @override
  Future<bool> login({required String email, required String password}) async {
    final response = await client.auth.signIn(email: email, password: password);
    return response.error == null;
  }
}
