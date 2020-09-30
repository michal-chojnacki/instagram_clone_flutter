# instagram_clone
![](https://circleci.com/gh/michal-chojnacki/instagram_clone_flutter.svg?style=svg)

InstagramClone is an app which enables users to share their photos with others. The users can also follow shared content by other users and like it through clicking on the heart button. It's hugely inspired by Instagram as the name suggests.

The purpose of implementation this app was to educate myself about app development in Flutter and backend in Ruby on Rails. Because that I wrote it in my free time, it might contains little bugs like lacking progress indicators in some places or the screens not being refreshed when coming back to them. Besides of this type of details it should work as expected. At least there are no major issues I know about. :)

## APK
APK of the app is available here: https://github.com/michal-chojnacki/instagram_clone_flutter/releases/latest/download/app-release.apk

## architecture
App was written with the clean architecture approach, with frequent usage of BLoC architecture. Unfortuantely because of the lack of time, code formatting might be not perfect in some places. 

## tests
The same issue is the reason why app code contains only few unit tests. Some of them was written for bloc and some for use case class. However other tests would look like similarly to the written ones.

## other conclusions
The implementation was great opportunity to learn about Flutter implemtation because on every day basis I implement Android apps using native SDK. I am satisfied with final shape of the code taking into account the circumstances of the implementation. However I do not rule out that on the next Flutter app implementation I'd change some architecture decisions. It's good thing because learned lessons was one of the goal of the implementation.

If you're reading this thanks for your time. You can contact me via michal.r.chojnacki@gmail.com
