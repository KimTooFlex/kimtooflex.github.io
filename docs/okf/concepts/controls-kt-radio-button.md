---
type: concept
title: "KimTools / Controls / RadioButton"
description: "KtRadioButton is a themeable single-selection radio button control for Modern WinForms"
source: "https://kimtoo.net/controls/kt-radio-button/"
path: /controls/kt-radio-button/
updated: 2026-08-25
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-25T06:16:40.733Z"
---
---
title: "KimTools / Controls / RadioButton"
description: "KtRadioButton is a themeable single-selection radio button control for Modern WinForms"
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `RadioButton`
A themeable single-select control for WinForms, with independent checked and unchecked styling for background, border, icon and foreground.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-radio-button-light](/assets/images/controls/kt-radio-button/kt-radio-button-light.png?v=639231969202492391){ .light .snapshot} ![kt-radio-button-dark](/assets/images/controls/kt-radio-button/kt-radio-button-dark.png?v=639231969202492391){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
# Background
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| -------- | ------- | ----------- |
# Border
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| -------- | ------- | ----------- |
# Icon
| ::: tag "Icon" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## Default `Checked` / `Unchecked` states
`KtRadioButton` supports both selected and unselected states. Set `Checked` to `true` to display the selected state.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
// KtRadioButton renders as an unselected option by default.
// Set Checked to true to display the selected state.
var unselected = new KtRadioButton
{
    Text = "Standard option",
    TextAlign = ContentAlignment.MiddleRight,
    Width = 130,
    Checked = false
};
	
var selected = new KtRadioButton
{
    Text = "Selected option",
    Width = 130,
    TextAlign = ContentAlignment.MiddleRight,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![default-state-light](/assets/images/controls/kt-radio-button/default-state-light.png?v=639231969232691222){ .light .snapshot} ![default-state-dark](/assets/images/controls/kt-radio-button/default-state-dark.png?v=639231969232691222){.dark .snapshot}

== tab "Light" icon:sun
![default-state-light](/assets/images/controls/kt-radio-button/default-state-light.png?v=639231969232671299){  .snapshot}

== tab "Dark" icon:moon
![default-state-dark](/assets/images/controls/kt-radio-button/default-state-dark.png?v=639231969232671299){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Solid `Background_Checked`
Use `Background_Checked` to give the selected option its own solid fill. The unchecked state can remain transparent or use a separate `Background` brush.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Recommended",
    Width = 200,
	
    // Remove the default background and provide
    // an explicit selected-state fill.
    Background = KtBrush.None,
    Background_Checked = KtColor.SUCCESS,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![solid-checked-background-light](/assets/images/controls/kt-radio-button/solid-checked-background-light.png?v=639231969242981920){ .light .snapshot} ![solid-checked-background-dark](/assets/images/controls/kt-radio-button/solid-checked-background-dark.png?v=639231969242981920){.dark .snapshot}

== tab "Light" icon:sun
![solid-checked-background-light](/assets/images/controls/kt-radio-button/solid-checked-background-light.png?v=639231969242981920){  .snapshot}

== tab "Dark" icon:moon
![solid-checked-background-dark](/assets/images/controls/kt-radio-button/solid-checked-background-dark.png?v=639231969242981920){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Gradient `Background_Checked`
Use a semantic color gradient for the selected state. Theme colors keep the selection styling consistent with the active application theme.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Premium plan",
    Size = new Size(190, 50),
	
    Background_Checked =
    (
        startColor: KtColor.PRIMARY[50],
        stopColor: KtColor.SECONDARY[50],
        angle: 45
    ),
	
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![gradient-background-checked-light](/assets/images/controls/kt-radio-button/gradient-background-checked-light.png?v=639231969253165167){ .light .snapshot} ![gradient-background-checked-dark](/assets/images/controls/kt-radio-button/gradient-background-checked-dark.png?v=639231969253165167){.dark .snapshot}

== tab "Light" icon:sun
![gradient-background-checked-light](/assets/images/controls/kt-radio-button/gradient-background-checked-light.png?v=639231969253165167){  .snapshot}

== tab "Dark" icon:moon
![gradient-background-checked-dark](/assets/images/controls/kt-radio-button/gradient-background-checked-dark.png?v=639231969253165167){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Border` + `Border_Checked`
Keep both states transparent and use the border to communicate selection. `Border_Checked` controls the selected-state border independently.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Express delivery",
    Width = 210,
	
    Background = KtBrush.None,
    Background_Checked = KtBrush.None,
	
    Border = KtColor.NEUTRAL,
    Border_Checked = KtColor.PRIMARY,
	
    BorderWidth = 2f,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-border-light](/assets/images/controls/kt-radio-button/custom-border-light.png?v=639231969263486411){ .light .snapshot} ![custom-border-dark](/assets/images/controls/kt-radio-button/custom-border-dark.png?v=639231969263486411){.dark .snapshot}

== tab "Light" icon:sun
![custom-border-light](/assets/images/controls/kt-radio-button/custom-border-light.png?v=639231969263486411){  .snapshot}

== tab "Dark" icon:moon
![custom-border-dark](/assets/images/controls/kt-radio-button/custom-border-dark.png?v=639231969263486411){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Icon` + `Icon_Checked`
Use different icons for the unselected and selected states. `IconColor_Checked` lets the selected icon use its own semantic color.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Verified account",
    TextAlign = ContentAlignment.MiddleCenter,
    Width = 200,
    Icon = "Tabler.outline.circle",
    Icon_Checked = "Tabler.solid.circle_check",
    Border = KtBrush.BASE,
    Background = KtColor.BASE,
    IconColor_Checked = KtColor.SUCCESS,
	
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-icons-light](/assets/images/controls/kt-radio-button/custom-icons-light.png?v=639231969273745396){ .light .snapshot} ![custom-icons-dark](/assets/images/controls/kt-radio-button/custom-icons-dark.png?v=639231969273745396){.dark .snapshot}

== tab "Light" icon:sun
![custom-icons-light](/assets/images/controls/kt-radio-button/custom-icons-light.png?v=639231969273730285){  .snapshot}

== tab "Dark" icon:moon
![custom-icons-dark](/assets/images/controls/kt-radio-button/custom-icons-dark.png?v=639231969273730285){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Icon `Size` and `Stroke`
Tune the selected and unselected icon rendering with `IconSize` and `IconStroke`.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Large selection",
	
    Icon = "tabler.outline.circle",
    Icon_Checked = "tabler.solid.circle_check_filled",
	
    IconSize = 22,
    IconStroke = 2.5,
    TextAlign = ContentAlignment.MiddleCenter,
    Width = 200,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![icon-size-and-stroke-light](/assets/images/controls/kt-radio-button/icon-size-and-stroke-light.png?v=639231969283850923){ .light .snapshot} ![icon-size-and-stroke-dark](/assets/images/controls/kt-radio-button/icon-size-and-stroke-dark.png?v=639231969283850923){.dark .snapshot}

== tab "Light" icon:sun
![icon-size-and-stroke-light](/assets/images/controls/kt-radio-button/icon-size-and-stroke-light.png?v=639231969283850923){  .snapshot}

== tab "Dark" icon:moon
![icon-size-and-stroke-dark](/assets/images/controls/kt-radio-button/icon-size-and-stroke-dark.png?v=639231969283850923){ .snapshot}

:::
:::

::: hero layout:split glow:true
## `Foreground` + `Foreground_Checked`
Change the text color independently for each selection state.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Active selection",
	
    Background = KtBrush.None,
    Background_Checked = KtBrush.None,
    Border = KtBrush.None,
	
    Foreground = KtColor.NEUTRAL,
    Foreground_Checked = KtColor.PRIMARY,
    TextAlign = ContentAlignment.MiddleCenter,
    Width = 200,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![custom-foreground-light](/assets/images/controls/kt-radio-button/custom-foreground-light.png?v=639231969293929145){ .light .snapshot} ![custom-foreground-dark](/assets/images/controls/kt-radio-button/custom-foreground-dark.png?v=639231969293929145){.dark .snapshot}

== tab "Light" icon:sun
![custom-foreground-light](/assets/images/controls/kt-radio-button/custom-foreground-light.png?v=639231969293929145){  .snapshot}

== tab "Dark" icon:moon
![custom-foreground-dark](/assets/images/controls/kt-radio-button/custom-foreground-dark.png?v=639231969293929145){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Rounded `BorderRadius`
Set `BorderRadius` to `.99f` for a pill-shaped selection or use a pixel value when you need a specific corner radius.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Rounded selection",
    Width = 210,
	
    BorderRadius = .99f,
    Background_Checked = KtColor.PRIMARY,
	
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![rounded-radio-light](/assets/images/controls/kt-radio-button/rounded-radio-light.png?v=639231969304040557){ .light .snapshot} ![rounded-radio-dark](/assets/images/controls/kt-radio-button/rounded-radio-dark.png?v=639231969304040557){.dark .snapshot}

== tab "Light" icon:sun
![rounded-radio-light](/assets/images/controls/kt-radio-button/rounded-radio-light.png?v=639231969304040557){  .snapshot}

== tab "Dark" icon:moon
![rounded-radio-dark](/assets/images/controls/kt-radio-button/rounded-radio-dark.png?v=639231969304040557){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Outlined selection
Build a minimal radio style by removing both backgrounds and changing the border and foreground when selected.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = "Outlined option",
    Width = 200,
	
    Background = KtBrush.None,
    Background_Checked = KtBrush.None,
	
    Border = KtColor.NEUTRAL,
    Border_Checked = KtColor.PRIMARY,
	
    Foreground = KtColor.NEUTRAL,
    Foreground_Checked = KtColor.PRIMARY,
	
    BorderWidth = 2f,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![outlined-radio-light](/assets/images/controls/kt-radio-button/outlined-radio-light.png?v=639231969314164119){ .light .snapshot} ![outlined-radio-dark](/assets/images/controls/kt-radio-button/outlined-radio-dark.png?v=639231969314164119){.dark .snapshot}

== tab "Light" icon:sun
![outlined-radio-light](/assets/images/controls/kt-radio-button/outlined-radio-light.png?v=639231969314164119){  .snapshot}

== tab "Dark" icon:moon
![outlined-radio-dark](/assets/images/controls/kt-radio-button/outlined-radio-dark.png?v=639231969314164119){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Single-selection `Group`
Use multiple `KtRadioButton` controls for mutually exclusive choices. When one option becomes checked, clear the other options in the same logical group.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var emailOption = new KtRadioButton
{
    Text = "Email",
    Checked = true
};
	
var smsOption = new KtRadioButton
{
    Text = "SMS"
};
	
var pushOption = new KtRadioButton
{
    Text = "Push notification"
};
	
// Radio buttons in the same logical group should have
// only one selected option at a time.
```
== side
::: tabs
== tab "Auto" icon:app-window
![radio-group-light](/assets/images/controls/kt-radio-button/radio-group-light.png?v=639231969326707868){ .light .snapshot} ![radio-group-dark](/assets/images/controls/kt-radio-button/radio-group-dark.png?v=639231969326707868){.dark .snapshot}

== tab "Light" icon:sun
![radio-group-light](/assets/images/controls/kt-radio-button/radio-group-light.png?v=639231969326707868){  .snapshot}

== tab "Dark" icon:moon
![radio-group-dark](/assets/images/controls/kt-radio-button/radio-group-dark.png?v=639231969326707868){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Payment method selector
Radio buttons work well for compact single-choice forms. Combine icons, semantic colors and selected-state backgrounds to make each option easy to scan.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var payment = new KtRadioButton
{
    Text = "Credit / Debit Card",
    Icon = "hero.outline.credit-card",
    Icon_Checked = "hero.solid.credit-card",
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![payment-method-light](/assets/images/controls/kt-radio-button/payment-method-light.png?v=639231969339616369){ .light .snapshot} ![payment-method-dark](/assets/images/controls/kt-radio-button/payment-method-dark.png?v=639231969339616369){.dark .snapshot}

== tab "Light" icon:sun
![payment-method-light](/assets/images/controls/kt-radio-button/payment-method-light.png?v=639231969339616369){  .snapshot}

== tab "Dark" icon:moon
![payment-method-dark](/assets/images/controls/kt-radio-button/payment-method-dark.png?v=639231969339616369){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Shipping options
Use radio buttons for mutually exclusive choices where the option itself contains enough information to make the selection.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var standardOption = new KtRadioButton
{
    Text = "Standard delivery  •  3-5 days",
    Checked = true
};
	
var expressOption = new KtRadioButton
{
    Text = "Express delivery  •  1-2 days"
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![shipping-options-light](/assets/images/controls/kt-radio-button/shipping-options-light.png?v=639231969352686534){ .light .snapshot} ![shipping-options-dark](/assets/images/controls/kt-radio-button/shipping-options-dark.png?v=639231969352686534){.dark .snapshot}

== tab "Light" icon:sun
![shipping-options-light](/assets/images/controls/kt-radio-button/shipping-options-light.png?v=639231969352686534){  .snapshot}

== tab "Dark" icon:moon
![shipping-options-dark](/assets/images/controls/kt-radio-button/shipping-options-dark.png?v=639231969352686534){ .snapshot}

:::
:::

::: hero layout:split glow:true
# Kt `RadioButton`
A themeable single-select control for WinForms, with independent checked and unchecked styling for background, border, icon and foreground.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-radio-button-light](/assets/images/controls/kt-radio-button/kt-radio-button-light.png?v=639231969202492391){ .light .snapshot} ![kt-radio-button-dark](/assets/images/controls/kt-radio-button/kt-radio-button-dark.png?v=639231969202492391){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
# Kt `RadioButton`
A themeable single-select control for WinForms, with independent checked and unchecked styling for background, border, icon and foreground.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-radio-button-light](/assets/images/controls/kt-radio-button/kt-radio-button-light.png?v=639231969202492391){ .light .snapshot} ![kt-radio-button-dark](/assets/images/controls/kt-radio-button/kt-radio-button-dark.png?v=639231969202492391){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Card-style selection
Increase the size and radius of a radio button to create selectable cards. This pattern works well for plans, subscription tiers and configuration presets.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var plan = new KtRadioButton
{
    Text = "Pro\n$19 / month",
    Size = new Size(160, 120),
    TextAlign = ContentAlignment.MiddleCenter,
    Border = KtColor.PRIMARY,
    Background_Checked = KtColor.PRIMARY,
    BorderRadius = 10f,
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![cards-light](/assets/images/controls/kt-radio-button/cards-light.png?v=639231969389984918){ .light .snapshot} ![cards-dark](/assets/images/controls/kt-radio-button/cards-dark.png?v=639231969389984918){.dark .snapshot}

== tab "Light" icon:sun
![cards-light](/assets/images/controls/kt-radio-button/cards-light.png?v=639231969389984918){  .snapshot}

== tab "Dark" icon:moon
![cards-dark](/assets/images/controls/kt-radio-button/cards-dark.png?v=639231969389984918){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Icon-only `KtRadioButton`
Remove the label and center the icon to create a compact single-selection control.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var radio = new KtRadioButton
{
    Text = string.Empty,
    Size = new Size(52, 52),
    Padding = Padding.Empty,
    ImageAlign = ContentAlignment.MiddleCenter,
	
    BorderRadius = .99f,
	
    Icon = "tabler.outline.circle",
    Icon_Checked = "tabler.solid.circle_check_filled",
	
    IconSize = 22,
    IconStroke = 2.5,
	
    IconColor_Checked = KtColor.White,
	
    Checked = true
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![icon-only-light](/assets/images/controls/kt-radio-button/icon-only-light.png?v=639231969400386730){ .light .snapshot} ![icon-only-dark](/assets/images/controls/kt-radio-button/icon-only-dark.png?v=639231969400386730){.dark .snapshot}

== tab "Light" icon:sun
![icon-only-light](/assets/images/controls/kt-radio-button/icon-only-light.png?v=639231969400386730){  .snapshot}

== tab "Dark" icon:moon
![icon-only-dark](/assets/images/controls/kt-radio-button/icon-only-dark.png?v=639231969400386730){ .snapshot}

:::
:::

::: hero layout:split glow:true
# Kt `RadioButton`
A themeable single-select control for WinForms, with independent checked and unchecked styling for background, border, icon and foreground.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-radio-button-light](/assets/images/controls/kt-radio-button/kt-radio-button-light.png?v=639231969202492391){ .light .snapshot} ![kt-radio-button-dark](/assets/images/controls/kt-radio-button/kt-radio-button-dark.png?v=639231969202492391){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Enabled and disabled states
Use the standard WinForms `Enabled` property when an option should be visible but temporarily unavailable.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var enabled = new KtRadioButton
{
    Text = "Available",
    Checked = true
};
	
var disabled = new KtRadioButton
{
    Text = "Unavailable",
    Enabled = false
};
	
var flow = new FlowLayoutPanel
{
    Width = 340,
    Height = 80,
    Padding = new Padding(10),
    BackColor = Color.Transparent
};
	
flow.Controls.Add(enabled);
flow.Controls.Add(disabled);
```
== side
::: tabs
== tab "Auto" icon:app-window
![disabled-state-light](/assets/images/controls/kt-radio-button/disabled-state-light.png?v=639231969427793607){ .light .snapshot} ![disabled-state-dark](/assets/images/controls/kt-radio-button/disabled-state-dark.png?v=639231969427793607){.dark .snapshot}

== tab "Light" icon:sun
![disabled-state-light](/assets/images/controls/kt-radio-button/disabled-state-light.png?v=639231969427793607){  .snapshot}

== tab "Dark" icon:moon
![disabled-state-dark](/assets/images/controls/kt-radio-button/disabled-state-dark.png?v=639231969427793607){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Reacting to selection changes
Use `CheckedChanged` when application logic needs to respond immediately when a radio button becomes selected or unselected.
```csharp "🔴 🟡 🟢"
// using KimTools.WinForms;
	
var personal = new KtRadioButton
{
    Text = "Personal",
    Checked = true
};
	
var business = new KtRadioButton
{
    Text = "Business"
};
	
personal.CheckedChanged += (_, _) =>
{
    if (personal.Checked)
        business.Checked = false;
};
	
business.CheckedChanged += (_, _) =>
{
    if (business.Checked)
        personal.Checked = false;
};
	
// React to the selected option from CheckedChanged.
personal.CheckedChanged += (_, _) =>
{
    if (personal.Checked)
    {
        // Handle personal selection.
    }
};
```
== side
::: tabs
== tab "Auto" icon:app-window
![selection-event-light](/assets/images/controls/kt-radio-button/selection-event-light.png?v=639231969438401897){ .light .snapshot} ![selection-event-dark](/assets/images/controls/kt-radio-button/selection-event-dark.png?v=639231969438401897){.dark .snapshot}

== tab "Light" icon:sun
![selection-event-light](/assets/images/controls/kt-radio-button/selection-event-light.png?v=639231969438401897){  .snapshot}

== tab "Dark" icon:moon
![selection-event-dark](/assets/images/controls/kt-radio-button/selection-event-dark.png?v=639231969438401897){ .snapshot}

:::
:::

::: hero layout:split glow:true
# Kt `RadioButton`
A themeable single-select control for WinForms, with independent checked and unchecked styling for background, border, icon and foreground.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-radio-button-light](/assets/images/controls/kt-radio-button/kt-radio-button-light.png?v=639231969202492391){ .light .snapshot} ![kt-radio-button-dark](/assets/images/controls/kt-radio-button/kt-radio-button-dark.png?v=639231969202492391){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| ::: tag "Background_Checked" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background Checked.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| ::: tag "Border_Checked" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the panel's border color.* |
| ::: tag "BorderEdges" icon:wrench | ::: tag "Edges" color:#6B7C94 icon:check-check  | *Sets the Border edges.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground.* |
| ::: tag "Foreground_Checked" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground Checked.* |
| ::: tag "IconColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Icon color.* |
| ::: tag "IconColor_Checked" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the IconColor Checked.* |
| ::: tag "Pattern" icon:wrench | ::: tag "Kt-Pattern" color:#6B7C94 icon:check-check  | *Sets the Pattern.* |
| ::: tag "IconStroke" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8  | *Sets the Icon stroke.* |
| ::: tag "ImageAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the image that will be displayed on the control.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8  | *The alignment of the text that will be displayed on the control.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the panel's border style.* |
| ::: tag "BorderStyle_Checked" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the BorderStyle Checked.* |
| ::: tag "IconSize" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Icon size.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Border width.* |
| ::: tag "Icon" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon.* |
| ::: tag "Icon_Checked" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon Checked.* |
| ::: tag "Value" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Value.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *The cursor that appears when the pointer moves over the control.* |
| ::: tag "BorderMargin" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Sets the border Margin.* |
| ::: tag "Padding" icon:wrench | ::: tag "Padding" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.padding?view=netframework-4.8  | *Specifies the interior spacing of a control.* |
