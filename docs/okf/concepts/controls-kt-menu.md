---
type: concept
title: "KimTools / Controls / Menu"
description: "An expandable tree-style navigation menu supporting independently themeable state styles, gradient highlights, custom connector lines, checkboxes, and inline badge tags."
source: "https://kimtoo.net/controls/kt-menu/"
path: /controls/kt-menu/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T11:21:04.610Z"
---
---
title: "KimTools / Controls / Menu"
description: "An expandable tree-style navigation menu supporting independently themeable state styles, gradient highlights, custom connector lines, checkboxes, and inline badge tags."
keywords: ["KimTools", "Controls", "KtMenu", "Menu", "TreeView"]
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Menu`
An expandable tree-style navigation menu supporting independently themeable state styles, gradient highlights, custom connector lines, checkboxes, and inline badge tags.
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-menu-light](/assets/images/screenshots/kt-menu/kt-menu-light.png?v=639234522594059472){ .light .snapshot} ![kt-menu-dark](/assets/images/screenshots/kt-menu/kt-menu-dark.png?v=639234522594059472){.dark .snapshot}
:::

::: callout success
#### 🟢 DESIGNER SUPPORT
**This control has full Visual Studio design-time support.**
Drag it from the Toolbox onto your form, customize its properties directly in the Properties window, and KimTools will generate the corresponding code for you.
:::

::: hero layout:split glow:true
## Flat / Minimal Design System
Soft tinted selection with no gradients. The selected state uses a low-opacity primary wash (`PRIMARY % 15`) with primary-colored text and a modest 6 px radius. No border, no shadow — just clean hierarchy through spacing and subtle color.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 340,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var menu = new KtMenu
{
    Width = 240,
    Height = 320,
    Margin = new Padding(5),
    ItemHeight = 34,
    Indent = 18,
    Menu = { Background = KtColor.BASE },
    MenuItem = { TextColor = KtColor.CONTENT },
    MenuItemSelected =
    {
        Background = (KtColor.PRIMARY,KtColor.SECONDARY),
        TextColor =Color.White,
        BorderRadius = 6
    }
};
	
menu.Nodes.AddRange(BuildNodes());
menu.ExpandAll();
menu.SelectedNode = menu.Nodes[0];
	
panel.Controls.Add(menu);
```
== side
::: tabs
== tab "Auto" icon:app-window
![menu-flat-light](/assets/images/screenshots/kt-menu/menu-flat-light.png?v=639234522691702882){ .light .snapshot} ![menu-flat-dark](/assets/images/screenshots/kt-menu/menu-flat-dark.png?v=639234522691702882){.dark .snapshot}

== tab "Light" icon:sun
![menu-flat-light](/assets/images/screenshots/kt-menu/menu-flat-light.png?v=639234522691702882){  .snapshot}

