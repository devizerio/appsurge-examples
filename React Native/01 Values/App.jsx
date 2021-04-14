import React from "react";
import { SafeAreaView, Text } from "react-native";

import AppSurge from "@appsurge/react-native";

const myStringSelector = AppSurge.createConfigSelector(
  (config) => config.myString, ""
);

const myNumberSelector = AppSurge.createConfigSelector(
  (config) => config.myNumber, 0
);

const myBooleanSelector = AppSurge.createConfigSelector(
  (config) => config.myBoolean, false
);

AppSurge.initialize({ clientKey: "your-client-key" });

const App = () => {
  const myString = AppSurge.useConfig(myStringSelector);
  const myNumber = AppSurge.useConfig(myStringSelector);
  const myBoolean = AppSurge.useConfig(myStringSelector);

  return (
    <SafeAreaView>
      <Text>myString value is { myString }</Text>
      <Text>myNumber value is { myNumber }</Text>
      <Text>myBoolean value is { myBoolean }</Text>
    </SafeAreaView>
  );
};

export default App;
