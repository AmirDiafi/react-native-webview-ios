import * as React from 'react';
import { Dimensions, StyleSheet, Text, View } from 'react-native';
import { WebView } from 'react-native-webview-ios';

export default function App() {
  return (
    <View style={styles.container}>
      <Text>WebView</Text>
      <WebView style={styles.box} url="https://www.youtube.com/" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: Dimensions.get('window').width,
    height: 700,
    marginVertical: 20,
  },
});
