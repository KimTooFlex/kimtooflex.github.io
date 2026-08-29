---
type: concept
title: "KimTools / Controls / Switch"
description: "A smooth, highly customizable toggle switch control for Modern WinForms supporting custom state styling and animations."
source: "https://kimtoo.net/controls/kt-switch/"
path: /controls/kt-switch/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T20:11:34.673Z"
---
---
title: "KimTools / Controls / Switch"
description: "A smooth, highly customizable toggle switch control for Modern WinForms supporting custom state styling and animations."
keywords: ["KimTools", "Controls", "KtSwitch", "Switch", "UserControl"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Switch`
A smooth, highly customizable toggle switch control for Modern WinForms supporting custom state styling and animations.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-switch-light](/assets/images/screenshots/kt-switch/kt-switch-light.png?v=639234525463254696){ .light .snapshot} ![kt-switch-dark](/assets/images/screenshots/kt-switch/kt-switch-dark.png?v=639234525463254696){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
## StateOn
| ::: tag "StateOn" icon:wrench | ::: tag "Kt-SwitchState" color:#6B7C94 icon:check-check  | *Sets the visual properties of the 'ON' toggle state.* |
| -------- | ------- | ----------- |
## StateOff
| ::: tag "StateOff" icon:wrench | ::: tag "Kt-SwitchState" color:#6B7C94 icon:check-check  | *Sets the visual properties of the 'OFF' toggle state.* |
| -------- | ------- | ----------- |
## BorderRadius
| ::: tag "BorderRadius" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| -------- | ------- | ----------- |
## BorderThickness
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border thickness.* |
| -------- | ------- | ----------- |
## Animation
| ::: tag "Animation" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the animation speed.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Customizing State Colors
Control the background, thumb, and border colors for active and inactive states independently using `StateOn` and `StateOff`.
```csharp "🔴 🟡 🟢"
var row = new Panel
{
    Width = 220,
    Height = 30,
    BackColor = Color.Transparent
};
	
var toggle = new KtSwitch
{
    Size = new Size(50, 24),
    Checked = true,
    StateOn = new KtSwitch.KtSwitchState
    {
        Bg = KtColor.SUCCESS,
        Thumb = KtColor.White,
        Border = KtColor.SUCCESS
    },
    StateOff = new KtSwitch.KtSwitchState
    {
        Bg = KtColor.NEUTRAL,
        Thumb = KtColor.White,
        Border = KtColor.NEUTRAL
    }
};
	
var label = new Label
{
    Text = "Success State Switch",
    AutoSize = true
};
	
row.Controls.Add(toggle);
row.Controls.Add(label);
	
toggle.Location = new Point(0, 3);
label.Location = new Point(toggle.Right + 10, 6);
```
== side
::: tabs
== tab "Auto" icon:app-window
![state-colors-light](/assets/images/screenshots/kt-switch/state-colors-light.png?v=639234525502765845){ .light .snapshot} ![state-colors-dark](/assets/images/screenshots/kt-switch/state-colors-dark.png?v=639234525502765845){.dark .snapshot}

== tab "Light" icon:sun
![state-colors-light](/assets/images/screenshots/kt-switch/state-colors-light.png?v=639234525502756807){  .snapshot}

== tab "Dark" icon:moon
![state-colors-dark](/assets/images/screenshots/kt-switch/state-colors-dark.png?v=639234525502756807){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Square & Custom Border Radii
Adjust overall border curvature with `BorderRadius` and thumb roundness with `BorderRadiusThumb` to create sleek rectangular toggle switches.
```csharp "🔴 🟡 🟢"
var row = new Panel
{
    Width = 220,
    Height = 30,
    BackColor = Color.Transparent
};
	
var toggle = new KtSwitch
{
    Size = new Size(52, 26),
    Checked = true,
    BorderRadius = 4,
    BorderRadiusThumb = 2,
    BorderThickness = 2,
    StateOn = new KtSwitch.KtSwitchState
    {
        Bg = KtColor.PRIMARY,
        Thumb = KtColor.White,
        Border = KtColor.PRIMARY
    }
};
	
var label = new Label
{
    Text = "Square Corner Style",
    AutoSize = true
};
	
row.Controls.Add(toggle);
row.Controls.Add(label);
	
toggle.Location = new Point(0, 2);
label.Location = new Point(toggle.Right + 10, 6);
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-radii-light](/assets/images/screenshots/kt-switch/custom-radii-light.png?v=639234525519699108){ .light .snapshot} ![custom-radii-dark](/assets/images/screenshots/kt-switch/custom-radii-dark.png?v=639234525519699108){.dark .snapshot}

== tab "Light" icon:sun
![custom-radii-light](/assets/images/screenshots/kt-switch/custom-radii-light.png?v=639234525519699108){  .snapshot}

== tab "Dark" icon:moon
![custom-radii-dark](/assets/images/screenshots/kt-switch/custom-radii-dark.png?v=639234525519699108){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Bg" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Bg.* |
| ::: tag "Thumb" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Thumb.* |
| ::: tag "StateOff" icon:wrench | ::: tag "Kt-SwitchState" color:#6B7C94 icon:check-check  | *Sets the visual properties of the 'OFF' toggle state.* |
| ::: tag "StateOn" icon:wrench | ::: tag "Kt-SwitchState" color:#6B7C94 icon:check-check  | *Sets the visual properties of the 'ON' toggle state.* |
| ::: tag "Checked" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the Toggle Switch has been checked.* |
| ::: tag "Animation" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the animation speed.* |
| ::: tag "ThumbMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the thumb's (inner circle) padding.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| ::: tag "BorderRadiusThumb" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius thumb.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border thickness.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *The cursor that appears when the pointer moves over the control.* |
