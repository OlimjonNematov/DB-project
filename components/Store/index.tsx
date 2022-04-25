import { StyleSheet, ScrollView, Text, View, FlatList, TextInput } from 'react-native';
import Axios from 'axios';
import { useEffect, useState } from 'react'; 
import { SafeAreaView } from 'react-native-safe-area-context';
import {Button, Divider, Menu, Provider } from 'react-native-paper';


type Store = {
    store_id:number;
    street:string;
    zipcode:number;
    city:string;
    state:string;
    manager_assigned: number;
    store_size:number;
}
type Manager = {
    manager_id:number,
    first_name:string,
    last_name:string,
    street:string,
    zipcode:number,
    city:string,
    state:string,
    start_date:string,
    end_date:string,
    assigned_store_id:number,
    salary:number,
    level:number,
    Record_status:number,
    System_creation_date:string,
    System_update_date:string
}

export default function TableDisplay() {
    //
    const [address, setAddress] = useState("");
    const [size, setSize] = useState<number>();
    
    const [Stores, setStores] = useState([{
        store_id:0,
        street:"",
        zipcode:0,
        city:"",
        state:"",
        manager_assigned:0,
        store_size:0
    }]);
    const [currentStore, setCurrentStore]= useState<Store>();
    const [managers, setManagers] = useState([]);
    const [currentManager, setCurrentManager] = useState<Manager>();
    
    useEffect(()=>{
        Axios.get("http://localhost:19007/api/get/store").then((stores)=>{
            setStores(state=>(stores.data));
        });
        Axios.get("http://localhost:19007/api/get/manager").then((managers)=>{
            setManagers(state=>(managers.data))
        });
    },[]);

    // menu
    const [visible, setVisible] = useState(false);
    const [showBody, setShowBody] = useState(false)
    const openMenu = () => setVisible(true);  
    const closeMenu = (store:Store) => {
        setVisible(false)
        setCurrentStore(store);
        setAddress(`${store.street}, ${store.city}, ${store.state}, ${store.zipcode}`);
        setSize(store.store_size);
        setShowBody(true)
        const storeManagerID = store.manager_assigned;
        setCurrentManager(state=>managers.find(e=>e.manager_id===storeManagerID))
    };
    
    const menuItems=Stores.map(store=> {
        return <Menu.Item key={store.store_id} onPress={()=>closeMenu(store)} title={store.street} />
    });
    
    const storeInfo=(
        <View style={styles.container}>
            <Text style={styles.title}>Store</Text>

            {/* address */}
            <View style={styles.row}>
                <Text style={styles.cell}>Address:</Text>
                <Text style={styles.cell}>{address}</Text>
            </View>

            {/* Size */}
            <View style={styles.row}>
                <Text style={styles.cell}>Store Size:</Text>
                <Text style={styles.cell}>{size}</Text>
            </View>
            
        </View>
    );
        console.log(currentManager);
    const managerInfo=(
        <View style={styles.container}>
            <Text style={styles.title}>Manager</Text>

        {/* name and address */}
            <View style={styles.row}>
                <Text style={styles.cell}>{`${currentManager?.first_name} ${currentManager?.last_name}`}</Text>
                <Text style={styles.cell}>{`${currentManager?.street}, ${currentManager?.city}, ${currentManager?.state}, ${currentManager?.zipcode}`}</Text>
            </View>
        
        {/* address */}
        <View style={styles.row}>
                <Text style={styles.cell}>Salary:</Text>
                <Text style={styles.cell}>${currentManager?.salary}</Text>
            </View>
        
        {/* address */}
        <View style={styles.row}>
                <Text style={styles.cell}>Level:</Text>
                <Text style={styles.cell}>{currentManager?.level}</Text>
            </View>

        </View>
    );
    
    return (
    <SafeAreaView>
        <ScrollView>
            <Provider>
                <Menu
                    style={styles.menu}
                    visible={visible}
                    anchor={<Button style={{paddingTop:20}}onPress={openMenu}>Select store</Button>}
                    >
                        {menuItems}                
                </Menu>
            </Provider>
            {showBody && <View>

                {!visible && storeInfo}
                <Divider></Divider>
                {!visible && managerInfo}
            </View>}
        </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
    container: {
        flex:1,
        marginVertical: 8,
        marginHorizontal:0,
        alignSelf:'center'
    },
    cell:{
        flex:1
    },
    menu:{
        marginTop:20,
        alignSelf:'center'
    },
    row:{
        flex:2,
        flexDirection:'row',
        marginVertical:20,
        paddingBottom:20
    },
    title: {
        marginVertical:20,
      fontSize: 20,
      fontWeight: 'bold',
    },
});
