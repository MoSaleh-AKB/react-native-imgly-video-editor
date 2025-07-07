module.exports = {
  dependencies: {
    'react-native-videoeditorsdk': {
      platforms: {
        android: {
          sourceDir: '../node_modules/react-native-videoeditorsdk/android/',
          packageImportPath: 'ly.img.react_native.vesdk.RNVideoEditorSDKPackage',
        },
        ios: {
          podspecPath: '../node_modules/react-native-videoeditorsdk/ios/RNVideoEditorSDK.podspec',
        },
      },
    },
  },
};