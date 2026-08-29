---
type: concept
title: "KimTools / Controls / Select"
description: "A fully owner-drawn dropdown with rounded corners, theme-aware colors, adjustable indicator styles, and independent styling for the closed surface and dropdown list items."
source: "https://kimtoo.net/controls/kt-select/"
path: /controls/kt-select/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T20:11:34.632Z"
---
---
title: "KimTools / Controls / Select"
description: "A fully owner-drawn dropdown with rounded corners, theme-aware colors, adjustable indicator styles, and independent styling for the closed surface and dropdown list items."
keywords: ["KimTools", "Controls", "KtSelect", "Select", "ComboBox"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Select`
A fully owner-drawn dropdown with rounded corners, theme-aware colors, adjustable indicator styles, and independent styling for the closed surface and dropdown list items.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-select-light](/assets/images/screenshots/kt-select/kt-select-light.png?v=639234658074362850){ .light .snapshot} ![kt-select-dark](/assets/images/screenshots/kt-select/kt-select-dark.png?v=639234658074362850){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
```csharp "🔴 🟡 🟢"
var select = new KtSelect();
```

::: hero layout:split glow:true
## Flat / Minimal Select
A thin-bordered, low-radius dropdown with an outline indicator. Muted `BASE_3` border on a `BASE` surface keeps the control unobtrusive in dense forms.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 300,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var select = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE,
    BorderColor = KtColor.BASE_3,
    BorderRadius = 4,
    TextColor = KtColor.CONTENT,
    IndicatorColor = KtColor.CONTENT % 50,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
    FillIndicator = false,
    ItemBackColor = KtColor.BASE,
    ItemForeColor = KtColor.CONTENT,
    ItemHighLightColor = KtColor.PRIMARY % 15,
    ItemHighLightForeColor = KtColor.PRIMARY,
    ItemBorderColor = KtColor.BASE_3 % 20,
};
	
select.Items.AddRange(["Option A", "Option B", "Option C"]);
select.SelectedIndex = 0;
	
panel.Controls.Add(select);
```
== side
::: tabs
== tab "Auto" icon:app-window
![select-flat-light](/assets/images/screenshots/kt-select/select-flat-light.png?v=639234658135916863){ .light .snapshot} ![select-flat-dark](/assets/images/screenshots/kt-select/select-flat-dark.png?v=639234658135916863){.dark .snapshot}

== tab "Light" icon:sun
![select-flat-light](/assets/images/screenshots/kt-select/select-flat-light.png?v=639234658135911254){  .snapshot}

== tab "Dark" icon:moon
![select-flat-dark](/assets/images/screenshots/kt-select/select-flat-dark.png?v=639234658135911254){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Pill / Rounded Select
A thick-bordered capsule with a filled primary indicator. `BorderRadius = 20` and `DropdownBorderThickness.Thick` give the control a bold, button-like presence.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 300,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var select = new KtSelect
{
    Width = 260,
    Height = 40,
    Margin = new Padding(5),
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.PRIMARY,
    BorderRadius = 20,
    TextColor = KtColor.CONTENT,
    IndicatorColor = KtColor.PRIMARY,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thick,
    FillIndicator = true,
    ItemBackColor = KtColor.BASE_2,
    ItemForeColor = KtColor.CONTENT,
    ItemHighLightColor = KtColor.PRIMARY,
    ItemHighLightForeColor = KtColor.White,
    ItemBorderColor = KtColor.BASE_3 % 30,
};
	
select.Items.AddRange(["Active", "Paused", "Archived"]);
select.SelectedIndex = 0;
	
panel.Controls.Add(select);
```
== side
::: tabs
== tab "Auto" icon:app-window
![select-pill-light](/assets/images/screenshots/kt-select/select-pill-light.png?v=639234658176451713){ .light .snapshot} ![select-pill-dark](/assets/images/screenshots/kt-select/select-pill-dark.png?v=639234658176451713){.dark .snapshot}

== tab "Light" icon:sun
![select-pill-light](/assets/images/screenshots/kt-select/select-pill-light.png?v=639234658176441656){  .snapshot}

== tab "Dark" icon:moon
![select-pill-dark](/assets/images/screenshots/kt-select/select-pill-dark.png?v=639234658176441656){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Text & Indicator Alignment (`TextAlignment`, `IndicatorAlignment`)
Position the label and chevron independently. `TextAlign.Left` with `Indicator.Right` is the default. Swap to `TextAlign.Right` + `Indicator.Left` for RTL-friendly layouts or centered headers.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 300,
    Height = 220,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var left = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.PRIMARY % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT,
    IndicatorColor = !KtColor.BASE_2,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
};
	
var center = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.PRIMARY % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT,
    IndicatorColor = !KtColor.BASE_2,
    TextAlignment = KtSelect.TextAlign.Center,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
};
	
var right = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.PRIMARY % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT,
    IndicatorColor = !KtColor.BASE_2,
    TextAlignment = KtSelect.TextAlign.Right,
    IndicatorAlignment = KtSelect.Indicator.Left,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
};
	
left.Items.AddRange(["Left aligned", "Center aligned", "Right aligned"]);
center.Items.AddRange(["Left aligned", "Center aligned", "Right aligned"]);
right.Items.AddRange(["Left aligned", "Center aligned", "Right aligned"]);
	
left.SelectedIndex = 0;
center.SelectedIndex = 1;
right.SelectedIndex = 2;
	
panel.Controls.Add(left);
panel.Controls.Add(center);
panel.Controls.Add(right);
```
== side
::: tabs
== tab "Auto" icon:app-window
![select-alignment-light](/assets/images/screenshots/kt-select/select-alignment-light.png?v=639234658217789133){ .light .snapshot} ![select-alignment-dark](/assets/images/screenshots/kt-select/select-alignment-dark.png?v=639234658217789133){.dark .snapshot}

== tab "Light" icon:sun
![select-alignment-light](/assets/images/screenshots/kt-select/select-alignment-light.png?v=639234658217789133){  .snapshot}

== tab "Dark" icon:moon
![select-alignment-dark](/assets/images/screenshots/kt-select/select-alignment-dark.png?v=639234658217789133){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Indicator Styles (`FillIndicator`, `DropdownBorderThickness`)
`FillIndicator = false` draws a hollow chevron; `true` fills it. Pair with `DropdownBorderThickness.Thick` to make the indicator visually heavier.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 300,
    Height = 160,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var outline = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.PRIMARY % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT,
    IndicatorColor = KtColor.PRIMARY,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
    FillIndicator = false,
};
	
var filled = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.PRIMARY % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT,
    IndicatorColor = KtColor.PRIMARY,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thick,
    FillIndicator = true,
};
	
outline.Items.AddRange(["Outline indicator", "Filled indicator"]);
filled.Items.AddRange(["Outline indicator", "Filled indicator"]);
	
outline.SelectedIndex = 0;
filled.SelectedIndex = 1;
	
panel.Controls.Add(outline);
panel.Controls.Add(filled);
```
== side
::: tabs
== tab "Auto" icon:app-window
![select-indicator-light](/assets/images/screenshots/kt-select/select-indicator-light.png?v=639234658258608959){ .light .snapshot} ![select-indicator-dark](/assets/images/screenshots/kt-select/select-indicator-dark.png?v=639234658258608959){.dark .snapshot}

== tab "Light" icon:sun
![select-indicator-light](/assets/images/screenshots/kt-select/select-indicator-light.png?v=639234658258608959){  .snapshot}

== tab "Dark" icon:moon
![select-indicator-dark](/assets/images/screenshots/kt-select/select-indicator-dark.png?v=639234658258608959){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Disabled State (`DisabledBackColor`, `DisabledBorderColor`, `DisabledForeColor`, `DisabledIndicatorColor`)
When `Enabled = false`, the control swaps to its disabled palette. Each surface — background, border, text, and indicator — can be tuned independently for accessible contrast.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 300,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var select = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Enabled = false,
    Bg = KtColor.BASE_2,
    BorderColor = KtColor.BASE_3 % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT % 50,
    IndicatorColor = KtColor.CONTENT % 25,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
    DisabledBackColor = KtColor.BASE_2,
    DisabledBorderColor = KtColor.BASE_3 % 50,
    DisabledForeColor = KtColor.CONTENT % 50,
    DisabledIndicatorColor = KtColor.CONTENT % 25,
};
	
select.Items.AddRange(["Unavailable", "Offline", "Restricted"]);
select.SelectedIndex = 0;
	
panel.Controls.Add(select);
```
== side
::: tabs
== tab "Auto" icon:app-window
![select-disabled-light](/assets/images/screenshots/kt-select/select-disabled-light.png?v=639234658299077378){ .light .snapshot} ![select-disabled-dark](/assets/images/screenshots/kt-select/select-disabled-dark.png?v=639234658299077378){.dark .snapshot}

== tab "Light" icon:sun
![select-disabled-light](/assets/images/screenshots/kt-select/select-disabled-light.png?v=639234658299077378){  .snapshot}

== tab "Dark" icon:moon
![select-disabled-dark](/assets/images/screenshots/kt-select/select-disabled-dark.png?v=639234658299077378){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dropdown List Styling (`ItemBackColor`, `ItemHighLightColor`, `ItemBorderColor`)
The opened list is fully owner-drawn. Set `ItemBackColor` for the list surface, `ItemHighLightColor` for the active row, and `ItemBorderColor` for the separators. `ItemTopMargin` and `TextLeftMargin` fine-tune item padding.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 300,
    Height = 120,
    Padding = new Padding(20),
    BackColor = Color.Transparent,
    AutoScroll = false,
    FlowDirection = FlowDirection.TopDown
};
	
var select = new KtSelect
{
    Width = 260,
    Height = 36,
    Margin = new Padding(5),
    Bg = KtColor.BASE_1,
    BorderColor = KtColor.SUCCESS % 50,
    BorderRadius = 14,
    TextColor = KtColor.CONTENT,
    IndicatorColor = KtColor.SUCCESS,
    TextAlignment = KtSelect.TextAlign.Left,
    IndicatorAlignment = KtSelect.Indicator.Right,
    DropdownBorderThickness = KtSelect.BorderThickness.Thin,
    FillIndicator = true,
    ItemBackColor = KtColor.BASE_1,
    ItemForeColor = KtColor.CONTENT,
    ItemHighLightColor = KtColor.SUCCESS,
    ItemHighLightForeColor = KtColor.White,
    ItemBorderColor = KtColor.BASE_3 % 30,
    ItemTopMargin = 2,
    TextLeftMargin = 8,
};
	
select.Items.AddRange(["Deploy", "Staging", "Production", "Rollback"]);
select.SelectedIndex = 2;
	
panel.Controls.Add(select);
```
== side
::: tabs
== tab "Auto" icon:app-window
![select-list-theme-light](/assets/images/screenshots/kt-select/select-list-theme-light.png?v=639234658339489331){ .light .snapshot} ![select-list-theme-dark](/assets/images/screenshots/kt-select/select-list-theme-dark.png?v=639234658339489331){.dark .snapshot}

== tab "Light" icon:sun
![select-list-theme-light](/assets/images/screenshots/kt-select/select-list-theme-light.png?v=639234658339489331){  .snapshot}

== tab "Dark" icon:moon
![select-list-theme-dark](/assets/images/screenshots/kt-select/select-list-theme-dark.png?v=639234658339489331){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "IndicatorColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the indicator color.* |
| ::: tag "ItemForeColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the default items' fore color.* |
| ::: tag "DisabledBackColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's back color when disabled.* |
| ::: tag "DisabledBorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's border color when disabled.* |
| ::: tag "DisabledIndicatorColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's indicator color when disabled.* |
| ::: tag "DisabledForeColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's fore color when disabled.* |
| ::: tag "ItemHighLightColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the highlighted item's back color.* |
| ::: tag "ItemHighLightForeColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the highlighted item's fore color.* |
| ::: tag "BorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets dropdown's border color.* |
| ::: tag "Bg" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's background color.* |
| ::: tag "ItemBorderColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's items border color.* |
| ::: tag "ItemBackColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the background color of the dropdown list.* |
| ::: tag "TextColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the dropdown's fore color.* |
| ::: tag "DisabledColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Disabled color.* |
| ::: tag "DropdownBorderThickness" icon:wrench | ::: tag "BorderThickness" color:#6B7C94 icon:check-check  | *Sets the dropdown's border thickness.* |
| ::: tag "Direction" icon:wrench | ::: tag "Directions" color:#6B7C94 icon:check-check  | *Sets the Direction.* |
| ::: tag "IndicatorAlignment" icon:wrench | ::: tag "Indicator" color:#6B7C94 icon:check-check  | *Sets the indicator's alignment position.* |
| ::: tag "IndicatorLocation" icon:wrench | ::: tag "Indicator" color:#6B7C94 icon:check-check  | *Sets the Indicator location.* |
| ::: tag "TextAlignment" icon:wrench | ::: tag "TextAlign" color:#6B7C94 icon:check-check  | *Sets the default text alignment.* |
| ::: tag "DropDownTextAlign" icon:wrench | ::: tag "TextAlign" color:#6B7C94 icon:check-check  | *Sets the Drop down text align.* |
| ::: tag "Enabled" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Enables or Disables the control* |
| ::: tag "FillIndicator" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value inidicating whether the indicator will be filled.* |
| ::: tag "FillDropDown" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets the Fill drop down.* |
| ::: tag "Font" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the dropdown's font.* |
| ::: tag "ItemHeight" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the dropdown's height.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the dropdown's border radius.* |
| ::: tag "TextLeftMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the margin between the dropdown's text and its borders.* |
| ::: tag "ItemTopMargin" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the margin between each dropdown's item and the items container.* |
| ::: tag "Height" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the dropdown's item height.* |
| ::: tag "Width" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets dropdown's item width.* |
| ::: tag "Text" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the dropdown's text.* |
