import React from 'react';
import { Text, View } from 'react-native';

const Table_Row = (props) => {
    return (
      <View style={{alignItems: 'center', top: 50}}>
          <Text>{props.data}!</Text>
      </View>
    );
}

export default Table_Row