import React from "react";
import { Button, SafeAreaView, StyleSheet, TextInput,Text,  View } from "react-native";

const Form = () => {
  const [text, onChangeText] = React.useState("");
  const [dbData, setDbData] = React.useState(null);
  const [showResults, onShowResults] = React.useState(false);
  const rowTest=['Row 1'];

  const results =(
    // make call to DB to retrieve data
    // var StoreID:Number=+storeID;
    <Text>
      {rowTest}
    </Text>
  );

  const handlePress =()=>{
    //get results and add them to dbData
    onShowResults(true);
  };

  return (
    <SafeAreaView>
      <Text>Enter the store ID:</Text>
      <TextInput
        style={styles.input}
        onChangeText={(e)=>onChangeText(e)}
        value={text}
      />
        <Button title="Search" onPress={handlePress}></Button>
        {showResults && results}

    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  input: {
    height: 40,
    margin: 12,
    borderWidth: 1,
    padding: 10,
  },
});

export default Form;