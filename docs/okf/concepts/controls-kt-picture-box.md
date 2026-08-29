---
type: concept
title: "KimTools / Controls / PictureBox"
description: "A modern, customizable PictureBox control supporting rounded corners, custom border styles, image filters, and dynamic gradient/brush masking."
source: "https://kimtoo.net/controls/kt-picture-box/"
path: /controls/kt-picture-box/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T16:32:57.812Z"
---
---
title: "KimTools / Controls / PictureBox"
description: "A modern, customizable PictureBox control supporting rounded corners, custom border styles, image filters, and dynamic gradient/brush masking."
keywords: ["KimTools", "Controls", "KtPictureBox", "PictureBox"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `PictureBox`
A modern, customizable PictureBox control supporting rounded corners, custom border styles, image filters, and dynamic gradient/brush masking.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-picture-box-light](/assets/images/screenshots/kt-picture-box/kt-picture-box-light.png?v=639234523435060037){ .light .snapshot} ![kt-picture-box-dark](/assets/images/screenshots/kt-picture-box/kt-picture-box-dark.png?v=639234523435060037){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Gradient Brushes & Alpha Filtering (`ImageBrush`)
Assign a `KtBrush` alongside `Image = Image.FromFile("logo.png")` to act as an alpha filter or mask overlay. Expressions support implicit tuple conversions `(start, stop, angle)` and opacity modifiers (`%`).
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 340,
    Height = 170,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var sampleImage = Image.FromFile("../logo.png");
	
// Angled gradient mask overlay on image using 3-tuple (Start, Stop, Angle)
var gradientPic = new KtPictureBox
{
    Width = 150,
    Height = 150,
    Margin = new Padding(5),
    BorderRadius = 10f,
    Image = sampleImage,
    ImageBrush = (KtColor.PRIMARY % 50, KtColor.ACCENT % 50, 45)
};
	
// Subtle translucent tint filter on image using 2-tuple + opacity operator (%)
var glassPic = new KtPictureBox
{
    Width = 150,
    Height = 150,
    Margin = new Padding(5),
    BorderRadius = 10f,
    Image = sampleImage,
    ImageBrush = (KtColor.SUCCESS % 30, KtColor.INFO % 30)
};
	
panel.Controls.Add(gradientPic);
panel.Controls.Add(glassPic);
```
== side
::: tabs
== tab "Auto" icon:app-window
![picture-box-image-brush-light](/assets/images/screenshots/kt-picture-box/picture-box-image-brush-light.png?v=639234523466501001){ .light .snapshot} ![picture-box-image-brush-dark](/assets/images/screenshots/kt-picture-box/picture-box-image-brush-dark.png?v=639234523466501001){.dark .snapshot}

== tab "Light" icon:sun
![picture-box-image-brush-light](/assets/images/screenshots/kt-picture-box/picture-box-image-brush-light.png?v=639234523466501001){  .snapshot}

== tab "Dark" icon:moon
![picture-box-image-brush-dark](/assets/images/screenshots/kt-picture-box/picture-box-image-brush-dark.png?v=639234523466501001){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Border Radius
Specify pixel values or fractional values (e.g., `0.5f` for a capsule/pill shape) on `BorderRadius` to automatically mask both the image and the applied brush layer.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 340,
    Height = 170,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var sampleImage = Image.FromFile("../logo.png");
	
var subtleRound = new KtPictureBox
{
    Width = 150,
    Height = 150,
    Margin = new Padding(5),
    BorderRadius = 12f,
    Image = sampleImage,
    ImageBrush = (KtColor.INFO % 40, KtColor.PRIMARY % 40)
};
	
var fullPill = new KtPictureBox
{
    Width = 150,
    Height = 150,
    Margin = new Padding(5),
    BorderRadius = 0.5f, // Fractional radius creates a circle shape for square control
    Image = sampleImage,
    ImageBrush = (KtColor.Purple % 40, KtColor.Pink % 40)
};
	
panel.Controls.Add(subtleRound);
panel.Controls.Add(fullPill);
```
== side
::: tabs
== tab "Auto" icon:app-window
![picture-box-border-radius-light](/assets/images/screenshots/kt-picture-box/picture-box-border-radius-light.png?v=639234523486123766){ .light .snapshot} ![picture-box-border-radius-dark](/assets/images/screenshots/kt-picture-box/picture-box-border-radius-dark.png?v=639234523486123766){.dark .snapshot}

== tab "Light" icon:sun
![picture-box-border-radius-light](/assets/images/screenshots/kt-picture-box/picture-box-border-radius-light.png?v=639234523486123766){  .snapshot}

== tab "Dark" icon:moon
![picture-box-border-radius-dark](/assets/images/screenshots/kt-picture-box/picture-box-border-radius-dark.png?v=639234523486123766){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "ImageBrush" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Image brush.* |
| ::: tag "Image" icon:wrench | ::: tag "Image" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.image?view=netframework-4.8  | *The image displayed in the PictureBox.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the control's border radius.* |
