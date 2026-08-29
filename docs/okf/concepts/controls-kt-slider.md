---
type: concept
title: "KimTools / Controls / Slider"
description: "A horizontal range slider with state-based theming, fill/outline thumb styles, thick/thin track borders, and smooth color transitions."
source: "https://kimtoo.net/controls/kt-slider/"
path: /controls/kt-slider/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T19:18:50.738Z"
---
---
title: "KimTools / Controls / Slider"
description: "A horizontal range slider with state-based theming, fill/outline thumb styles, thick/thin track borders, and smooth color transitions."
keywords: ["KimTools", "Controls", "KtSlider", "Slider", "HScrollbar"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Slider`
A horizontal range slider with state-based theming, fill/outline thumb styles, thick/thin track borders, and smooth color transitions.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-slider-light](/assets/images/screenshots/kt-slider/kt-slider-light.png?v=639234625359322751){ .light .snapshot} ![kt-slider-dark](/assets/images/screenshots/kt-slider/kt-slider-dark.png?v=639234625359322751){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Slider
A thin track with an outline thumb. The elapsed portion is tinted with `ElapsedColor` while the remaining track uses `SliderColor`. Clean and unobtrusive for form layouts.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 400,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var slider = new KtSlider
{
    Width = 360,
    Height = 31,
    Margin = new Padding(5),
    Value = 40,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.PRIMARY,
    ThumbColor = KtColor.PRIMARY,
    ThumbFillColor = KtColor.PRIMARY,
    ThumbStyle = KtSlider.ThumbStyles.Outline,
    SliderStyle = KtSlider.SliderStyles.Thin,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-flat-light](/assets/images/screenshots/kt-slider/slider-flat-light.png?v=639234625410766077){ .light .snapshot} ![slider-flat-dark](/assets/images/screenshots/kt-slider/slider-flat-dark.png?v=639234625410766077){.dark .snapshot}

== tab "Light" icon:sun
![slider-flat-light](/assets/images/screenshots/kt-slider/slider-flat-light.png?v=639234625410753439){  .snapshot}

== tab "Dark" icon:moon
![slider-flat-dark](/assets/images/screenshots/kt-slider/slider-flat-dark.png?v=639234625410753439){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Fill / Bold Slider (`ThumbStyle`, `SliderStyle`)
A thick track with a solid filled thumb. `SliderStyle.Thick` increases the track weight, and `ThumbStyle.Fill` removes the thumb border for a solid, modern appearance.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 400,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var slider = new KtSlider
{
    Width = 360,
    Height = 31,
    Margin = new Padding(5),
    Value = 70,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.SUCCESS,
    ThumbColor = KtColor.SUCCESS,
    ThumbFillColor = KtColor.SUCCESS,
    ThumbStyle = KtSlider.ThumbStyles.Fill,
    SliderStyle = KtSlider.SliderStyles.Thick,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-fill-light](/assets/images/screenshots/kt-slider/slider-fill-light.png?v=639234625448445360){ .light .snapshot} ![slider-fill-dark](/assets/images/screenshots/kt-slider/slider-fill-dark.png?v=639234625448445360){.dark .snapshot}

== tab "Light" icon:sun
![slider-fill-light](/assets/images/screenshots/kt-slider/slider-fill-light.png?v=639234625448439645){  .snapshot}

== tab "Dark" icon:moon
![slider-fill-dark](/assets/images/screenshots/kt-slider/slider-fill-dark.png?v=639234625448439645){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Color Themes (`ElapsedColor`, `ThumbColor`)
Swap the entire slider accent by changing `ElapsedColor` and `ThumbColor` together. Use semantic colors to indicate severity — primary for neutral, warning for caution, error for critical ranges.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 400,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var primary = new KtSlider
{
    Width = 360,
    Height = 31,
    Margin = new Padding(5),
    Value = 30,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.PRIMARY,
    ThumbColor = KtColor.PRIMARY,
    ThumbFillColor = KtColor.PRIMARY,
    ThumbStyle = KtSlider.ThumbStyles.Outline,
    SliderStyle = KtSlider.SliderStyles.Thin,
};
	
var warning = new KtSlider
{
    Width = 360,
    Height = 31,
    Margin = new Padding(5),
    Value = 60,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.WARNING,
    ThumbColor = KtColor.WARNING,
    ThumbFillColor = KtColor.WARNING,
    ThumbStyle = KtSlider.ThumbStyles.Outline,
    SliderStyle = KtSlider.SliderStyles.Thin,
};
	
var error = new KtSlider
{
    Width = 360,
    Height = 31,
    Margin = new Padding(5),
    Value = 85,
    SliderColor = KtColor.BASE_3,
    ElapsedColor = KtColor.ERROR,
    ThumbColor = KtColor.ERROR,
    ThumbFillColor = KtColor.ERROR,
    ThumbStyle = KtSlider.ThumbStyles.Outline,
    SliderStyle = KtSlider.SliderStyles.Thin,
};
	
panel.Controls.Add(primary);
panel.Controls.Add(warning);
panel.Controls.Add(error);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-themed-light](/assets/images/screenshots/kt-slider/slider-themed-light.png?v=639234625487069078){ .light .snapshot} ![slider-themed-dark](/assets/images/screenshots/kt-slider/slider-themed-dark.png?v=639234625487069078){.dark .snapshot}

== tab "Light" icon:sun
![slider-themed-light](/assets/images/screenshots/kt-slider/slider-themed-light.png?v=639234625487069078){  .snapshot}

== tab "Dark" icon:moon
![slider-themed-dark](/assets/images/screenshots/kt-slider/slider-themed-dark.png?v=639234625487069078){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Disabled State
When `Enabled = false`, the slider falls back to muted state colors. All interactive feedback is suppressed, and the thumb and track are desaturated for clear non-interactive signaling.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 400,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var slider = new KtSlider
{
    Width = 360,
    Height = 31,
    Margin = new Padding(5),
    Value = 50,
    Enabled = false,
    SliderColor = KtColor.CONTENT % 50,
    ElapsedColor = KtColor.CONTENT % 50,
    ThumbColor = KtColor.CONTENT % 50,
    ThumbFillColor = KtColor.CONTENT % 50,
    ThumbStyle = KtSlider.ThumbStyles.Outline,
    SliderStyle = KtSlider.SliderStyles.Thin,
};
	
panel.Controls.Add(slider);
```
== side
::: tabs
== tab "Auto" icon:app-window
![slider-disabled-light](/assets/images/screenshots/kt-slider/slider-disabled-light.png?v=639234625525078804){ .light .snapshot} ![slider-disabled-dark](/assets/images/screenshots/kt-slider/slider-disabled-dark.png?v=639234625525078804){.dark .snapshot}

== tab "Light" icon:sun
![slider-disabled-light](/assets/images/screenshots/kt-slider/slider-disabled-light.png?v=639234625525078804){  .snapshot}

== tab "Dark" icon:moon
![slider-disabled-dark](/assets/images/screenshots/kt-slider/slider-disabled-dark.png?v=639234625525078804){ .snapshot}

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
