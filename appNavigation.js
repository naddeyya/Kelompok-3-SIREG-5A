import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import { LogBox } from "react-native";

// Make sure the import paths are correct
import Login from "../screens/Login";
import Newaccount from "../screens/Newaccount";
import Beranda from "../screens/Beranda";
import Pengisian1 from "../screens/Pengisian1";
import Riwayat from "../screens/Riwayat";
import PencarianDosen from "../screens/PencarianDosen";
import ProfilDosen from "../screens/ProfilDosen";
import Pengisianevaluasi from "../screens/Pengisianevaluasi";
import Anonim from "../screens/Anonim";

// Ignore specific warnings
LogBox.ignoreLogs([
  "Non-serializable values were found in the navigation state",
]);

const Stack = createNativeStackNavigator();

export default function AppNavigation() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
      <Stack.Screen 
          name="Login" 
          component={Login} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="Newaccount" 
          component={Newaccount} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
      <Stack.Screen 
          name="Beranda" 
          component={Beranda} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="Pengisian1" 
          component={Pengisian1} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="Riwayat" 
          component={Riwayat} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="PengisianEvaluasi" 
          component={Pengisianevaluasi} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="PencarianDosen" 
          component={PencarianDosen} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="ProfilDosen" 
          component={ProfilDosen} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
        <Stack.Screen 
          name="Anonim" 
          component={Anonim} 
          options={{ headerShown: false }} // Atur sesuai kebutuhan
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
