import React, { useEffect, useState } from "react";
import {
  Button,
  SafeAreaView,
  Text,
} from "react-native";

import AppSurge from "@appsurge/react-native";

AppSurge.initialize({ clientKey: "your-client-key" });

const App = () => {
  const [pizzaCount, setPizzaCount] = useState(0)

  useEffect(() => {
    AppSurge.setAttribute("pizzaCount", pizzaCount)
  }, [pizzaCount])

  return (
    <SafeAreaView style={{ alignItems: "center" }}>
      <Button
        title="+"
        onPress={() => setPizzaCount(pizzaCount + 1)}
      />
      <Text>{pizzaCount}</Text>
      <Button
        title="-"
        onPress={() => setPizzaCount(pizzaCount - 1)}
        disabled={pizzaCount == 0}
      />
    </SafeAreaView>
  );
};

export default App;
