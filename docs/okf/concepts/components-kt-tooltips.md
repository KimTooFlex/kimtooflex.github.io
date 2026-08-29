---
type: concept
title: "KimTools / Components / Tooltips"
description: "Provides enhanced ToolTips with rich customization including icons, HTML content, fade animations, auto-close timing, shadow effects, and extender provider support for associating tips with any control."
source: "https://kimtoo.net/components/kt-tooltips/"
path: /components/kt-tooltips/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:52:42.464Z"
---
---
title: "KimTools / Components / Tooltips"
description: "Provides enhanced ToolTips with rich customization including icons, HTML content, fade animations, auto-close timing, shadow effects, and extender provider support for associating tips with any control."
keywords: ["KimTools", "Components", "KtTooltips", "Tooltips", "Component"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Tooltips`
Provides enhanced ToolTips with rich customization including icons, HTML content, fade animations, auto-close timing, shadow effects, and extender provider support for associating tips with any control.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-tooltips-light](/assets/images/screenshots/kt-tooltips/kt-tooltips-light.png?v=639235548653844470){ .light .snapshot} ![kt-tooltips-dark](/assets/images/screenshots/kt-tooltips/kt-tooltips-dark.png?v=639235548653844470){.dark .snapshot}
:::
<!-- -->
## Icon & Title Support
- Enable `ShowIcons` and associate an icon via `SetToolTipIcon(control, image)`. 
- Use the `Show(control, text, title, icon, location)` overload to display a tooltip with an icon programmatically. 
- Icons render at 23×23 px with configurable `IconMargin`.
```csharp "🔴 🟡 🟢"
var label = new KtLabel
{
    Text = "Keyboard Shortcut",
    Color = KtColor.CONTENT,
    Font = new Font("Segoe UI", 10F, FontStyle.Regular),
    AutoSize = true,
    Margin = new Padding(10)
};
	
var tooltip = new KtTooltips();
tooltip.ShowIcons = true;
tooltip.SetToolTip(label, "Press Ctrl+S to save instantly without opening the menu.");
```
## Custom Styling
- Override `Background`, `Foreground`, and `Border` colors. 
- Toggle `ShowShadows`, `ShowBorders`, and `AllowFading` independently. 
- Adjust animation speeds via `EntryAnimationSpeed` (default 350 ms) and `ExitAnimationSpeed` (default 200 ms).
```csharp "🔴 🟡 🟢"
var label = new KtLabel
{
    Text = @"Custom Styled Target",
    Color = KtColor.CONTENT,
    Font = new Font("Segoe UI", 10F, FontStyle.Regular),
    Auto = true,
    Margin = new Padding(10)
};
	
var tooltip = new KtTooltips();
tooltip.Background = KtColor.BASE_2;
tooltip.Border = KtColor.PRIMARY;
tooltip.ShowShadows = true;
tooltip.ShowBorders = true;
tooltip.AllowFading = true;
tooltip.SetToolTip(label, "This tooltip uses a primary accent border and fade animation.");
```
## Extender Provider Pattern
- `KtTooltips` implements `IExtenderProvider`. Call `SetToolTip(control, text)` for each target. 
- The component auto-attaches hover/leave/click events.
 - Call `Show(control, text)` programmatically to display the tooltip without waiting for hover.
```csharp "🔴 🟡 🟢"
var label1 = new KtLabel
{
    Text = "Submit",
    Color = KtColor.CONTENT,
    Font = new Font("Segoe UI", 10F, FontStyle.Regular),
    AutoSize = true,
    Margin = new Padding(10)
};
	
var label2 = new KtLabel
{
    Text = "Cancel",
    Color = KtColor.CONTENT,
    Font = new Font("Segoe UI", 10F, FontStyle.Regular),
    AutoSize = true,
    Margin = new Padding(10)
};
	
var tooltip = new KtTooltips();
tooltip.SetToolTip(label1, "Click to submit the form.");
tooltip.SetToolTip(label2, "Click to discard changes and close.");
```
## Programmatic Display
- Call `Show(control, text)` to display a tooltip immediately without user interaction. 
- Control auto-close with `AllowAutoClose` and `AutoCloseDuration`. 
- Set `InitialDelay = 0` to suppress the hover delay when mixing programmatic and automatic triggers.
```csharp "🔴 🟡 🟢"
var label = new KtLabel
{
    Text = "Programmatic Trigger",
    Color = KtColor.CONTENT,
    Font = new Font("Segoe UI", 10F, FontStyle.Regular),
    AutoSize = true,
    Margin = new Padding(10)
};
	
var tooltip = new KtTooltips();
tooltip.AllowAutoClose = true;
tooltip.AutoCloseDuration = 3000;
tooltip.InitialDelay = 0;
tooltip.SetToolTip(label, "This tooltip is shown via code, not hover.");
	
// Example of programmatic usage:
// tooltip.Show(label, "Saved!");
```
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Background.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Border.* |
| ::: tag "Active" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Determines if the ToolTip is active. Tooltips will only appear if this property is set to true.* |
| ::: tag "ShowAlways" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Determines if the tool tip will be displayed always, even when the parent window is not active.* |
| ::: tag "ShowIcons" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the ToolTip will display icons if the associated control or controls have specified one.* |
| ::: tag "ShowShadows" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether display-shadows will be provided around the ToolTip's borders.* |
| ::: tag "ShowBorders" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether standard borders will be drawn around the ToolTip's region.* |
| ::: tag "AllowFading" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *When set to true, a fade effect is used when ToolTips are shown or hidden.* |
| ::: tag "AllowAutoClose" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *When set to true, the ToolTip will be closed automatically when a set period of time provided by the property 'AutoCloseDuration', is given. However, when set to false, the ToolTip will be closed once the mouse leaves the associated control.* |
| ::: tag "Opacity" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8  | *Sets the opacity of transparency-level of the ToolTip.* |
| ::: tag "TextFont" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the ToolTip's Html FontDefault.* |
| ::: tag "InitialDelay" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Gets or sets the length of time, in milliseconds, it takes before the ToolTip is shown.* |
| ::: tag "ReshowDelay" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Gets or sets the length of time, in milliseconds, it takes before subsequent ToolTips are shown.* |
| ::: tag "AutoCloseDuration" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Gets or sets the length of time, in milliseconds, that the ToolTip will be shown. This property is enabled whenever the property 'AllowAutoClose' is set to true. The minimum required duration should be greater-than or equal-to 100 (milliseconds).* |
| ::: tag "EntryAnimationSpeed" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the ToolTip's entry animation speed in milliseconds. (Default is 350 milliseconds.)* |
| ::: tag "ExitAnimationSpeed" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the ToolTip's exit animation speed in milliseconds. (Default is 200 milliseconds.)* |
| ::: tag "IconMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the margin (distance) between the ToolTipIcon and ToolTipTitle.* |
| ::: tag "TextMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the ToolTip's Html margin, that is, the distance between the Title and the Html. (Default is 2.)* |
| ::: tag "Tag" icon:wrench | ::: tag "Object" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.object?view=netframework-4.8  | *Sets the object that contains programmer-supplied data associated with the ToolTip.* |
| ::: tag "Padding" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the ToolTip's inner padding between the container and its content, that is, the Title and Html information. Use the 'TextMargin' property to set the vertical distance between the ToolTip's Title and Html.* |
