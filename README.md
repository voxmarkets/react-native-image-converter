
# react-native-image-converter

Convert image files into different formats, as well as into their Base64 encoding, especially helpful for uploading image files saved via the camera.

## Getting Started

`$ npm install --save git+https://git@github.com/voxmarkets/react-native-image-converter`

### Mostly Automatic Installation

`$ react-native link react-native-image-converter`

### Manual Installation (for the adventurous)

#### iOS

1. In Xcode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-image-converter` and add `RNImageConverter.xcodeproj`
3. In Xcode, in the project navigator, select your project. Add `libRNImageConverter.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)

#### Android (coming soon!)

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNImageConverterPackage;` to the imports at the top of the file
  - Add `new RNImageConverterPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-image-converter'
  	project(':react-native-image-converter').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-image-converter/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
    compile project(':react-native-image-converter')
  	```

## Usage
```javascript
import RNImageConverter from 'react-native-image-converter';
```

### Get Image as PNG
```javascript
RNImageConverter.getPNG(myFile, (newFile) => {
  console.log(newFile);
  //4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsND...
});
```

### Get Image as JPEG
```javascript
RNImageConverter.getJPEG(myFile, (newFile) => {
  console.log(newFile);
  //4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgMCAgMDAwMEAwMEBQgFBQQEBQoHBwYIDAoMDAsKCwsND...
});
```
  
