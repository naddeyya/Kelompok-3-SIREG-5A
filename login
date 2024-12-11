import React, { useState } from "react";
import { SafeAreaView, ScrollView, Text, TextInput, TouchableOpacity } from "react-native";

const LoginScreen = ({ navigation }) => { // Pastikan `navigation` diterima di sini
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSignIn = () => {
    if (email && password) {
      navigation.navigate("Beranda"); // Navigasi ke layar Beranda
    } else {
      alert("Please fill in all fields!");
    }
  };

  return (
    <SafeAreaView style={{ flex: 1, backgroundColor: "#FFFFFF" }}>
      <ScrollView contentContainerStyle={{ padding: 20 }}>
        <Text
          style={{
            color: "#3D30A2",
            fontSize: 30,
            fontWeight: "bold",
            textAlign: "center",
            marginVertical: 40,
          }}
        >
          Login Here
        </Text>
        <Text
          style={{
            color: "#6B6B6B",
            fontSize: 16,
            textAlign: "center",
            marginBottom: 50,
          }}
        >
          Welcome back! You've been missed.
        </Text>
        <TextInput
          placeholder="Email"
          value={email}
          onChangeText={setEmail}
          style={{
            backgroundColor: "#F9FAFE",
            borderColor: "#A1A8F2",
            borderWidth: 1,
            borderRadius: 12,
            padding: 15,
            marginBottom: 20,
            fontSize: 16,
          }}
        />
        <TextInput
          placeholder="Password"
          value={password}
          onChangeText={setPassword}
          secureTextEntry={true}
          style={{
            backgroundColor: "#F9FAFE",
            borderColor: "#A1A8F2",
            borderWidth: 1,
            borderRadius: 12,
            padding: 15,
            marginBottom: 20,
            fontSize: 16,
          }}
        />
        <TouchableOpacity
          onPress={() => alert("Forgot password functionality here")}
          style={{ alignSelf: "flex-end", marginBottom: 30 }}
        >
          <Text style={{ color: "#3D30A2", fontSize: 14 }}>Forgot your password?</Text>
        </TouchableOpacity>
        <TouchableOpacity
          onPress={handleSignIn}
          style={{
            backgroundColor: "#3D30A2",
            padding: 15,
            borderRadius: 12,
            marginBottom: 20,
            shadowColor: "#000",
            shadowOpacity: 0.2,
            shadowOffset: { width: 0, height: 5 },
            elevation: 5,
          }}
        >
          <Text
            style={{
              color: "#FFFFFF",
              fontSize: 18,
              textAlign: "center",
              fontWeight: "bold",
            }}
          >
            Sign In
          </Text>
        </TouchableOpacity>
        <TouchableOpacity
          onPress={() => navigation.navigate("Newaccount")} // Pastikan halaman sesuai
          style={{
            borderWidth: 1,
            borderColor: "#3D30A2",
            padding: 15,
            borderRadius: 12,
            marginBottom: 30,
          }}
        >
          <Text
            style={{
              color: "#3D30A2",
              fontSize: 16,
              textAlign: "center",
              fontWeight: "bold",
            }}
          >
            Create New Account
          </Text>
        </TouchableOpacity>
      </ScrollView>
    </SafeAreaView>
  );
};

export default LoginScreen;

