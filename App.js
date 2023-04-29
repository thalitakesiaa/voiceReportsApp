import React from 'react';
import Signin from './src/pages/signin'
import Home from './src/pages/home';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';

export default function App() {
  
    const Stack = createStackNavigator();

    return (
      <NavigationContainer>
        <Stack.Navigator>
          <Stack.Screen name="Signin" component={Signin} />
          <Stack.Screen name="Home" component={Home} />
        </Stack.Navigator>
      </NavigationContainer>
    );
}

