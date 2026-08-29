---
type: concept
title: "KimTools / Controls / TextBox"
description: "An enhanced, highly flexible text input control for Modern WinForms supporting custom styles, SVG icons, and automatic casing."
source: "https://kimtoo.net/controls/kt-text-box/"
path: /controls/kt-text-box/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:13:49.974Z"
---
---
title: "KimTools / Controls / TextBox"
description: "An enhanced, highly flexible text input control for Modern WinForms supporting custom styles, SVG icons, and automatic casing."
keywords: ["KimTools", "Controls", "KtTextBox", "TextBox", "UserControl"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `TextBox`
An enhanced, highly flexible text input control for Modern WinForms supporting custom styles, SVG icons, and automatic casing.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-text-box-light](/assets/images/screenshots/kt-text-box/kt-text-box-light.png?v=639234525668358539){ .light .snapshot} ![kt-text-box-dark](/assets/images/screenshots/kt-text-box/kt-text-box-dark.png?v=639234525668358539){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::
### Style
| ::: tag "Style" icon:wrench | ::: tag "Kt-TextBoxStyle" color:#6B7C94 icon:check-check  | *Sets the TextBox's style.* |
| -------- | ------- | ----------- |
### TextPlaceholder
| ::: tag "TextPlaceholder" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the TextBox's placeholder.* |
| -------- | ------- | ----------- |
### TextCasing
| ::: tag "TextCasing" icon:wrench | ::: tag "Kt-TextCasing" color:#6B7C94 icon:check-check  | *Sets the input character casing.* |
| -------- | ------- | ----------- |
### IconLeft
| ::: tag "IconLeft" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon left.* |
| -------- | ------- | ----------- |
### IconRight
| ::: tag "IconRight" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon right.* |
| -------- | ------- | ----------- |
### Loading
| ::: tag "Loading" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether to show loader* |
| -------- | ------- | ----------- |
### Password
| ::: tag "Password" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether the text in the TextBox control should appear as the default password character.* |
| -------- | ------- | ----------- |
### Bg
| ::: tag "Bg" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Bg.* |
| -------- | ------- | ----------- |
### Border
| ::: tag "Border" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Border.* |
| -------- | ------- | ----------- |
### BorderActive
| ::: tag "BorderActive" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Border active.* |
| -------- | ------- | ----------- |
### BorderRadius
| ::: tag "BorderRadius" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the TextBox's border radius.* |
| -------- | ------- | ----------- |

::: hero layout:split glow:true
## SVG Icon Slots
Add visual clarity using built-in SVG icons on the left or right of the input via `IconLeft` and `IconRight`.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 300,
    Height = 110,
    BackColor = Color.Transparent
};
	
var searchInput = new KtTextBox
{
    MinimumSize = new Size(280, 40),
    TextPlaceholder = "Search...",
    IconLeft = "search",
    IconRight = "close",
    Style = KtTextBox.KtTextBoxStyle.Tailwind,
    BorderActive = KtColor.INFO
};
	
var passwordInput = new KtTextBox
{
    MinimumSize = new Size(280, 40),
    TextPlaceholder = "Enter Password",
    Password = true,
    IconLeft = "lock",
    IconRight = "eye",
    Style = KtTextBox.KtTextBoxStyle.Fluent,
    BorderActive = KtColor.WARNING
};
	
panel.Controls.Add(searchInput);
panel.Controls.Add(passwordInput);
	
searchInput.Location = new Point(10, 10);
passwordInput.Location = new Point(10, 60);
```
== side
::: tabs
== tab "Auto" icon:app-window
![textbox-icons-light](/assets/images/screenshots/kt-text-box/textbox-icons-light.png?v=639234525711153437){ .light .snapshot} ![textbox-icons-dark](/assets/images/screenshots/kt-text-box/textbox-icons-dark.png?v=639234525711153437){.dark .snapshot}

== tab "Light" icon:sun
![textbox-icons-light](/assets/images/screenshots/kt-text-box/textbox-icons-light.png?v=639234525711153437){  .snapshot}

== tab "Dark" icon:moon
![textbox-icons-dark](/assets/images/screenshots/kt-text-box/textbox-icons-dark.png?v=639234525711153437){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Async Loading State
Set `Loading = true` to show an active spinner indicator and automatically disable user input during processing.
```csharp "🔴 🟡 🟢"
var panel = new Panel
{
    Width = 300,
    Height = 60,
    BackColor = Color.Transparent
};
	
var loadingInput = new KtTextBox
{
    MinimumSize = new Size(280, 40),
    Text = "Processing request...",
    Loading = true,
    Style = KtTextBox.KtTextBoxStyle.Tailwind,
    BorderActive = KtColor.ERROR
};
	
