import { StyleSheet, ScrollView } from 'react-native';
import { Text, View } from '../components/Themed';
import { RootTabScreenProps } from '../types';

export default function TabFourScreen({ navigation }: RootTabScreenProps<'TabOne'>) {

  const array=["row 1", "row2"];

  return (
    <View style={styles.container}>
       <ScrollView horizontal={true}>
          <Text>4</Text>
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
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  separator: {
    marginVertical: 30,
    height: 1,
    width: '80%',
  },
});
