import React from 'react'
import { Button, SafeAreaView } from 'react-native'

import AppSurge from '@appsurge/react-native'

AppSurge.initialize({ clientKey: 'your-client-key' })

const App = () => (
  <SafeAreaView>
    <Button title="Enable Experimental Features" onPress={() => AppSurge.addTag('opted_in_for_experimental_features')} />
    <Button title="Disable Experimental Features" onPress={() => AppSurge.removeTag('opted_in_for_experimental_features')} />
  </SafeAreaView>
)

export default App
