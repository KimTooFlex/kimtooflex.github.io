---
type: concept
title: "KimTools / Controls / Rating"
description: "A customizable rating input with star, circle, and square shapes, independent color states for empty, hover, rated, and disabled, plus read-only and right-click-to-clear support."
source: "https://kimtoo.net/controls/kt-rating/"
path: /controls/kt-rating/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T19:21:14.451Z"
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
![kt-rating-light](/assets/images/screenshots/kt-rating/kt-rating-light.png?v=639236067188420367){ .light .snapshot} ![kt-rating-dark](/assets/images/screenshots/kt-rating/kt-rating-dark.png?v=639236067188420367){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Star Shape (`RatingShapes.Star`)
The classic rating layout rendered with precision-calculated star geometry.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
    Value = 4,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 12,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-shape-star-light](/assets/images/screenshots/kt-rating/rating-shape-star-light.png?v=639236067212247491){ .light .snapshot} ![rating-shape-star-dark](/assets/images/screenshots/kt-rating/rating-shape-star-dark.png?v=639236067212247491){.dark .snapshot}

== tab "Light" icon:sun
![rating-shape-star-light](/assets/images/screenshots/kt-rating/rating-shape-star-light.png?v=639236067212226391){  .snapshot}

== tab "Dark" icon:moon
![rating-shape-star-dark](/assets/images/screenshots/kt-rating/rating-shape-star-dark.png?v=639236067212226391){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Circle Shape (`RatingShapes.Circle`)
A modern, minimalist circular rating variant suitable for step indicators or simple scores.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
    Value = 3,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Circle,
    OuterRadius = 10,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.PRIMARY % 75,
    RatedBorderColor = KtColor.PRIMARY,
    EmptyFillColor = KtColor.PRIMARY[90] % 25,
    EmptyBorderColor = KtColor.PRIMARY % 50
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-shape-circle-light](/assets/images/screenshots/kt-rating/rating-shape-circle-light.png?v=639236067232747424){ .light .snapshot} ![rating-shape-circle-dark](/assets/images/screenshots/kt-rating/rating-shape-circle-dark.png?v=639236067232747424){.dark .snapshot}

== tab "Light" icon:sun
![rating-shape-circle-light](/assets/images/screenshots/kt-rating/rating-shape-circle-light.png?v=639236067232747424){  .snapshot}

== tab "Dark" icon:moon
![rating-shape-circle-dark](/assets/images/screenshots/kt-rating/rating-shape-circle-dark.png?v=639236067232747424){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Square Shape (`RatingShapes.Square`)
A compact, box-style rating indicator ideal for quantitative scale displays.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
    Value = 2,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Square,
    OuterRadius = 10,
    Spacing = 4,
    BorderThickness = 1,
    RatedFillColor = KtColor.SUCCESS % 75,
    RatedBorderColor = KtColor.SUCCESS,
    EmptyFillColor = KtColor.SUCCESS[90] % 25,
    EmptyBorderColor = KtColor.SUCCESS % 50
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-shape-square-light](/assets/images/screenshots/kt-rating/rating-shape-square-light.png?v=639236067253398046){ .light .snapshot} ![rating-shape-square-dark](/assets/images/screenshots/kt-rating/rating-shape-square-dark.png?v=639236067253398046){.dark .snapshot}

== tab "Light" icon:sun
![rating-shape-square-light](/assets/images/screenshots/kt-rating/rating-shape-square-light.png?v=639236067253398046){  .snapshot}

== tab "Dark" icon:moon
![rating-shape-square-dark](/assets/images/screenshots/kt-rating/rating-shape-square-dark.png?v=639236067253398046){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Read-Only Mode (`ReadOnly`)
Set `ReadOnly = true` to present static scores while suppressing hover and click interactions.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
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
    EmptyBorderColor = KtColor.Yellow % 50
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-readonly-light](/assets/images/screenshots/kt-rating/rating-readonly-light.png?v=639236067274107875){ .light .snapshot} ![rating-readonly-dark](/assets/images/screenshots/kt-rating/rating-readonly-dark.png?v=639236067274107875){.dark .snapshot}

