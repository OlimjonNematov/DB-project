import { BackHandler, StyleSheet, ScrollView, Button, Alert } from 'react-native';
import { Text, View } from '../components/Themed';
import { RootTabScreenProps } from '../types';
// import React, { BackHandler } from 'react-native';

export default function TabThreeScreen({ navigation }: RootTabScreenProps<'TabThree'>) {

  const array=["row 1", "row2"];
  
  return (
    <View style={styles.container}>
       <ScrollView horizontal={true}>
            <Button style={styles.button} title='quit' onPress={()=>alert("You have quit the app, Good Bye!")}/>
       </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  button: {
  },
  separator: {
    marginVertical: 30,
    height: 1,
    width: '80%',
  },
});
