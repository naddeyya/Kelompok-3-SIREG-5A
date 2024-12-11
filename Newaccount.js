import React, { useState } from "react";
import { SafeAreaView, ScrollView, Text, TextInput, TouchableOpacity, View } from "react-native";

export default (props) => {
  const [username, setUsername] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');

  const handleCreateAccount = () => {
    if (!username || !email || !password || !confirmPassword) {
      alert("All fields are required!");
    } else if (password !== confirmPassword) {
      alert("Passwords do not match!");
    } else {
      alert("Account created successfully!");
      props.navigation.navigate("Login"); // Navigasi kembali ke halaman login
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
          Create New Account
        </Text>
        <Text
          style={{
            color: "#6B6B6B",
            fontSize: 16,
            textAlign: "center",
            marginBottom: 50,
          }}
        >
          Fill in your details to create a new account.
        </Text>
        <TextInput
          placeholder="Username"
          value={username}
          onChangeText={setUsername}
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
        <TextInput
          placeholder="Confirm Password"
          value={confirmPassword}
          onChangeText={setConfirmPassword}
          secureTextEntry={true}
          style={{
            backgroundColor: "#F9FAFE",
            borderColor: "#A1A8F2",
            borderWidth: 1,
            borderRadius: 12,
            padding: 15,
            marginBottom: 30,
            fontSize: 16,
          }}
        />
        <TouchableOpacity
          onPress={handleCreateAccount}
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
            Create Account
          </Text>
        </TouchableOpacity>
        <TouchableOpacity
          onPress={() => props.navigation.navigate("Login")} // Navigasi ke halaman login
          style={{
            borderWidth: 1,
            borderColor: "#3D30A2",
            padding: 15,
            borderRadius: 12,
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
            Back to Login
          </Text>
        </TouchableOpacity>
      </ScrollView>
    </SafeAreaView>
  );
};
