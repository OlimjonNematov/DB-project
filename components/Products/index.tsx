import { StyleSheet, ScrollView, Button, Text, View, FlatList, TextInput } from 'react-native';
import Axios from 'axios';
import { useEffect, useState } from 'react';
import Row from './Table-row';
import { SafeAreaView } from 'react-native-safe-area-context';

type Product = {
    name: string;
    purchase_price: number;
    sales_price:number;
    product_id: number;
}

export default function TableDisplay() {
    const [productList, setProductList]= useState([{
        product_id:0, 
        name:"", 
        purchase_price:0, 
        sales_price:0 
    }]);
    const [Size, setSize] = useState(2000);
    const [name, setName]= useState("");
    const [purchase_price, setPurchasePrice]= useState(0.0);
    const [sales_price, setSalesPrice]= useState(0.0);
    
    useEffect(()=>{
        Axios.get('http://localhost:19007/api/get/products').then((products)=>{
        setProductList(state=>products.data)});
        setSize(state=>Size+productList.length);
    },[]);

    const onAdd=()=>{
        const id= Math.floor(Math.random()*1000 +1000);
        Axios.post('http://localhost:19007/api/post/products',{
            name: name,
            product_id: id,
            purchase_price: purchase_price,
            sales_price: sales_price,
            start_date: null,
            end_date:null
        }).then(()=>alert(`Succesfully added ${name}`));
        setName("");
        setPurchasePrice(0);
        setSalesPrice(0);
    };

    const headers=(<View style={styles.headerContainer}>
        <View style={styles.firstCell}><Text>Item</Text></View>
        <View style={styles.cell}><Text>Purchase</Text></View>
        <View style={styles.cell}><Text>Sales</Text></View>
        <View style={styles.cell}><Text>End</Text></View>    
    </View>);

    const addProduct=(<View style={styles.addContainer}>
        <View style={styles.firstCell}><TextInput placeholder='Edit' value={name} onChangeText={setName}/></View>
        <View style={styles.cell}><TextInput placeholder='Edit' keyboardType='numeric' value={purchase_price} onChangeText={setPurchasePrice}/></View>
        <View style={styles.cell}><TextInput placeholder='Edit' keyboardType='numeric'value={sales_price} onChangeText={setSalesPrice}/></View>
        <View style={styles.cell}><Button color={"green"} title='+' onPress={onAdd}/></View>    
    </View>);

    return (
    <SafeAreaView>
        <ScrollView>
            {headers}
            {addProduct}
            {productList.map((Item)=>{
                return <Row 
                    key={Item.product_id}
                    product_id={Item.product_id}
                    name={Item.name}
                    purchase_price={Item.purchase_price}
                    sales_price={Item.sales_price}
                />
            })}
        </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
    headerContainer: {
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
        flexDirection:'row',
        paddingHorizontal:20,  
        marginBottom:20,
        backgroundColor:'lightblue'
      },
      addContainer:{
        alignItems: 'center',
        justifyContent: 'center',
        flexDirection:'row',
        paddingHorizontal:20,
        marginBottom:20,
        backgroundColor:'lightgreen'
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
