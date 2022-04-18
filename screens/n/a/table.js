import React from 'react';
import { Text, View } from 'react-native';
import Table_Row from "./table_row"

export default Table = (props) => {

    const litOfRows=(array)=>{
        array.map((element)=>{
            console.log(element);
            return <Table_Row data={element}/>});
    }

    return (
      <View style={{alignItems: 'center', top: 50}}>
          {litOfRows(props.array)}
      </View>
    );
}