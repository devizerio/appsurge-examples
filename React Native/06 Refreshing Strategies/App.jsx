import React from "react";
import {
  SafeAreaView,
  Text
} from "react-native";

import AppSurge, { useRefreshingStrategy } from "@appsurge/react-native";

AppSurge.initialize({ clientKey: "your-client-key" });

const App = () => {
  useRefreshingStrategy({
    onReturnFromBackground: true,
    onInitialRender: false,
    onIntervalInSeconds: 3600,
  });

  return (
    <SafeAreaView>
      <Text>Hello, World!</Text>
    </SafeAreaView>
  )
};

export default App;
