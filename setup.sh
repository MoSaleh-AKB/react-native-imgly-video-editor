#!/bin/bash

# React Native IMG.LY Video Editor Setup Script
echo "🚀 Setting up React Native IMG.LY Video Editor..."

# Install dependencies
echo "📦 Installing dependencies..."
npm install react-native-videoeditorsdk react-native-image-picker react-native-audio-recorder-player react-native-fs

# iOS setup
echo "🍎 Setting up iOS..."
if [ -d "ios" ]; then
    cd ios && pod install && cd ..
    echo "✅ iOS pods installed"
fi

# Android setup
echo "🤖 Setting up Android..."
echo "⚠️  Please ensure you have Android Studio installed and configured"
echo "⚠️  Update android/local.properties with your SDK path"

echo "🎉 Setup complete! You can now run:"
echo "  npx react-native run-android"
echo "  npx react-native run-ios"