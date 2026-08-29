---
type: concept
title: "KimTools / Controls / Date"
description: "A modern, highly customizable Date Picker control for WinForms supporting custom icons, border radius, theme color styling, and alignment modes."
source: "https://kimtoo.net/controls/kt-date/"
path: /controls/kt-date/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:58:36.778Z"
---
---
title: "KimTools / Controls / Date"
description: "A modern, highly customizable Date Picker control for WinForms supporting custom icons, border radius, theme color styling, and alignment modes."
keywords: ["KimTools", "Controls", "KtDate", "Date", "DateTimePicker"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Date`
A modern, highly customizable Date Picker control for WinForms supporting custom icons, border radius, theme color styling, and alignment modes.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-date-light](/assets/images/screenshots/kt-date/kt-date-light.png?v=639234522433182833){ .light .snapshot} ![kt-date-dark](/assets/images/screenshots/kt-date/kt-date-dark.png?v=639234522433182833){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Icon & Text Alignment
Configure `IconAlign` to place the calendar icon on the left or right side of the picker while automatically syncing text alignment.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 300,
    Height = 110,
    BackColor = Color.Transparent
};
	
var dateLeft = new KtDate
{
    Width = 280,
    Height = 40,
    IconAlign = HorizontalAlignment.Left,
    Border = KtColor.INFO,
    BorderRadius = 6f
};
	
var dateRight = new KtDate
{
    Width = 280,
    Height = 40,
    IconAlign = HorizontalAlignment.Right,
    Border = KtColor.PRIMARY,
    BorderRadius = 6f
};
	
panel.Controls.Add(dateLeft);
panel.Controls.Add(dateRight);
	
dateLeft.Location = new Point(10, 10);
dateRight.Location = new Point(10, 60);
```
== side
::: tabs
== tab "Auto" icon:app-window
![date-icon-alignments-light](/assets/images/screenshots/kt-date/date-icon-alignments-light.png?v=639234522456069446){ .light .snapshot} ![date-icon-alignments-dark](/assets/images/screenshots/kt-date/date-icon-alignments-dark.png?v=639234522456069446){.dark .snapshot}

== tab "Light" icon:sun
![date-icon-alignments-light](/assets/images/screenshots/kt-date/date-icon-alignments-light.png?v=639234522456069446){  .snapshot}

== tab "Dark" icon:moon
![date-icon-alignments-dark](/assets/images/screenshots/kt-date/date-icon-alignments-dark.png?v=639234522456069446){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient Backgrounds (`KtBrush` Expressions)
Leverage implicit tuple conversions `(start, stop, angle)` and `KtColor` opacity modifiers (`%`) to easily assign smooth linear gradients and subtle background surfaces.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 300,
    Height = 110,
    BackColor = Color.Transparent
};
	
// Linear Gradient Background created using a 3-tuple (StartColor, StopColor, Angle)
var tupleGradientPicker = new KtDate
{
    Width = 280,
    Height = 40,
    Border = KtColor.PRIMARY,
    BorderRadius = 8f,
    TextColor = KtColor.White,
    IconColor = KtColor.White,
    Background = (KtColor.PRIMARY, KtColor.ACCENT, 45) // Implicit 3-tuple conversion
};
	
// Glassmorphic/Semi-Transparent Gradient with KtColor Opacity Modifiers (%)
var subtleGradientPicker = new KtDate
{
    Width = 280,
    Height = 40,
    Border = KtColor.SUCCESS,
    BorderRadius = 8f,
    TextColor = KtColor.SUCCESS,
    IconColor = KtColor.SUCCESS,
    Background = (KtColor.SUCCESS % 20, KtColor.INFO % 20) // Implicit 2-tuple conversion
};
	
panel.Controls.Add(tupleGradientPicker);
panel.Controls.Add(subtleGradientPicker);
	
tupleGradientPicker.Location = new Point(10, 10);
subtleGradientPicker.Location = new Point(10, 60);
```
== side
::: tabs
== tab "Auto" icon:app-window
![date-gradient-background-light](/assets/images/screenshots/kt-date/date-gradient-background-light.png?v=639234522467304976){ .light .snapshot} ![date-gradient-background-dark](/assets/images/screenshots/kt-date/date-gradient-background-dark.png?v=639234522467304976){.dark .snapshot}

== tab "Light" icon:sun
![date-gradient-background-light](/assets/images/screenshots/kt-date/date-gradient-background-light.png?v=639234522467304976){  .snapshot}

== tab "Dark" icon:moon
![date-gradient-background-dark](/assets/images/screenshots/kt-date/date-gradient-background-dark.png?v=639234522467304976){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Display Week Numbers
Enable `DisplayWeekNumbers = true` to inject week numbers into the drop-down calendar view.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 300,
    Height = 60,
    BackColor = Color.Transparent
};
	
var datePicker = new KtDate
{
    Width = 280,
    Height = 40,
    DisplayWeekNumbers = true,
    Border = KtColor.SUCCESS,
    BorderRadius = 8f
};
	
panel.Controls.Add(datePicker);
datePicker.Location = new Point(10, 10);
```
== side
::: tabs
== tab "Auto" icon:app-window
![date-week-numbers-light](/assets/images/screenshots/kt-date/date-week-numbers-light.png?v=639234522478182103){ .light .snapshot} ![date-week-numbers-dark](/assets/images/screenshots/kt-date/date-week-numbers-dark.png?v=639234522478182103){.dark .snapshot}

== tab "Light" icon:sun
![date-week-numbers-light](/assets/images/screenshots/kt-date/date-week-numbers-light.png?v=639234522478182103){  .snapshot}

== tab "Dark" icon:moon
![date-week-numbers-dark](/assets/images/screenshots/kt-date/date-week-numbers-dark.png?v=639234522478182103){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the indicator icon.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the border/background color.* |
| ::: tag "IconColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the date picker icon color.* |
| ::: tag "TextColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the foreground color.* |
| ::: tag "DisplayWeekNumbers" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the week numbers will be displayed.* |
| ::: tag "Icon" icon:wrench | ::: tag "Image" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.image?view=netframework-4.8  | *Sets the date picker icon.* |
| ::: tag "Height" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets minimum height of the date picker.* |
| ::: tag "TextMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the left text margin.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the border thickness.* |
| ::: tag "IconAlign" icon:wrench | ::: tag "HorizontalAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.horizontalalignment?view=netframework-4.8  | *Sets the indicator location.* |
