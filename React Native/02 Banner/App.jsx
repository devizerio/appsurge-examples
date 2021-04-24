import React from 'react'
import { Linking, SafeAreaView, Text, TouchableWithoutFeedback } from 'react-native'

import AppSurge from '@appsurge/react-native'

const bannerTextSelector = AppSurge.createConfigSelector(config => config.banner.text, 'default text')

const bannerURLSelector = AppSurge.createConfigSelector(config => config.banner.url, 'https://default.com')

const showBannerSelector = AppSurge.createConfigSelector(config => config.banner.show, false)

AppSurge.initialize({ clientKey: 'your-client-key' })

const App = () => {
  const bannerText = AppSurge.useConfig(bannerTextSelector)
  const bannerURL = AppSurge.useConfig(bannerURLSelector)
  const showBanner = AppSurge.useConfig(showBannerSelector)

  const openURL = () => {
    Linking.openURL(bannerURL)
  }

  return (
    <SafeAreaView>
      {showBanner ? (
        <TouchableWithoutFeedback onPress={openURL}>
          <Text>{bannerText}</Text>
        </TouchableWithoutFeedback>
      ) : null}
    </SafeAreaView>
  )
}

export default App
