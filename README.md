# React Native IMG.LY Video Editor with Audio Recording

A complete React Native application featuring IMG.LY's professional Video Editor SDK with custom audio recording capabilities.

![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20Android-blue)
![React Native](https://img.shields.io/badge/React%20Native-0.72.6-green)
![License](https://img.shields.io/badge/license-MIT-orange)

## 🎥 Features

### Video Editing
- ✅ Professional video trimming and cutting
- ✅ 40+ color filters and effects
- ✅ Text overlays with custom fonts
- ✅ Stickers and graphics
- ✅ Color adjustments (brightness, contrast, saturation)
- ✅ Video transformations (rotate, crop, flip)
- ✅ High-quality video export

### Audio Recording
- 🎙️ Real-time audio recording
- 🎵 Multiple audio track support
- ▶️ Audio playback with time display
- 🗑️ Audio file management
- 📱 Cross-platform compatibility
- 🔊 High-quality AAC encoding

### User Experience
- 📱 Clean, intuitive interface
- 🔄 Loading states and progress indicators
- ⚠️ Comprehensive error handling
- 🔐 Smart permission management
- 💾 Automatic file saving

## 🚀 Quick Start Guide

### Step 1: Clone the Repository

```bash
git clone https://github.com/MoSaleh-AKB/react-native-imgly-video-editor.git
cd react-native-imgly-video-editor
```

### Step 2: Install Dependencies

```bash
npm install
```

### Step 3: Setup for Your Platform

#### For Android (with Android Studio):

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Open Android Studio:**
   - Open Android Studio
   - Click "Open an existing project"
   - Navigate to your project's `android` folder and open it
   - Let Gradle sync (this may take 5-10 minutes first time)

3. **Create Android SDK configuration:**
   - Create `android/local.properties` file:
   ```properties
   sdk.dir=/path/to/your/Android/Sdk
   ```
   
   **For different OS:**
   - **Windows:** `sdk.dir=C\\:\\Users\\YourUsername\\AppData\\Local\\Android\\Sdk`
   - **macOS:** `sdk.dir=/Users/YourUsername/Library/Android/sdk`
   - **Linux:** `sdk.dir=/home/YourUsername/Android/Sdk`

4. **Setup emulator:**
   - In Android Studio, click AVD Manager (phone icon in toolbar)
   - Create Virtual Device → Choose Pixel 6
   - Download system image (API 33 or higher)
   - Configure AVD with at least 4GB RAM
   - Start the emulator

#### For iOS (macOS only):

```bash
cd ios
pod install
cd ..
```

### Step 4: Run the App

#### Option A: Using React Native CLI (Recommended)

**Start Metro bundler:**
```bash
npx react-native start
```

**In a new terminal, run:**
```bash
# For Android
npx react-native run-android

# For iOS (macOS only)
npx react-native run-ios
```

#### Option B: Using Android Studio
1. Open Android Studio with your `android` folder
2. Click the green "Run" button
3. Select your emulator or connected device

#### Option C: Using Xcode (iOS)
1. Open `ios/VideoEditorSDK.xcworkspace` (not .xcodeproj!)
2. Select your target device
3. Press Cmd+R to build and run

## 📱 How to Use the App

### 1. **Launch and Permissions**
- Open the app
- Grant camera, microphone, and storage permissions when prompted

### 2. **Select Video**
- Tap "Select & Edit Video"
- Choose a video from your device gallery

### 3. **Record Audio (Optional)**
- The audio recording modal will appear
- Tap 🎤 Record to start recording
- Tap ⏹️ Stop to finish recording
- Use ▶️ to play back recordings
- Use 🗑️ to delete unwanted recordings
- Tap "Skip Audio" to proceed without recording
- Tap "Continue with Audio" to use your recordings

### 4. **Edit Video**
- The IMG.LY video editor will open
- Available tools:
  - **Trim:** Cut video segments
  - **Filters:** Apply color effects
  - **Text:** Add text overlays
  - **Stickers:** Insert graphics
  - **Audio:** Add your recorded audio or music
  - **Adjustments:** Modify colors and exposure
  - **Transform:** Rotate, crop, flip

### 5. **Export**
- Tap the export button in the editor
- Your edited video will be saved to device storage
- The app will show the save location

## 🔧 Troubleshooting

### Common Android Issues:

**"SDK location not found":**
```bash
# Make sure android/local.properties exists with correct SDK path
echo "sdk.dir=/path/to/your/Android/Sdk" > android/local.properties
```

**Build errors:**
```bash
cd android
./gradlew clean
cd ..
npx react-native run-android
```

**Emulator is slow:**
- Allocate more RAM (6-8GB recommended)
- Enable hardware acceleration
- Use x86_64 architecture instead of ARM

**App crashes on startup:**
- Check that all permissions are granted
- Restart the emulator
- Clear app data

### Common iOS Issues:

**Pod install fails:**
```bash
cd ios
pod deintegrate
pod clean
pod install
cd ..
```

**Signing errors:**
- Open Xcode
- Select your project → Signing & Capabilities
- Choose your development team
- Use a unique bundle identifier

### General Issues:

**Metro bundler errors:**
```bash
npx react-native start --reset-cache
```

**Dependencies not found:**
```bash
rm -rf node_modules package-lock.json
npm install
```

**Audio recording not working:**
- Ensure microphone permissions are granted
- Test on a real device (emulator audio can be unreliable)
- Check that no other apps are using microphone

**Video editor crashes:**
- Ensure video file is not corrupted
- Try with a smaller video file first
- Check available device storage

## 🔑 IMG.LY License

### Development (Free)
- The app works with watermarks for testing
- No license key needed initially

### Production
1. **Get license from IMG.LY:**
   - Visit: https://img.ly/pricing
   - Contact sales team
   - Receive license key

2. **Add license to App.js:**
   ```javascript
   const configuration = {
     license: 'YOUR_LICENSE_KEY_HERE',
     // ... rest of configuration
   };
   ```

## 🔄 Development Workflow

### Making Changes:
1. Edit code in your preferred editor
2. Save files - Metro will auto-reload
3. For native changes, rebuild the app

### Adding Features:
- **Video filters:** Add to `filters` array in App.js
- **Text styles:** Add to `textDesigns` array  
- **Audio effects:** Extend recording functionality

## 📋 Requirements

### Development Environment:
- **Node.js:** v16 or higher
- **npm:** v8 or higher
- **React Native CLI:** Latest
- **Java:** JDK 11 or higher (for Android)

### Android:
- **Android Studio:** Latest version
- **Android SDK:** API 33 or higher
- **Emulator:** x86_64 with 4GB+ RAM

### iOS (macOS only):
- **Xcode:** Latest version
- **iOS Simulator:** iOS 14 or higher
- **CocoaPods:** Latest version

### Device Requirements:
- **Android:** API 21+ (Android 5.0+)
- **iOS:** iOS 14.0+
- **Storage:** 2GB+ free space
- **RAM:** 4GB+ recommended

## 🚀 Performance Tips

### For Better Performance:
- Use real devices for testing audio features
- Allocate maximum RAM to emulators
- Close other applications while developing
- Use SSD storage for faster builds

### For Production:
- Optimize video file sizes
- Implement proper error boundaries
- Add analytics for usage tracking
- Consider cloud storage for exports

## 📚 Next Steps

1. **Customize UI** to match your brand
2. **Add cloud storage** for video exports  
3. **Implement social sharing**
4. **Add user accounts and libraries**
5. **Integrate analytics**

## 📞 Support

- 🐛 **Issues:** [GitHub Issues](https://github.com/MoSaleh-AKB/react-native-imgly-video-editor/issues)
- 💬 **Discussions:** [GitHub Discussions](https://github.com/MoSaleh-AKB/react-native-imgly-video-editor/discussions)
- 📖 **IMG.LY Docs:** [Official Documentation](https://docs.videoeditorsdk.com/react-native)

## 🙏 Acknowledgments

- [IMG.LY](https://img.ly) for the professional Video Editor SDK
- [React Native Community](https://reactnative.dev) for the amazing framework

---

**🎉 You're all set! Enjoy creating amazing videos with custom audio! 🎥🎵**