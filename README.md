
# react-native-zendesk-chat

## Getting started

`$ npm install react-native-zendesk-chat --save`

### Mostly automatic installation

`$ react-native link react-native-zendesk-chat`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-zendesk-chat` and add `RNZendeskChat.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNZendeskChat.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNZendeskChatPackage;` to the imports at the top of the file
  - Add `new RNZendeskChatPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-zendesk-chat'
  	project(':react-native-zendesk-chat').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-zendesk-chat/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-zendesk-chat')
  	```


## Usage
```javascript
import RNZendeskChat from 'react-native-zendesk-chat';

// TODO: What to do with the module?
RNZendeskChat;
```
  