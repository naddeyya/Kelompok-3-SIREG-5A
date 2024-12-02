import React, {useState} from "react";
import { SafeAreaView, View, ScrollView, Text, TextInput, TouchableOpacity, Image, } from "react-native";
export default (props) => {
	const [textInput1, onChangeTextInput1] = useState('');
	const [textInput2, onChangeTextInput2] = useState('');
	return (
		<SafeAreaView 
			style={{
				flex: 1,
				backgroundColor: "#FFFFFF",
			}}>
			<ScrollView  
				style={{
					flex: 1,
					backgroundColor: "#FFFFFF",
					borderRadius: 50,
					paddingTop: 103,
				}}>
				<Text 
					style={{
						color: "#3D30A2",
						fontSize: 30,
						marginBottom: 40,
						marginHorizontal: 127,
					}}>
					{"Login here"}
				</Text>
				<Text 
					style={{
						color: "#000000",
						fontSize: 20,
						marginBottom: 89,
						marginHorizontal: 97,
					}}>
					{"Welcome back you’ve\nbeen missed!"}
				</Text>
				<TextInput
					placeholder={"Email"}
					value={textInput1}
					onChangeText={onChangeTextInput1}
					style={{
						color: "#616161",
						fontSize: 16,
						marginBottom: 29,
						marginHorizontal: 31,
						backgroundColor: "#F1F4FF",
						borderColor: "#3D30A2",
						borderRadius: 10,
						borderWidth: 2,
						paddingVertical: 24,
						paddingHorizontal: 22,
					}}
				/>
				<TextInput
					placeholder={"Password"}
					value={textInput2}
					onChangeText={onChangeTextInput2}
					style={{
						color: "#616161",
						fontSize: 16,
						marginBottom: 34,
						marginHorizontal: 31,
						backgroundColor: "#F1F4FF",
						borderRadius: 10,
						paddingVertical: 25,
						paddingHorizontal: 22,
					}}
				/>
				<Text 
					style={{
						color: "#3D30A2",
						fontSize: 14,
						marginBottom: 29,
						marginHorizontal: 42,
					}}>
					{"Forgot your password?"}
				</Text>
				<TouchableOpacity 
					style={{
						alignItems: "center",
						backgroundColor: "#3D30A2",
						borderRadius: 10,
						paddingVertical: 19,
						marginBottom: 30,
						marginHorizontal: 31,
						shadowColor: "#CAD6FF",
						shadowOpacity: 1.0,
						shadowOffset: {
						    width: 0,
						    height: 10
						},
						shadowRadius: 20,
						elevation: 20,
					}} onPress={()=>alert('Pressed!')}>
					<Text 
						style={{
							color: "#FFFFFF",
							fontSize: 20,
						}}>
						{"Sign in"}
					</Text>
				</TouchableOpacity>
				<TouchableOpacity 
					style={{
						alignItems: "center",
						backgroundColor: "#FFFFFF",
						borderRadius: 10,
						paddingVertical: 15,
						marginBottom: 92,
						marginHorizontal: 31,
					}} onPress={()=>alert('Pressed!')}>
					<Text 
						style={{
							color: "#494949",
							fontSize: 14,
						}}>
						{"Create new account"}
					</Text>
				</TouchableOpacity>
				<Text 
					style={{
						color: "#3D30A2",
						fontSize: 14,
						marginBottom: 22,
						marginHorizontal: 156,
					}}>
					{"Or continue with"}
				</Text>
				<View 
					style={{
						flexDirection: "row",
						justifyContent: "space-between",
						alignItems: "center",
						marginHorizontal: 114,
					}}>
					<View 
						style={{
							width: 60,
							backgroundColor: "#EBEBEB",
							borderRadius: 10,
							paddingHorizontal: 18,
						}}>
						<Image
							source = {{uri: "https://i.imgur.com/1tMFzp8.png"}} 
							resizeMode = {"stretch"}
							style={{
								height: 24,
								marginTop: 10,
							}}
						/>
					</View>
					<View 
						style={{
							width: 60,
							backgroundColor: "#EBEBEB",
							borderRadius: 10,
							paddingHorizontal: 18,
						}}>
						<Image
							source = {{uri: "https://i.imgur.com/1tMFzp8.png"}} 
							resizeMode = {"stretch"}
							style={{
								height: 24,
								marginTop: 10,
							}}
						/>
					</View>
					<View 
						style={{
							width: 60,
							backgroundColor: "#EBEBEB",
							borderRadius: 10,
							paddingHorizontal: 18,
						}}>
						<Image
							source = {{uri: "https://i.imgur.com/1tMFzp8.png"}} 
							resizeMode = {"stretch"}
							style={{
								height: 24,
								marginTop: 10,
							}}
						/>
					</View>
				</View>
			</ScrollView>
		</SafeAreaView>
	)
}
