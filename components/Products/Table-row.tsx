import Axios  from 'axios';
import { StyleSheet, ScrollView, Button, Text, View } from 'react-native';

export type Props = {
    name: string;
    purchase_price: number;
    sales_price:number;
    product_id: number;
}

export default function Row(props:any) {

    const {name, purchase_price, sales_price, product_id} = props;
    
    const onPut = ()=>{
      Axios.put('http://localhost:19007/api/put/products',{product_id:product_id}).then(()=>{
        alert(`Ended ${name}, ID: ${product_id}`);
      });
    }
  return (
    <View key={props.product_id} style={styles.container}>
        
        <View style={styles.firstCell}><Text>{props.name}</Text></View>
        <View style={styles.cell}><Text>${props.purchase_price}</Text></View>
        <View style={styles.cell}><Text>${props.sales_price}</Text></View>
        <View style={styles.cell}><Button color={"red"} title='End' onPress={onPut}/></View>
        
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    flexDirection:'row',
    marginLeft:50
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
  },
  firstCell:{
    flex:1,
    paddingLeft: 0,
    marginVertical: 8,
    alignSelf:'center'
  },
  cell: {
    flex:1,
    marginVertical: 8,
    marginHorizontal:0,
    alignSelf:'center'
  },
});