== tab "Dark" icon:moon
![menu-flat-dark](/assets/images/screenshots/kt-menu/menu-flat-dark.png?v=639234522691702882){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Neon / Dark Design System
A deep `BASE_1` background with pure white text. The active row pops with a vivid Fuchsia-to-Violet gradient at a 45° angle, wrapped in a 10 px rounded pill. High contrast and saturated accents give the UI an electric, modern feel.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 340,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var menu = new KtMenu
{
    Width = 240,
    Height = 320,
    Margin = new Padding(5),
    ItemHeight = 34,
    Indent = 18,
    Background = KtColor.BASE_1,
    Foreground = KtColor.CONTENT,
    MenuItemChecked =
    {
        Background = (KtColor.Fuchsia, KtColor.Violet),
        TextColor = Color.White,
        BorderRadius = 10
     },
    MenuItemSelected =
    {
        Background = (KtColor.Fuchsia, KtColor.Violet ),
        TextColor =Color.White,
        BorderRadius = 10
    }
};
	
menu.Nodes.AddRange(BuildNodes());
menu.ExpandAll();
menu.SelectedNode = menu.Nodes[2];
	
panel.Controls.Add(menu);
```
== side
::: tabs
== tab "Auto" icon:app-window
![menu-neon-light](/assets/images/screenshots/kt-menu/menu-neon-light.png?v=639234522740269185){ .light .snapshot} ![menu-neon-dark](/assets/images/screenshots/kt-menu/menu-neon-dark.png?v=639234522740269185){.dark .snapshot}

== tab "Light" icon:sun
![menu-neon-light](/assets/images/screenshots/kt-menu/menu-neon-light.png?v=639234522740269185){  .snapshot}

== tab "Dark" icon:moon
![menu-neon-dark](/assets/images/screenshots/kt-menu/menu-neon-dark.png?v=639234522740269185){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Pill / Rounded Design System
Fully capsule-shaped active rows with a 20 px border radius. The selection uses a calm Success-to-Info gradient on the default base background. Solid connector lines (`DashStyle.Solid`) reinforce the structured, friendly aesthetic.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 340,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var menu = new KtMenu
{
    Width = 240,
    Height = 320,
    Margin = new Padding(5),
    ItemHeight = 34,
    Indent = 18,
    LineStyle = DashStyle.Solid,
    LineWidth = 1f,
    Foreground = KtColor.CONTENT,
    Background = KtColor.BASE,
	
    MenuItemSelected =
    {
        Background = (KtColor.SUCCESS, KtColor.INFO),
        TextColor =Color.White,
        BorderRadius = 20
    }
};
	
menu.Nodes.AddRange(BuildNodes());
menu.ExpandAll();
menu.SelectedNode = menu.Nodes[3];
	
panel.Controls.Add(menu);
```
== side
::: tabs
== tab "Auto" icon:app-window
![menu-pill-light](/assets/images/screenshots/kt-menu/menu-pill-light.png?v=639234522788814123){ .light .snapshot} ![menu-pill-dark](/assets/images/screenshots/kt-menu/menu-pill-dark.png?v=639234522788814123){.dark .snapshot}

== tab "Light" icon:sun
![menu-pill-light](/assets/images/screenshots/kt-menu/menu-pill-light.png?v=639234522788803076){  .snapshot}

== tab "Dark" icon:moon
![menu-pill-dark](/assets/images/screenshots/kt-menu/menu-pill-dark.png?v=639234522788803076){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Inline Badges (`Tag`, `TagBackground`, `TagColor`, `TagVisible`)
Set a plain `string` on `TreeNode.Tag` and it renders as a compact badge next to the item label, styled through the owning `KtMenuStyle`'s `Tag*` properties. Useful for unread counts, "New" flags, or status chips — no custom cell renderer required.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 200,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var menu = new KtMenu
{
    Width = 240,
    Height = 180,
    Margin = new Padding(5),
    Foreground = KtColor.CONTENT,
    Background = KtColor.BASE,
    MenuItem =
    {
        TextColor = KtColor.CONTENT,
        TagBackground = KtColor.ERROR,
        TagColor =Color.White
    }
};
	
menu.Nodes.Add(new TreeNode("Inbox") { Tag = "12" });
menu.Nodes.Add(new TreeNode("Notifications") { Tag = "New" });
menu.Nodes.Add(new TreeNode("Billing") { Tag = "Beta" });
menu.Nodes.Add(new TreeNode("Archive"));
	
panel.Controls.Add(menu);
```
== side
::: tabs
== tab "Auto" icon:app-window
![menu-tags-light](/assets/images/screenshots/kt-menu/menu-tags-light.png?v=639234522836968139){ .light .snapshot} ![menu-tags-dark](/assets/images/screenshots/kt-menu/menu-tags-dark.png?v=639234522836968139){.dark .snapshot}

== tab "Light" icon:sun
![menu-tags-light](/assets/images/screenshots/kt-menu/menu-tags-light.png?v=639234522836968139){  .snapshot}

== tab "Dark" icon:moon
![menu-tags-dark](/assets/images/screenshots/kt-menu/menu-tags-dark.png?v=639234522836968139){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Selection & Check States (`MenuItemSelected`, `MenuItemChecked`)
The active row (`MenuItemSelected`) and any checked row (`MenuItemChecked`, with `CheckBoxes = true`) each carry their own independent style, so a highlighted selection and a completed/checked item read as visually distinct states within the same tree.
```csharp "🔴 🟡 🟢"
var panel = new FlowLayoutPanel
{
    Width = 260,
    Height = 260,
    Padding = new Padding(10),
    BackColor = Color.Transparent,
    AutoScroll = false
};
	
var menu = new KtMenu
{
    Width = 240,
    Height = 240,
    Margin = new Padding(5),
    CheckBoxes = true,
    Foreground = KtColor.CONTENT,
    Background = KtColor.BASE,
    MenuItem = { TextColor = KtColor.CONTENT },
    MenuItemSelected =
    {
        Background = (KtColor.PRIMARY, KtColor.SECONDARY, 45),
        TextColor =Color.White
    },
    MenuItemChecked =
    {
        Background = KtColor.SUCCESS % 20,
        TextColor = KtColor.SUCCESS
    }
};
	
var billing = new TreeNode("Billing") { Checked = true };
var security = new TreeNode("Security");
	
menu.Nodes.Add(new TreeNode("Dashboard"));
menu.Nodes.Add(billing);
menu.Nodes.Add(security);
menu.Nodes.Add(new TreeNode("Logout"));
	
menu.SelectedNode = security;
	
panel.Controls.Add(menu);
```
== side
::: tabs
== tab "Auto" icon:app-window
![menu-selection-states-light](/assets/images/screenshots/kt-menu/menu-selection-states-light.png?v=639234522885543499){ .light .snapshot} ![menu-selection-states-dark](/assets/images/screenshots/kt-menu/menu-selection-states-dark.png?v=639234522885543499){.dark .snapshot}

== tab "Light" icon:sun
![menu-selection-states-light](/assets/images/screenshots/kt-menu/menu-selection-states-light.png?v=639234522885543499){  .snapshot}

== tab "Dark" icon:moon
![menu-selection-states-dark](/assets/images/screenshots/kt-menu/menu-selection-states-dark.png?v=639234522885543499){ .snapshot}

:::
:::

### KtMenuStyle
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Background.* |
| ::: tag "Border" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Border.* |
| ::: tag "ImageFilter" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Image filter.* |
| ::: tag "TagBackground" icon:wrench | ::: tag "Kt-Brush" color:#820BF4 icon:corner-down-right url:/utilities/kt-brush  | *Sets the Tag background.* |
| ::: tag "TagColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Tag color.* |
| ::: tag "TextColor" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Text color.* |
| ::: tag "TagFont" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the Tag font.* |
| ::: tag "TextFont" icon:wrench | ::: tag "Font" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.font?view=netframework-4.8  | *Sets the Text font.* |
| ::: tag "ImageOffset" icon:wrench | ::: tag "Point" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.point?view=netframework-4.8  | *Sets the Image offset.* |
| ::: tag "TagOffset" icon:wrench | ::: tag "Point" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.point?view=netframework-4.8  | *Sets the Tag offset.* |
| ::: tag "TextOffset" icon:wrench | ::: tag "Point" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.point?view=netframework-4.8  | *Sets the Text offset.* |
| ::: tag "ImageVisible" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Image visible.* |
| ::: tag "TagVisible" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Tag visible.* |
| ::: tag "TextVisible" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Text visible.* |
| ::: tag "TextEllipsis" icon:wrench | ::: tag "Boolean" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.boolean?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Text ellipsis.* |
| ::: tag "BorderRadius" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border radius.* |
| ::: tag "BorderWidth" icon:wrench | ::: tag "Double" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.double?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border width.* |
| ::: tag "TextAlign" icon:wrench | ::: tag "ContentAlignment" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.contentalignment?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Text align.* |
| ::: tag "BorderStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8 ::: tag "Nullable" color:#F96A06 icon:circle-alert url:external:https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/builtin-types/nullable-value-types | *Sets the Border style.* |
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
| ::: tag "Background" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the  background color.* |
| ::: tag "Foreground" icon:wrench | ::: tag "Kt-Color" color:#820BF4 icon:corner-down-right url:/utilities/kt-color  | *Sets the Foreground color.* |
| ::: tag "Menu" icon:wrench | ::: tag "Kt-MenuStyle" color:#6B7C94 icon:check-check  | *Sets the Menu.* |
| ::: tag "MenuItem" icon:wrench | ::: tag "Kt-MenuStyle" color:#6B7C94 icon:check-check  | *Sets the Menu item.* |
| ::: tag "MenuItemChecked" icon:wrench | ::: tag "Kt-MenuStyle" color:#6B7C94 icon:check-check  | *Sets the Menu item checked.* |
| ::: tag "MenuItemSelected" icon:wrench | ::: tag "Kt-MenuStyle" color:#6B7C94 icon:check-check  | *Sets the Menu item selected.* |
| ::: tag "SubMenu" icon:wrench | ::: tag "Kt-MenuStyle" color:#6B7C94 icon:check-check  | *Sets the Sub menu.* |
| ::: tag "SubMenuExpanded" icon:wrench | ::: tag "Kt-MenuStyle" color:#6B7C94 icon:check-check  | *Sets the Sub menu expanded.* |
| ::: tag "LineStyle" icon:wrench | ::: tag "DashStyle" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.drawing.drawing2d.dashstyle?view=netframework-4.8  | *Sets the Line style.* |
| ::: tag "LineWidth" icon:wrench | ::: tag "float" color:#0B64F4 icon:external-link url:external:https://learn.microsoft.com/en-us/dotnet/api/system.single?view=netframework-4.8  | *Sets the Line width.* |
