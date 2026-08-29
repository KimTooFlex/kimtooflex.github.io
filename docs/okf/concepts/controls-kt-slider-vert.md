---
type: concept
title: "KimTools / Controls / SliderVert"
description: "A vertical range slider with independent track and elapsed colors, fill/outline thumb modes, and thick/thin border styles."
source: "https://kimtoo.net/controls/kt-slider-vert/"
path: /controls/kt-slider-vert/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T19:18:50.736Z"
---
---
title: "KimTools / Controls / SliderVert"
description: "A vertical range slider with independent track and elapsed colors, fill/outline thumb modes, and thick/thin border styles."
keywords: ["KimTools", "Controls", "KtSliderVert", "SliderVert", "VScrollbar"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `SliderVert`
A vertical range slider with independent track and elapsed colors, fill/outline thumb modes, and thick/thin border styles.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-slider-vert-light](/assets/images/screenshots/kt-slider-vert/kt-slider-vert-light.png?v=639234525201466747){ .light .snapshot} ![kt-slider-vert-dark](/assets/images/screenshots/kt-slider-vert/kt-slider-vert-dark.png?v=639234525201466747){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Vertical Slider
A thin track with an outline thumb. The elapsed region is tinted below the thumb while the remaining track uses `SliderColor`. Compact and unobtrusive for side-panel layouts.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 120,
    Height = 280,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var slider = new KtSliderVert
{
    Width = 31,
    Height = 200,
    Margin = new Padding(10),
    Value = 40,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.PRIMARY,
    ThumbColor = KtColor.PRIMARY,
    ThumbFillColor = KtColor.PRIMARY,
    ThumbStyle = KtSliderVert.ThumbStyles.Outline,
    SliderStyle = KtSliderVert.SliderStyles.Thin,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-vert-flat-light](/assets/images/screenshots/kt-slider-vert/slider-vert-flat-light.png?v=639234525237181722){ .light .snapshot} ![slider-vert-flat-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-flat-dark.png?v=639234525237181722){.dark .snapshot}

== tab "Light" icon:sun
![slider-vert-flat-light](/assets/images/screenshots/kt-slider-vert/slider-vert-flat-light.png?v=639234525237181722){  .snapshot}

== tab "Dark" icon:moon
![slider-vert-flat-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-flat-dark.png?v=639234525237181722){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Fill Thumb (`ThumbStyle`)
Switch to `ThumbStyle.Fill` for a solid thumb without an outline border. Pairs cleanly with thin tracks for a modern, minimal volume or level control.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 120,
    Height = 280,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var slider = new KtSliderVert
{
    Width = 31,
    Height = 200,
    Margin = new Padding(10),
    Value = 70,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.SUCCESS,
    ThumbColor = KtColor.SUCCESS,
    ThumbFillColor = KtColor.SUCCESS,
    ThumbStyle = KtSliderVert.ThumbStyles.Fill,
    SliderStyle = KtSliderVert.SliderStyles.Thin,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-vert-fill-light](/assets/images/screenshots/kt-slider-vert/slider-vert-fill-light.png?v=639234525254345035){ .light .snapshot} ![slider-vert-fill-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-fill-dark.png?v=639234525254345035){.dark .snapshot}

== tab "Light" icon:sun
![slider-vert-fill-light](/assets/images/screenshots/kt-slider-vert/slider-vert-fill-light.png?v=639234525254345035){  .snapshot}

== tab "Dark" icon:moon
![slider-vert-fill-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-fill-dark.png?v=639234525254345035){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Thick Track (`SliderStyle`)
`SliderStyle.Thick` increases the track weight and gives the thumb more room. Useful for touch-friendly interfaces or when the slider needs stronger visual presence.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 140,
    Height = 280,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var slider = new KtSliderVert
{
    Width = 40,
    Height = 200,
    Margin = new Padding(10),
    Value = 55,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.INFO,
    ThumbColor = KtColor.INFO,
    ThumbFillColor = KtColor.INFO,
    ThumbStyle = KtSliderVert.ThumbStyles.Fill,
    SliderStyle = KtSliderVert.SliderStyles.Thick,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-vert-thick-light](/assets/images/screenshots/kt-slider-vert/slider-vert-thick-light.png?v=639234525272503599){ .light .snapshot} ![slider-vert-thick-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-thick-dark.png?v=639234525272503599){.dark .snapshot}

== tab "Light" icon:sun
![slider-vert-thick-light](/assets/images/screenshots/kt-slider-vert/slider-vert-thick-light.png?v=639234525272503599){  .snapshot}

== tab "Dark" icon:moon
![slider-vert-thick-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-thick-dark.png?v=639234525272503599){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Color Themes (`ElapsedColor`, `ThumbColor`)
Swap the entire slider accent by changing `ElapsedColor` and `ThumbColor` together. Each slider paints its elapsed region from the thumb down, making value differences immediately visible.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 280,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var primary = new KtSliderVert
{
    Width = 31,
    Height = 200,
    Margin = new Padding(10),
    Value = 25,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.PRIMARY,
    ThumbColor = KtColor.PRIMARY,
    ThumbFillColor = KtColor.PRIMARY,
    ThumbStyle = KtSliderVert.ThumbStyles.Outline,
    SliderStyle = KtSliderVert.SliderStyles.Thin,
};
	
var rose = new KtSliderVert
{
    Width = 31,
    Height = 200,
    Margin = new Padding(10),
    Value = 50,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.Rose,
    ThumbColor = KtColor.Rose,
    ThumbFillColor = KtColor.Rose,
    ThumbStyle = KtSliderVert.ThumbStyles.Outline,
    SliderStyle = KtSliderVert.SliderStyles.Thin,
};
	
var emerald = new KtSliderVert
{
    Width = 31,
    Height = 200,
    Margin = new Padding(10),
    Value = 75,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.Emerald,
    ThumbColor = KtColor.Emerald,
    ThumbFillColor = KtColor.Emerald,
    ThumbStyle = KtSliderVert.ThumbStyles.Outline,
    SliderStyle = KtSliderVert.SliderStyles.Thin,
};
	
panel.Controls.Add(primary);
panel.Controls.Add(rose);
panel.Controls.Add(emerald);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-vert-themed-light](/assets/images/screenshots/kt-slider-vert/slider-vert-themed-light.png?v=639234525291527361){ .light .snapshot} ![slider-vert-themed-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-themed-dark.png?v=639234525291527361){.dark .snapshot}

== tab "Light" icon:sun
![slider-vert-themed-light](/assets/images/screenshots/kt-slider-vert/slider-vert-themed-light.png?v=639234525291517467){  .snapshot}

== tab "Dark" icon:moon
![slider-vert-themed-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-themed-dark.png?v=639234525291517467){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Disabled State
When `Enabled = false`, the slider falls back to muted state colors. All interactive feedback is suppressed, and the thumb and track are desaturated for clear non-interactive signaling.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 120,
    Height = 280,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.LeftToRight
};
	
var slider = new KtSliderVert
{
    Width = 31,
    Height = 200,
    Margin = new Padding(10),
    Value = 50,
    Enabled = false,
    SliderColor = KtColor.CONTENT % 50,
    ElapsedColor = KtColor.CONTENT % 50,
    ThumbColor = KtColor.CONTENT % 50,
    ThumbFillColor = KtColor.CONTENT % 50,
    ThumbStyle = KtSliderVert.ThumbStyles.Outline,
    SliderStyle = KtSliderVert.SliderStyles.Thin,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-vert-disabled-light](/assets/images/screenshots/kt-slider-vert/slider-vert-disabled-light.png?v=639234525309161231){ .light .snapshot} ![slider-vert-disabled-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-disabled-dark.png?v=639234525309161231){.dark .snapshot}

== tab "Light" icon:sun
![slider-vert-disabled-light](/assets/images/screenshots/kt-slider-vert/slider-vert-disabled-light.png?v=639234525309161231){  .snapshot}

== tab "Dark" icon:moon
![slider-vert-disabled-dark](/assets/images/screenshots/kt-slider-vert/slider-vert-disabled-dark.png?v=639234525309161231){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "SliderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the slider's BackColor.* |
| ::: tag "ElapsedColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the slider's elapsed region color.* |
| ::: tag "ThumbFillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the thumb's inner fill color. This is only necessary when the property ThumbStyle' is set to 'Outline'.* |
| ::: tag "SliderStyle" icon:wrench | ::: tag "SliderStyles" color:#6B7C94 icon:check-check  | *Sets the slider's overral style.* |
| ::: tag "ThumbStyle" icon:wrench | ::: tag "ThumbStyles" color:#6B7C94 icon:check-check  | *Sets the slider's thumb style.* |
