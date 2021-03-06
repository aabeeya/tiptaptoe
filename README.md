# Pre-work - *tiptaptoe*

**tiptaptoe** is a tip calculator application for iOS.

Submitted by: **Aabeeya Salman**

Time spent: **5** hours spent in total

## User Stories

The following **required** functionality is complete:

* [✓] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [✓] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [✓] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [✓] Using locale-specific currency and currency thousands separators.
* [✓] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/2WLdDyJ.gif' title='Video Walkthrough' width='498' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Didn't quite make sense to have the bill amount _always_ be the first responder and save the amount in UserDefaults because it would always get overridden. Skipped that functionality.

Added functionality to split bill across people.

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** So far the platform has been ok. Still getting used to the control drag magic. 

An outlet is a way to connect a UI element in the Storyboard to a property in code. It allows you to access or manipulate that element from your code at runtime. An action is the callback for UI events that may occur in the app. That event could be any user interaction, and your code is executed when it occurs.

Looking at the source code for the Storyboard XML, they appear to be implemented by connecting a named code property or function to the id of a UI element.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**

Closures are reference types similar to classes. When two class instance properties hold a strong reference to each other, a strong reference cycle is created. 

Similarly when a closure is assigned to a property of a class instance, that property now contains a strong reference to that closure. When any reference to self is made from within the closure, a strong reference cycle is created.

## License

    Copyright 2017 Aabeeya Salman

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
