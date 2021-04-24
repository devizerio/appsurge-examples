import React from 'react'
import { Linking, SafeAreaView, Text, TouchableWithoutFeedback } from 'react-native'

import AppSurge from '@appsurge/react-native'

AppSurge.initialize({ clientKey: 'your-client-key' })

const App = () => {
  const config = AppSurge.useConfig()

  const openURL = () => {
    Linking.openURL(config?.banner?.url ?? 'https://fallback.com')
  }

  return (
    <SafeAreaView>
      {config?.banner?.show ?? false ? (
        <TouchableWithoutFeedback onPress={openURL}>
          <Text>{config?.banner?.text ?? 'fallback text'}</Text>
        </TouchableWithoutFeedback>
      ) : null}
    </SafeAreaView>
  )
}

export default App
