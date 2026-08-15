---
type: concept
title: "KimTools / Controls / Button"
description: "Kt-Button is a fully customizable button control for Modern winforms"
source: "https://docs.kimtoo.net/controls/kt-button/"
path: /controls/kt-button/
updated: 2026-08-15
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-15T15:07:40.300Z"
---
---
title: "KimTools / Controls / Button"
description: "Kt-Button is a fully customizable button control for Modern winforms"
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Button`
 A modern, fully customizable button control for WinForms, with built-in icon, gradient, and border support. 
::: callout tip
#### 🟣 PREMIUM
 This component is only available in the Premium version of KimTools. 
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-button-light](/assets/images/controls/kt-button/kt-button-light.jpg){ .light .snapshot} ![kt-button-dark](/assets/images/controls/kt-button/kt-button-dark.jpg){.dark .snapshot}
:::
 ## API `Reference`
 |          | RETURNS | DESCRIPTION |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush.md  | *Sets the progress color.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush.md  | *Sets the panel's border color.* |
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color.md  | *Sets the Foreground.* |
| ::: tag "IconColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color.md  | *Sets the Icon color.* |
| ::: tag "Pattern" icon:wrench | ::: tag "Kt-Pattern" color:#6B7C94 icon:check-check  | *Sets the Pattern.* |
| ::: tag "IconStroke" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8  | *Sets the Icon stroke.* |
| ::: tag "ImageAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the image that will be displayed on the control.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the text that will be displayed on the control.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| ::: tag "IconSize" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Icon size.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Border width.* |
| ::: tag "Icon" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon.* |
| ::: tag "Value" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Value.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *The cursor that appears when the pointer moves over the control.* |
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the border Margin.* |
| ::: tag "Padding" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Specifies the interior spacing of a control.* |

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
 ---

::: hero layout:split glow:true
## Solid `Color` | `KtColor` 
KtButton Background supports plain Solid Color or KtColor with or without opacity
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Get Started";
	
// Use % operator to apply transparency to Kt-Color
button.Background = Color.BlueViolet;   // Color
                                        // button.Background = KtColor.SUCCESS;     // KtColor
                                        // button.Background = KtColor.PRIMARY % 50; // With Opacity
                                        // button.Background = KtColor.FromHex("#1E90FF"); // Hex
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-background-light](/assets/images/controls/kt-button/solid-background-light.jpg){ .light .snapshot} ![solid-background-dark](/assets/images/controls/kt-button/solid-background-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![solid-background-light](/assets/images/controls/kt-button/solid-background-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![solid-background-dark](/assets/images/controls/kt-button/solid-background-dark.jpg){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Background`
Use KimTools Semantic theme colors to match the current global theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Upgrade to Pro";
	
// Background supports Kt-Color gradients with an optional angle
button.Background =
(
    startColor: KtColor.PRIMARY[50],
    stopColor: KtColor.SECONDARY[50],
    angle: 45 // optional (0-360)
);
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-background-light](/assets/images/controls/kt-button/gradient-background-light.jpg){ .light .snapshot} ![gradient-background-dark](/assets/images/controls/kt-button/gradient-background-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-light](/assets/images/controls/kt-button/gradient-background-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-dark](/assets/images/controls/kt-button/gradient-background-dark.jpg){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Outlined `Border`
Clear `Background` and set `Border` for a ghost/outline button.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Cancel";
	
// Clear Background and set Border for a ghost/outline style
button.Background = KtBrush.None;
button.Border = KtColor.PRIMARY;
button.BorderWidth = 2f;
```
== side
::: tabs
== tab "Auto" icon:app-window
![outlined-button-light](/assets/images/controls/kt-button/outlined-button-light.jpg){ .light .snapshot} ![outlined-button-dark](/assets/images/controls/kt-button/outlined-button-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![outlined-button-light](/assets/images/controls/kt-button/outlined-button-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![outlined-button-dark](/assets/images/controls/kt-button/outlined-button-dark.jpg){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `BorderRadius`
Set `BorderRadius` from `0` (square) to `1` (pill).
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Subscribe";
button.Background = KtColor.PRIMARY;
	
// BorderRadius runs 0 (square) .. 1 (fully pill-shaped)
button.BorderRadius = .99f;
```
== side
::: tabs
== tab "Auto" icon:app-window
![rounded-button-light](/assets/images/controls/kt-button/rounded-button-light.jpg){ .light .snapshot} ![rounded-button-dark](/assets/images/controls/kt-button/rounded-button-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![rounded-button-light](/assets/images/controls/kt-button/rounded-button-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![rounded-button-dark](/assets/images/controls/kt-button/rounded-button-dark.jpg){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Icon`
Set `Icon` to a Lucide icon name; `IconSize` and `IconStroke` control its rendering.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Download";
	
// Icon accepts a Lucide icon name; IconSize / IconStroke tune its rendering
button.Icon = "download";
button.IconSize = 18;
button.IconStroke = 2.5;
```
== side
::: tabs
== tab "Auto" icon:app-window
![icon-button-light](/assets/images/controls/kt-button/icon-button-light.jpg){ .light .snapshot} ![icon-button-dark](/assets/images/controls/kt-button/icon-button-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![icon-button-light](/assets/images/controls/kt-button/icon-button-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![icon-button-dark](/assets/images/controls/kt-button/icon-button-dark.jpg){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `TextAlign` + `ImageAlign`
Move the icon to the trailing edge by pairing `ImageAlign` with `TextAlign`.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Continue";
// button.Icon = "arrow-right";
	
// Reposition the icon and label independently
button.ImageAlign = ContentAlignment.MiddleRight;
button.TextAlign = ContentAlignment.MiddleLeft;
```
== side
::: tabs
== tab "Auto" icon:app-window
![text-icon-align-light](/assets/images/controls/kt-button/text-icon-align-light.jpg){ .light .snapshot} ![text-icon-align-dark](/assets/images/controls/kt-button/text-icon-align-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![text-icon-align-light](/assets/images/controls/kt-button/text-icon-align-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![text-icon-align-dark](/assets/images/controls/kt-button/text-icon-align-dark.jpg){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Foreground` + `IconColor`
Override the label and icon color independently of the current theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
var button = new KtButton();
button.Text = "Learn more";
button.Icon = "sparkles";
	
// Foreground and IconColor override the label/icon color independently of Background
button.Background = KtBrush.None;
button.Foreground = KtColor.PRIMARY;
button.IconColor = KtColor.PRIMARY;
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-foreground-light](/assets/images/controls/kt-button/custom-foreground-light.jpg){ .light .snapshot} ![custom-foreground-dark](/assets/images/controls/kt-button/custom-foreground-dark.jpg){.dark .snapshot}

== tab "Light" icon:sun
![custom-foreground-light](/assets/images/controls/kt-button/custom-foreground-light.jpg){  .snapshot}

== tab "Dark" icon:moon
![custom-foreground-dark](/assets/images/controls/kt-button/custom-foreground-dark.jpg){ .snapshot}

:::
:::
