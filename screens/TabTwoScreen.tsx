import { StyleSheet, ScrollView } from 'react-native';
import { Text, View } from '../components/Themed';
import { RootTabScreenProps } from '../types';
import TableDisplay from "../components/Products"

export default function TabTwoScreen({ navigation }: RootTabScreenProps<'TabTwo'>) {

  return (
    <View style={styles.container}>
       <ScrollView horizontal={true}>
          <TableDisplay />
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
