---
type: concept
title: "KimTools / Controls / Rating"
description: "A customizable rating input with star, circle, and square shapes, independent color states for empty, hover, rated, and disabled, plus read-only and right-click-to-clear support."
source: "https://kimtoo.net/controls/kt-rating/"
path: /controls/kt-rating/
updated: 2026-08-28
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-28T14:53:35.537Z"
---
---
title: "KimTools / Controls / Rating"
description: "A customizable rating input with star, circle, and square shapes, independent color states for empty, hover, rated, and disabled, plus read-only and right-click-to-clear support."
keywords: ["KimTools", "Controls", "KtRating", "Rating", "Control"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Rating`
A customizable rating input with star, circle, and square shapes, independent color states for empty, hover, rated, and disabled, plus read-only and right-click-to-clear support.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-rating-light](/assets/images/screenshots/kt-rating/kt-rating-light.png?v=639234524724481667){ .light .snapshot} ![kt-rating-dark](/assets/images/screenshots/kt-rating/kt-rating-dark.png?v=639234524724481667){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Shape Variants (`Shape`)
Three built-in shapes — `Star`, `Circle`, and `Square` — each with independent `OuterRadius` and `BorderThickness`. Switch the entire visual language of the rating input by changing a single enum.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var starRating = new KtRating
{
    Margin = new Padding(5),
    Value = 4,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 10,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50,
};
	
var circleRating = new KtRating
{
    Margin = new Padding(5),
    Value = 3,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Circle,
    OuterRadius = 10,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.PRIMARY % 75,
    RatedBorderColor = KtColor.PRIMARY,
    EmptyFillColor = KtColor.PRIMARY[90] % 25,
    EmptyBorderColor = KtColor.PRIMARY % 50,
};
	
var squareRating = new KtRating
{
    Margin = new Padding(5),
    Value = 2,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Square,
    OuterRadius = 10,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.SUCCESS % 75,
    RatedBorderColor = KtColor.SUCCESS,
    EmptyFillColor = KtColor.SUCCESS[90] % 25,
    EmptyBorderColor = KtColor.SUCCESS % 50,
};
	
panel.Controls.Add(starRating);
panel.Controls.Add(circleRating);
panel.Controls.Add(squareRating);
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-shapes-light](/assets/images/screenshots/kt-rating/rating-shapes-light.png?v=639234524759725579){ .light .snapshot} ![rating-shapes-dark](/assets/images/screenshots/kt-rating/rating-shapes-dark.png?v=639234524759725579){.dark .snapshot}

== tab "Light" icon:sun
![rating-shapes-light](/assets/images/screenshots/kt-rating/rating-shapes-light.png?v=639234524759725579){  .snapshot}

== tab "Dark" icon:moon
![rating-shapes-dark](/assets/images/screenshots/kt-rating/rating-shapes-dark.png?v=639234524759725579){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Read-Only Mode (`ReadOnly`)
Set `ReadOnly = true` to display a static rating without interaction. Useful for review summaries, aggregate scores, or any context where user input should be disabled.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var rating = new KtRating
{
    Margin = new Padding(10),
    Value = 4,
    Maximum = 5,
    ReadOnly = true,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 12,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50,
};
	
panel.Controls.Add(rating);
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-readonly-light](/assets/images/screenshots/kt-rating/rating-readonly-light.png?v=639234524776316484){ .light .snapshot} ![rating-readonly-dark](/assets/images/screenshots/kt-rating/rating-readonly-dark.png?v=639234524776316484){.dark .snapshot}

== tab "Light" icon:sun
![rating-readonly-light](/assets/images/screenshots/kt-rating/rating-readonly-light.png?v=639234524776316484){  .snapshot}

== tab "Dark" icon:moon
![rating-readonly-dark](/assets/images/screenshots/kt-rating/rating-readonly-dark.png?v=639234524776316484){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Disabled State (`DisabledRatedFillColor`, `DisabledEmptyFillColor`)
When `Enabled = false`, the rating falls back to dedicated disabled colors. Fine-tune the muted appearance independently for rated and empty shapes.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var rating = new KtRating
{
    Margin = new Padding(10),
    Value = 3,
    Maximum = 5,
    Enabled = false,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 12,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50,
    DisabledRatedFillColor = KtColor.Yellow % 50,
    DisabledEmptyFillColor = KtColor.Yellow % 25,
};
	
panel.Controls.Add(rating);
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-disabled-light](/assets/images/screenshots/kt-rating/rating-disabled-light.png?v=639234524793706588){ .light .snapshot} ![rating-disabled-dark](/assets/images/screenshots/kt-rating/rating-disabled-dark.png?v=639234524793706588){.dark .snapshot}

== tab "Light" icon:sun
![rating-disabled-light](/assets/images/screenshots/kt-rating/rating-disabled-light.png?v=639234524793706588){  .snapshot}

== tab "Dark" icon:moon
![rating-disabled-dark](/assets/images/screenshots/kt-rating/rating-disabled-dark.png?v=639234524793706588){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom Color Theme
Replace the default yellow palette with any `KtColor`. Every state — `Rated`, `Empty`, and `Hover` — carries its own fill and border color, so the rating can match any design system.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var rating = new KtRating
{
    Margin = new Padding(10),
    Value = 4,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 12,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.Rose,
    RatedBorderColor = KtColor.Rose,
    EmptyFillColor = KtColor.Rose % 20,
    EmptyBorderColor = KtColor.Rose % 40,
    HoverFillColor = KtColor.Rose % 60,
    HoverBorderColor = KtColor.Rose,
};
	
panel.Controls.Add(rating);
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-custom-theme-light](/assets/images/screenshots/kt-rating/rating-custom-theme-light.png?v=639234524811025187){ .light .snapshot} ![rating-custom-theme-dark](/assets/images/screenshots/kt-rating/rating-custom-theme-dark.png?v=639234524811025187){.dark .snapshot}

== tab "Light" icon:sun
![rating-custom-theme-light](/assets/images/screenshots/kt-rating/rating-custom-theme-light.png?v=639234524811025187){  .snapshot}

== tab "Dark" icon:moon
![rating-custom-theme-dark](/assets/images/screenshots/kt-rating/rating-custom-theme-dark.png?v=639234524811025187){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Sizing & Spacing (`OuterRadius`, `Spacing`, `BorderThickness`)
Scale the entire rating control by adjusting `OuterRadius`. `Spacing` controls the gap between shapes, and `BorderThickness` adjusts the outline weight. The control auto-resizes to fit its content.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 320,
    Height = 200,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var small = new KtRating
{
    Margin = new Padding(5),
    Value = 3,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 8,
    Spacing = 2,
    BorderThickness = 1,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50,
};
	
var medium = new KtRating
{
    Margin = new Padding(5),
    Value = 3,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 12,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50,
};
	
var large = new KtRating
{
    Margin = new Padding(5),
    Value = 3,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 16,
    Spacing = 6,
    BorderThickness = 2,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50,
};
	
panel.Controls.Add(small);
panel.Controls.Add(medium);
panel.Controls.Add(large);
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-sizes-light](/assets/images/screenshots/kt-rating/rating-sizes-light.png?v=639234524828833912){ .light .snapshot} ![rating-sizes-dark](/assets/images/screenshots/kt-rating/rating-sizes-dark.png?v=639234524828833912){.dark .snapshot}

== tab "Light" icon:sun
![rating-sizes-light](/assets/images/screenshots/kt-rating/rating-sizes-light.png?v=639234524828833912){  .snapshot}

== tab "Dark" icon:moon
![rating-sizes-dark](/assets/images/screenshots/kt-rating/rating-sizes-dark.png?v=639234524828833912){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "DisabledEmptyFillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the fill KtColor of unrated shapes when disabled.* |
| ::: tag "DisabledRatedFillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the fill KtColor of rated shapes when disabled.* |
| ::: tag "EmptyFillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the fill KtColor of unrated shapes.* |
| ::: tag "EmptyBorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the border color of unrated shapes.* |
| ::: tag "HoverFillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the fill KtColor of rating shapes on hover.* |
| ::: tag "HoverBorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the border color of rating shapes on hover.* |
| ::: tag "RatedFillColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the fill KtColor of rated shapes.* |
| ::: tag "RatedBorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the border color of rated shapes.* |
| ::: tag "Shape" icon:wrench | ::: tag "RatingShapes" color:#6B7C94 icon:check-check  | *Sets the rating shape style.* |
| ::: tag "ReadOnly" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the rating is in read-only mode.* |
| ::: tag "RightClickToClear" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether the rating will be cleared after right-clicking it.* |
| ::: tag "Value" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the current rating value.* |
| ::: tag "Maximum" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the maximum rating count.* |
| ::: tag "Spacing" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the spacing between rating shapes.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the border thickness of rating shapes.* |
| ::: tag "OuterRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the rating's shape radius.* |
| ::: tag "InnerRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the inner radius of the star shape.* |
