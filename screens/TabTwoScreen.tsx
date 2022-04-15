import { useState } from 'react';
import { Button, StyleSheet } from 'react-native';

import EditScreenInfo from '../components/EditScreenInfo';
import ViewStoreDetails from '../components/ViewStoreDetails';
import { Text, View } from '../components/Themed';

export default function TabTwoScreen() {
  const [showStoreDetails, setStoreDetails] = useState(false);
  const [showDailySales, setShowDailySales] = useState(false);
  const [showOptions, setShowOptions] = useState(true);


  const ViewContent = 
   <View style={styles.container}>
    <Text style={styles.title}>Choose one of the 2 options</Text>
    <View style={styles.separator} lightColor="#eee" darkColor="rgba(255,255,255,0.1)" />
    <Button title='View store details'
      onPress={()=>{
        setShowDailySales(false); 
        setShowOptions(false);
        setStoreDetails(true);}
        }/>
    <Button title='View daily sales' 
      onPress={()=>{
        setShowDailySales(true);
        setShowOptions(false);
        setStoreDetails(false);}
        }/>
    <EditScreenInfo path="/screens/TabTwoScreen.tsx" />
  </View>;
  
  return (<View>
    <Button title='home' onPress={()=>{        
        setShowDailySales(false);
        setShowOptions(true);
        setStoreDetails(false);}}/>
    {showDailySales && dailySales}
    {showStoreDetails && <ViewStoreDetails />}
    {showOptions && ViewContent}
  </View>);

  ;
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