== tab "Light" icon:sun
![rating-readonly-light](/assets/images/screenshots/kt-rating/rating-readonly-light.png?v=639236067274107875){  .snapshot}

== tab "Dark" icon:moon
![rating-readonly-dark](/assets/images/screenshots/kt-rating/rating-readonly-dark.png?v=639236067274107875){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Disabled State (`Enabled = false`)
Configures independent opacity palettes via `DisabledRatedFillColor` and `DisabledEmptyFillColor`.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
    Value = 3,
    Maximum = 5,
    Enabled = false,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 12,
    Spacing = 4,
    BorderThickness = 1,
    DisabledRatedFillColor = KtColor.Yellow % 50,
    DisabledEmptyFillColor = KtColor.Yellow % 25
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-disabled-light](/assets/images/screenshots/kt-rating/rating-disabled-light.png?v=639236067294571781){ .light .snapshot} ![rating-disabled-dark](/assets/images/screenshots/kt-rating/rating-disabled-dark.png?v=639236067294571781){.dark .snapshot}

== tab "Light" icon:sun
![rating-disabled-light](/assets/images/screenshots/kt-rating/rating-disabled-light.png?v=639236067294571781){  .snapshot}

== tab "Dark" icon:moon
![rating-disabled-dark](/assets/images/screenshots/kt-rating/rating-disabled-dark.png?v=639236067294571781){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom Palette (`KtColor`)
Assign custom theme tones across `Rated`, `Empty`, and `Hover` states to blend with application branding.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
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
    HoverBorderColor = KtColor.Rose
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-custom-theme-light](/assets/images/screenshots/kt-rating/rating-custom-theme-light.png?v=639236067315095318){ .light .snapshot} ![rating-custom-theme-dark](/assets/images/screenshots/kt-rating/rating-custom-theme-dark.png?v=639236067315095318){.dark .snapshot}

== tab "Light" icon:sun
![rating-custom-theme-light](/assets/images/screenshots/kt-rating/rating-custom-theme-light.png?v=639236067315095318){  .snapshot}

== tab "Dark" icon:moon
![rating-custom-theme-dark](/assets/images/screenshots/kt-rating/rating-custom-theme-dark.png?v=639236067315095318){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Custom Sizing (`OuterRadius`, `Spacing`)
Adjust overall element bounds using `OuterRadius`, shape distance via `Spacing`, and outline stroke width with `BorderThickness`.
```csharp "🔴 🟡 🟢"
var rating = new KtRating
{
    Value = 4,
    Maximum = 5,
    Shape = KtRating.RatingShapes.Star,
    OuterRadius = 16,
    Spacing = 6,
    BorderThickness = 2,
    RatedFillColor = KtColor.Yellow % 75,
    RatedBorderColor = KtColor.Yellow,
    EmptyFillColor = KtColor.Yellow[90] % 25,
    EmptyBorderColor = KtColor.Yellow % 50
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rating-sizing-light](/assets/images/screenshots/kt-rating/rating-sizing-light.png?v=639236067335768338){ .light .snapshot} ![rating-sizing-dark](/assets/images/screenshots/kt-rating/rating-sizing-dark.png?v=639236067335768338){.dark .snapshot}

== tab "Light" icon:sun
![rating-sizing-light](/assets/images/screenshots/kt-rating/rating-sizing-light.png?v=639236067335768338){  .snapshot}

== tab "Dark" icon:moon
![rating-sizing-dark](/assets/images/screenshots/kt-rating/rating-sizing-dark.png?v=639236067335768338){ .snapshot}

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
| ::: tag "Value" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the current rating value.* |
| ::: tag "Maximum" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the maximum rating count.* |
| ::: tag "Spacing" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the spacing between rating shapes.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "integer" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the border thickness of rating shapes.* |
| ::: tag "OuterRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the rating's shape radius.* |
| ::: tag "InnerRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the inner radius of the star shape.* |