panel.Controls.Add(loadingInput);
loadingInput.Location = new Point(10, 10);
```
== side
::: tabs
== tab "Auto" icon:app-window
![textbox-loading-light](/assets/images/screenshots/kt-text-box/textbox-loading-light.png?v=639234525730082222){ .light .snapshot} ![textbox-loading-dark](/assets/images/screenshots/kt-text-box/textbox-loading-dark.png?v=639234525730082222){.dark .snapshot}

== tab "Light" icon:sun
![textbox-loading-light](/assets/images/screenshots/kt-text-box/textbox-loading-light.png?v=639234525730082222){  .snapshot}

== tab "Dark" icon:moon
![textbox-loading-dark](/assets/images/screenshots/kt-text-box/textbox-loading-dark.png?v=639234525730082222){ .snapshot}

:::
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Bg" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Bg.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Border.* |
| ::: tag "BorderActive" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Border active.* |
| ::: tag "Content" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Content.* |
| ::: tag "Style" icon:wrench | ::: tag "Kt-TextBoxStyle" color:#6B7C94 icon:check-check  | *Sets the TextBox's style.* |
| ::: tag "TextCasing" icon:wrench | ::: tag "Kt-TextCasing" color:#6B7C94 icon:check-check  | *Sets the input character casing.* |
| ::: tag "AcceptsReturn" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether pressing ENTER in a multiline TextBox control creates a new line of text in the control or activates the default button for the form.* |
| ::: tag "AcceptsTab" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether pressing the TAB key in a multiline text box control types a TAB character in the control instead of moving the focus to the next control in the tab order.* |
| ::: tag "AutoSizeHeight" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether the control can respond to user interaction.* |
| ::: tag "Enabled" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether the control can respond to user interaction.* |
| ::: tag "HideSelection" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether the selected text in the text box control remains highlighted when the control loses focus.* |
| ::: tag "Loading" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether to show loader* |
| ::: tag "Modified" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value that indicates that the text box control has been modified by the user since the control was created or its contents were last set.* |
| ::: tag "Password" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether the text in the TextBox control should appear as the default password character.* |
| ::: tag "ReadOnly" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Sets a value indicating whether text in the text box is read-only.* |
| ::: tag "ShortcutsEnabled" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Gets or sets a value indicating whether the defined shortcuts are enabled.* |
| ::: tag "TextWrap" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8  | *Indicates whether a multiline text box control automatically wraps words to the beginning of the next line when necessary.* |
| ::: tag "PasswordChar" icon:wrench | ::: tag "Char" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.char?view=netframework-4.8  | *Gets or sets the character used to mask characters of a password in a single-line TextBox control.* |
| ::: tag "IconStroke" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8  | *Sets the Icon stroke.* |
| ::: tag "ForeColor" icon:wrench | ::: tag "Color" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.color?view=netframework-4.8  | *Sets the TextBox's foreground color.* |
| ::: tag "DefaultFont" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the text input's font.* |
| ::: tag "CustomIconLeft" icon:wrench | ::: tag "Image" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.image?view=netframework-4.8  | *Sets the TextBox's left icon.* |
| ::: tag "CustomIconRight" icon:wrench | ::: tag "Image" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.image?view=netframework-4.8  | *Sets the TextBox's right icon.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the TextBox's border radius.* |
| ::: tag "BorderThickness" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets TextBox's border thickness.* |
| ::: tag "IconPadding" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the TextBox's padding for both the left and the right icon.* |
| ::: tag "IconSize" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the Icon size.* |
| ::: tag "MaxLength" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Gets or sets the maximum number of characters the user can type or paste into the text box control.* |
| ::: tag "SelectionLength" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Gets or sets the number of characters selected in the text box.* |
| ::: tag "SelectionStart" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Gets or sets the starting point of text selected in the text box.* |
| ::: tag "TextOffsetX" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the TextBox's left margin.* |
| ::: tag "TextOffsetY" icon:wrench | ::: tag "Int32" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.int32?view=netframework-4.8  | *Sets the TextBox's top margin.* |
| ::: tag "IconLeft" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon left.* |
| ::: tag "IconRight" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the Icon right.* |
| ::: tag "TextPlaceholder" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the TextBox's placeholder.* |
| ::: tag "SelectedText" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Gets or sets a value indicating the currently selected text in the control.* |
| ::: tag "Text" icon:wrench | ::: tag "String" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.8  | *Sets the text input.* |
| ::: tag "Lines" icon:wrench | ::: tag "String[]" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.string[]?view=netframework-4.8  | *Gets or sets the lines of text in a text box control.* |
| ::: tag "AutoCompleteMode" icon:wrench | ::: tag "AutoCompleteMode" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.autocompletemode?view=netframework-4.8  | *Gets or sets an option that controls how automatic completion works for the TextBox.* |
| ::: tag "AutoCompleteSource" icon:wrench | ::: tag "AutoCompleteSource" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.autocompletesource?view=netframework-4.8  | *Gets or sets a value specifying the source of complete strings used for automatic completion.* |
| ::: tag "AutoCompleteCustomSource" icon:wrench | ::: tag "AutoCompleteStringCollection" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.autocompletestringcollection?view=netframework-4.8  | *Gets or sets a custom System.Collections.Specialized.StringCollection to use when the AutoCompleteSource property is set to CustomSource.* |
| ::: tag "Cursor" icon:wrench | ::: tag "Cursor" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.cursor?view=netframework-4.8  | *Represents the image used to paint the mouse pointer.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "HorizontalAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.horizontalalignment?view=netframework-4.8  | *Gets or sets how text is aligned in a TextBox control.* |
| ::: tag "ScrollBars" icon:wrench | ::: tag "ScrollBars" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.scrollbars?view=netframework-4.8  | *Indicates which scroll bars will be shown when the TextBox is set to multiline.* |
