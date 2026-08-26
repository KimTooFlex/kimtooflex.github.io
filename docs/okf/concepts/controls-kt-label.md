---
type: concept
title: "KimTools / Controls / Label"
description: "KtLabel is a theme-aware label control for Modern WinForms with automatic contrast management"
source: "https://kimtoo.net/controls/kt-label/"
path: /controls/kt-label/
updated: 2026-08-26
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-26T09:39:06.741Z"
---
---
title: "KimTools / Controls / Label"
description: "KtLabel is a theme-aware label control for Modern WinForms with automatic contrast management"
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Label`
A theme-aware label control for Modern WinForms with intelligent foreground contrast generation and KtColor palette integration.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-label-light](/assets/images/screenshots/kt-label/kt-label-light.png?v=639233400140180660){ .light .snapshot} ![kt-label-dark](/assets/images/screenshots/kt-label/kt-label-dark.png?v=639233400140180660){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
## Color
| ::: tag "Color" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Color.* |
| -------- | ------- | ----------- |
## Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Background.* |
| -------- | ------- | ----------- |
## Align
| ::: tag "Align" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *Sets the Align.* |
| -------- | ------- | ----------- |
## Auto
| ::: tag "Auto" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Auto.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Palette Color Variants
Use the `Color` property to set theme-aware text colors. Foreground contrast and shade variations automatically adapt based on font weight and active theme settings.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 280,
    Height = 110,
    BackColor = Color.Transparent
};
	
var primaryLabel = new KtLabel
{
    Text = "Primary Theme Text",
    Color = KtColor.PRIMARY,
    Auto = true
};
	
var successLabel = new KtLabel
{
    Text = "Success Status Text",
    Color = KtColor.SUCCESS,
    Auto = true
};
	
var errorLabel = new KtLabel
{
    Text = "Error Alert Text",
    Color = KtColor.ERROR,
    Auto = true
};
	
panel.Controls.Add(primaryLabel);
panel.Controls.Add(successLabel);
panel.Controls.Add(errorLabel);
	
primaryLabel.Location = new Point(10, 10);
successLabel.Location = new Point(10, 42);
errorLabel.Location = new Point(10, 74);
```
== side
::: tabs
== tab "Auto" icon:app-window
![label-colors-light](/assets/images/screenshots/kt-label/label-colors-light.png?v=639233400163309331){ .light .snapshot} ![label-colors-dark](/assets/images/screenshots/kt-label/label-colors-dark.png?v=639233400163309331){.dark .snapshot}

== tab "Light" icon:sun
![label-colors-light](/assets/images/screenshots/kt-label/label-colors-light.png?v=639233400163309331){  .snapshot}

== tab "Dark" icon:moon
![label-colors-dark](/assets/images/screenshots/kt-label/label-colors-dark.png?v=639233400163309331){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Text Alignment
Set `Auto = false` to define a custom control size, then use `Align` to position text (`ContentAlignment`) within the bounds.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 280,
    Height = 60,
    BackColor = Color.Transparent
};
	
var alignedLabel = new KtLabel
{
    Text = "Centered Text Alignment",
    Color = KtColor.PRIMARY,
    Auto = false,
    Size = new Size(260, 40),
    Align = ContentAlignment.MiddleCenter
};
	
panel.Controls.Add(alignedLabel);
alignedLabel.Location = new Point(10, 10);
```
== side
::: tabs
== tab "Auto" icon:app-window
![label-alignment-light](/assets/images/screenshots/kt-label/label-alignment-light.png?v=639233400173819596){ .light .snapshot} ![label-alignment-dark](/assets/images/screenshots/kt-label/label-alignment-dark.png?v=639233400173819596){.dark .snapshot}

== tab "Light" icon:sun
![label-alignment-light](/assets/images/screenshots/kt-label/label-alignment-light.png?v=639233400173819596){  .snapshot}

== tab "Dark" icon:moon
![label-alignment-dark](/assets/images/screenshots/kt-label/label-alignment-dark.png?v=639233400173819596){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Color" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Color.* |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Background.* |
| ::: tag "Auto" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Auto.* |
| ::: tag "Align" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *Sets the Align.* |
| ::: tag "Text" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *The text associated with the control.* |
