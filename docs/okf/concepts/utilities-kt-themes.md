---
type: concept
title: "KimTools / Themes"
description: "Semantic UI themes inspired by Tailwind CSS and daisyUI."
source: "https://kimtoo.net/utilities/kt-themes/"
path: /utilities/kt-themes/
updated: 2026-08-25
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-25T11:12:21.311Z"
---
---
title: "KimTools / Themes"
description: "Semantic UI themes inspired by Tailwind CSS and daisyUI."
toc: false
layout: "full"
---

::: hero layout:split glow:true
# Kt `Themes`
Kimtools Modern themes inspired by `Taiwlind` and `DaisyUI` themes
::: callout tip
#### 🟣 PREMIUM
This component is only available in the Premium version of KimTools.
::: button "Get KimTools"  external:https://kimtoo.net/#pricinghttps://kimtoo.net/#pricing icon:external-link

:::

== side
![kt-themes-light](/assets/images/screenshots/kt-themes/kt-themes-light.png?v=639232636817705895){ .light .snapshot} ![kt-themes-dark](/assets/images/screenshots/kt-themes/kt-themes-dark.png?v=639232636817705895){.dark .snapshot}
:::
<!-- -->

::: callout info
### GLOBAL THEMING
KimTools theming is currently global, meaning the active theme applies across the application.
:::
Use `KtColor.@default()` to override semantic color variables in the current global theme.
```csharp "🔴 🟡 🟢"
// KtColor.@default() to change semantic variables of your current theme
KtColor.@default("Base_1", Color.WhiteSmoke);
KtColor.@default("Base_2", Color.FromArgb(226, 232, 240));
KtColor.@default("Base_3", Color.FromArgb(202, 213, 226));
KtColor.@default("Content", Color.FromArgb(51, 51, 56));
KtColor.@default("Primary", Color.FromArgb(99, 102, 241));
KtColor.@default("PrimaryContent", Color.FromArgb(237, 237, 242));
KtColor.@default("Secondary", Color.FromArgb(244, 114, 182));
KtColor.@default("SecondaryContent", Color.FromArgb(242, 239, 241));
KtColor.@default("Accent", Color.FromArgb(55, 219, 204));
KtColor.@default("AccentContent", Color.FromArgb(72, 94, 97));
KtColor.@default("Neutral", Color.FromArgb(33, 33, 38));
KtColor.@default("NeutralContent", Color.FromArgb(235, 235, 235));
KtColor.@default("Info", Color.FromArgb(102, 166, 255));
KtColor.@default("InfoContent", Color.FromArgb(54, 64, 89));
KtColor.@default("Success", Color.FromArgb(54, 211, 153));
KtColor.@default("SuccessContent", Color.FromArgb(63, 92, 79));
KtColor.@default("Warning", Color.FromArgb(251, 189, 35));
KtColor.@default("WarningContent", Color.FromArgb(102, 77, 3));
KtColor.@default("Error", Color.FromArgb(239, 105, 80));
KtColor.@default("ErrorContent", Color.FromArgb(71, 37, 33));
	
// Call Render to invoke global theme change event handler
// Pass true , false to set mode [dark | light]
// Pass null to inherit current mode.
KtColor.Render(null);
```

::: callout success
### 35 INCLUDED THEMES
The configuration below shows the colors and semantic roles used by this theme.
:::

::: hero layout:split glow:true
## Cupcake
Cupcake theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Cupcake();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Cupcake-light](/assets/images/screenshots/kt-themes/Cupcake-light.png?v=639232636857716059){ .light .snapshot} ![Cupcake-dark](/assets/images/screenshots/kt-themes/Cupcake-dark.png?v=639232636857716059){.dark .snapshot}

== tab "Light" icon:sun
![Cupcake-light](/assets/images/screenshots/kt-themes/Cupcake-light.png?v=639232636857716059){  .snapshot}

== tab "Dark" icon:moon
![Cupcake-dark](/assets/images/screenshots/kt-themes/Cupcake-dark.png?v=639232636857716059){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Bumblebee
Bumblebee theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Bumblebee();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Bumblebee-light](/assets/images/screenshots/kt-themes/Bumblebee-light.png?v=639232636871458705){ .light .snapshot} ![Bumblebee-dark](/assets/images/screenshots/kt-themes/Bumblebee-dark.png?v=639232636871458705){.dark .snapshot}

== tab "Light" icon:sun
![Bumblebee-light](/assets/images/screenshots/kt-themes/Bumblebee-light.png?v=639232636871458705){  .snapshot}

== tab "Dark" icon:moon
![Bumblebee-dark](/assets/images/screenshots/kt-themes/Bumblebee-dark.png?v=639232636871458705){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Emerald
Emerald theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Emerald();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Emerald-light](/assets/images/screenshots/kt-themes/Emerald-light.png?v=639232636885887440){ .light .snapshot} ![Emerald-dark](/assets/images/screenshots/kt-themes/Emerald-dark.png?v=639232636885887440){.dark .snapshot}

== tab "Light" icon:sun
![Emerald-light](/assets/images/screenshots/kt-themes/Emerald-light.png?v=639232636885887440){  .snapshot}

== tab "Dark" icon:moon
![Emerald-dark](/assets/images/screenshots/kt-themes/Emerald-dark.png?v=639232636885887440){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Corporate
Corporate theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Corporate();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Corporate-light](/assets/images/screenshots/kt-themes/Corporate-light.png?v=639232636901515653){ .light .snapshot} ![Corporate-dark](/assets/images/screenshots/kt-themes/Corporate-dark.png?v=639232636901515653){.dark .snapshot}

== tab "Light" icon:sun
![Corporate-light](/assets/images/screenshots/kt-themes/Corporate-light.png?v=639232636901515653){  .snapshot}

== tab "Dark" icon:moon
![Corporate-dark](/assets/images/screenshots/kt-themes/Corporate-dark.png?v=639232636901515653){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Synthwave
Synthwave theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Synthwave();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Synthwave-light](/assets/images/screenshots/kt-themes/Synthwave-light.png?v=639232636915825761){ .light .snapshot} ![Synthwave-dark](/assets/images/screenshots/kt-themes/Synthwave-dark.png?v=639232636915825761){.dark .snapshot}

== tab "Light" icon:sun
![Synthwave-light](/assets/images/screenshots/kt-themes/Synthwave-light.png?v=639232636915825761){  .snapshot}

== tab "Dark" icon:moon
![Synthwave-dark](/assets/images/screenshots/kt-themes/Synthwave-dark.png?v=639232636915825761){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Retro
Retro theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Retro();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Retro-light](/assets/images/screenshots/kt-themes/Retro-light.png?v=639232636930305592){ .light .snapshot} ![Retro-dark](/assets/images/screenshots/kt-themes/Retro-dark.png?v=639232636930305592){.dark .snapshot}

== tab "Light" icon:sun
![Retro-light](/assets/images/screenshots/kt-themes/Retro-light.png?v=639232636930305592){  .snapshot}

== tab "Dark" icon:moon
![Retro-dark](/assets/images/screenshots/kt-themes/Retro-dark.png?v=639232636930305592){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Cyberpunk
Cyberpunk theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Cyberpunk();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Cyberpunk-light](/assets/images/screenshots/kt-themes/Cyberpunk-light.png?v=639232636944594786){ .light .snapshot} ![Cyberpunk-dark](/assets/images/screenshots/kt-themes/Cyberpunk-dark.png?v=639232636944594786){.dark .snapshot}

== tab "Light" icon:sun
![Cyberpunk-light](/assets/images/screenshots/kt-themes/Cyberpunk-light.png?v=639232636944594786){  .snapshot}

== tab "Dark" icon:moon
![Cyberpunk-dark](/assets/images/screenshots/kt-themes/Cyberpunk-dark.png?v=639232636944594786){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Valentine
Valentine theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Valentine();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Valentine-light](/assets/images/screenshots/kt-themes/Valentine-light.png?v=639232636957957297){ .light .snapshot} ![Valentine-dark](/assets/images/screenshots/kt-themes/Valentine-dark.png?v=639232636957957297){.dark .snapshot}

== tab "Light" icon:sun
![Valentine-light](/assets/images/screenshots/kt-themes/Valentine-light.png?v=639232636957957297){  .snapshot}

== tab "Dark" icon:moon
![Valentine-dark](/assets/images/screenshots/kt-themes/Valentine-dark.png?v=639232636957957297){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Halloween
Halloween theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Halloween();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Halloween-light](/assets/images/screenshots/kt-themes/Halloween-light.png?v=639232636971524750){ .light .snapshot} ![Halloween-dark](/assets/images/screenshots/kt-themes/Halloween-dark.png?v=639232636971524750){.dark .snapshot}

== tab "Light" icon:sun
![Halloween-light](/assets/images/screenshots/kt-themes/Halloween-light.png?v=639232636971524750){  .snapshot}

== tab "Dark" icon:moon
![Halloween-dark](/assets/images/screenshots/kt-themes/Halloween-dark.png?v=639232636971524750){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Garden
Garden theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Garden();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Garden-light](/assets/images/screenshots/kt-themes/Garden-light.png?v=639232636985099429){ .light .snapshot} ![Garden-dark](/assets/images/screenshots/kt-themes/Garden-dark.png?v=639232636985099429){.dark .snapshot}

== tab "Light" icon:sun
![Garden-light](/assets/images/screenshots/kt-themes/Garden-light.png?v=639232636985099429){  .snapshot}

== tab "Dark" icon:moon
![Garden-dark](/assets/images/screenshots/kt-themes/Garden-dark.png?v=639232636985099429){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Forest
Forest theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Forest();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Forest-light](/assets/images/screenshots/kt-themes/Forest-light.png?v=639232636998547084){ .light .snapshot} ![Forest-dark](/assets/images/screenshots/kt-themes/Forest-dark.png?v=639232636998547084){.dark .snapshot}

== tab "Light" icon:sun
![Forest-light](/assets/images/screenshots/kt-themes/Forest-light.png?v=639232636998547084){  .snapshot}

== tab "Dark" icon:moon
![Forest-dark](/assets/images/screenshots/kt-themes/Forest-dark.png?v=639232636998547084){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Aqua
Aqua theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Aqua();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Aqua-light](/assets/images/screenshots/kt-themes/Aqua-light.png?v=639232637011696525){ .light .snapshot} ![Aqua-dark](/assets/images/screenshots/kt-themes/Aqua-dark.png?v=639232637011696525){.dark .snapshot}

== tab "Light" icon:sun
![Aqua-light](/assets/images/screenshots/kt-themes/Aqua-light.png?v=639232637011686792){  .snapshot}

== tab "Dark" icon:moon
![Aqua-dark](/assets/images/screenshots/kt-themes/Aqua-dark.png?v=639232637011686792){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Lofi
Lofi theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Lofi();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Lofi-light](/assets/images/screenshots/kt-themes/Lofi-light.png?v=639232637025229842){ .light .snapshot} ![Lofi-dark](/assets/images/screenshots/kt-themes/Lofi-dark.png?v=639232637025229842){.dark .snapshot}

== tab "Light" icon:sun
![Lofi-light](/assets/images/screenshots/kt-themes/Lofi-light.png?v=639232637025215831){  .snapshot}

== tab "Dark" icon:moon
![Lofi-dark](/assets/images/screenshots/kt-themes/Lofi-dark.png?v=639232637025215831){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Pastel
Pastel theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Pastel();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Pastel-light](/assets/images/screenshots/kt-themes/Pastel-light.png?v=639232637038288452){ .light .snapshot} ![Pastel-dark](/assets/images/screenshots/kt-themes/Pastel-dark.png?v=639232637038288452){.dark .snapshot}

== tab "Light" icon:sun
![Pastel-light](/assets/images/screenshots/kt-themes/Pastel-light.png?v=639232637038278997){  .snapshot}

== tab "Dark" icon:moon
![Pastel-dark](/assets/images/screenshots/kt-themes/Pastel-dark.png?v=639232637038278997){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Fantasy
Fantasy theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Fantasy();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Fantasy-light](/assets/images/screenshots/kt-themes/Fantasy-light.png?v=639232637051545757){ .light .snapshot} ![Fantasy-dark](/assets/images/screenshots/kt-themes/Fantasy-dark.png?v=639232637051545757){.dark .snapshot}

== tab "Light" icon:sun
![Fantasy-light](/assets/images/screenshots/kt-themes/Fantasy-light.png?v=639232637051545757){  .snapshot}

== tab "Dark" icon:moon
![Fantasy-dark](/assets/images/screenshots/kt-themes/Fantasy-dark.png?v=639232637051545757){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Wireframe
Wireframe theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Wireframe();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Wireframe-light](/assets/images/screenshots/kt-themes/Wireframe-light.png?v=639232637064648303){ .light .snapshot} ![Wireframe-dark](/assets/images/screenshots/kt-themes/Wireframe-dark.png?v=639232637064648303){.dark .snapshot}

== tab "Light" icon:sun
![Wireframe-light](/assets/images/screenshots/kt-themes/Wireframe-light.png?v=639232637064648303){  .snapshot}

== tab "Dark" icon:moon
![Wireframe-dark](/assets/images/screenshots/kt-themes/Wireframe-dark.png?v=639232637064648303){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Black
Black theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Black();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Black-light](/assets/images/screenshots/kt-themes/Black-light.png?v=639232637073820435){ .light .snapshot} ![Black-dark](/assets/images/screenshots/kt-themes/Black-dark.png?v=639232637073820435){.dark .snapshot}

== tab "Light" icon:sun
![Black-light](/assets/images/screenshots/kt-themes/Black-light.png?v=639232637073820435){  .snapshot}

== tab "Dark" icon:moon
![Black-dark](/assets/images/screenshots/kt-themes/Black-dark.png?v=639232637073820435){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Luxury
Luxury theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Luxury();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Luxury-light](/assets/images/screenshots/kt-themes/Luxury-light.png?v=639232637087186949){ .light .snapshot} ![Luxury-dark](/assets/images/screenshots/kt-themes/Luxury-dark.png?v=639232637087186949){.dark .snapshot}

== tab "Light" icon:sun
![Luxury-light](/assets/images/screenshots/kt-themes/Luxury-light.png?v=639232637087186949){  .snapshot}

== tab "Dark" icon:moon
![Luxury-dark](/assets/images/screenshots/kt-themes/Luxury-dark.png?v=639232637087186949){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dracula
Dracula theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Dracula();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Dracula-light](/assets/images/screenshots/kt-themes/Dracula-light.png?v=639232637100095987){ .light .snapshot} ![Dracula-dark](/assets/images/screenshots/kt-themes/Dracula-dark.png?v=639232637100095987){.dark .snapshot}

== tab "Light" icon:sun
![Dracula-light](/assets/images/screenshots/kt-themes/Dracula-light.png?v=639232637100095987){  .snapshot}

== tab "Dark" icon:moon
![Dracula-dark](/assets/images/screenshots/kt-themes/Dracula-dark.png?v=639232637100095987){ .snapshot}

:::
:::

::: hero layout:split glow:true
## CMYK
CMYK theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.CMYK();
```
== side
::: tabs
== tab "Auto" icon:app-window
![CMYK-light](/assets/images/screenshots/kt-themes/CMYK-light.png?v=639232637113257915){ .light .snapshot} ![CMYK-dark](/assets/images/screenshots/kt-themes/CMYK-dark.png?v=639232637113257915){.dark .snapshot}

== tab "Light" icon:sun
![CMYK-light](/assets/images/screenshots/kt-themes/CMYK-light.png?v=639232637113257915){  .snapshot}

== tab "Dark" icon:moon
![CMYK-dark](/assets/images/screenshots/kt-themes/CMYK-dark.png?v=639232637113257915){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Autumn
Autumn theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Autumn();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Autumn-light](/assets/images/screenshots/kt-themes/Autumn-light.png?v=639232637126235975){ .light .snapshot} ![Autumn-dark](/assets/images/screenshots/kt-themes/Autumn-dark.png?v=639232637126235975){.dark .snapshot}

== tab "Light" icon:sun
![Autumn-light](/assets/images/screenshots/kt-themes/Autumn-light.png?v=639232637126235975){  .snapshot}

== tab "Dark" icon:moon
![Autumn-dark](/assets/images/screenshots/kt-themes/Autumn-dark.png?v=639232637126235975){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Business
Business theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Business();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Business-light](/assets/images/screenshots/kt-themes/Business-light.png?v=639232637135357255){ .light .snapshot} ![Business-dark](/assets/images/screenshots/kt-themes/Business-dark.png?v=639232637135357255){.dark .snapshot}

== tab "Light" icon:sun
![Business-light](/assets/images/screenshots/kt-themes/Business-light.png?v=639232637135357255){  .snapshot}

== tab "Dark" icon:moon
![Business-dark](/assets/images/screenshots/kt-themes/Business-dark.png?v=639232637135357255){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Acid
Acid theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Acid();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Acid-light](/assets/images/screenshots/kt-themes/Acid-light.png?v=639232637148361725){ .light .snapshot} ![Acid-dark](/assets/images/screenshots/kt-themes/Acid-dark.png?v=639232637148361725){.dark .snapshot}

== tab "Light" icon:sun
![Acid-light](/assets/images/screenshots/kt-themes/Acid-light.png?v=639232637148361725){  .snapshot}

== tab "Dark" icon:moon
![Acid-dark](/assets/images/screenshots/kt-themes/Acid-dark.png?v=639232637148361725){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Lemonade
Lemonade theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Lemonade();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Lemonade-light](/assets/images/screenshots/kt-themes/Lemonade-light.png?v=639232637161763896){ .light .snapshot} ![Lemonade-dark](/assets/images/screenshots/kt-themes/Lemonade-dark.png?v=639232637161763896){.dark .snapshot}

== tab "Light" icon:sun
![Lemonade-light](/assets/images/screenshots/kt-themes/Lemonade-light.png?v=639232637161763896){  .snapshot}

== tab "Dark" icon:moon
![Lemonade-dark](/assets/images/screenshots/kt-themes/Lemonade-dark.png?v=639232637161763896){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Night
Night theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Night();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Night-light](/assets/images/screenshots/kt-themes/Night-light.png?v=639232637170886037){ .light .snapshot} ![Night-dark](/assets/images/screenshots/kt-themes/Night-dark.png?v=639232637170886037){.dark .snapshot}

== tab "Light" icon:sun
![Night-light](/assets/images/screenshots/kt-themes/Night-light.png?v=639232637170873459){  .snapshot}

== tab "Dark" icon:moon
![Night-dark](/assets/images/screenshots/kt-themes/Night-dark.png?v=639232637170873459){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Coffee
Coffee theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Coffee();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Coffee-light](/assets/images/screenshots/kt-themes/Coffee-light.png?v=639232637179940261){ .light .snapshot} ![Coffee-dark](/assets/images/screenshots/kt-themes/Coffee-dark.png?v=639232637179940261){.dark .snapshot}

== tab "Light" icon:sun
![Coffee-light](/assets/images/screenshots/kt-themes/Coffee-light.png?v=639232637179940261){  .snapshot}

== tab "Dark" icon:moon
![Coffee-dark](/assets/images/screenshots/kt-themes/Coffee-dark.png?v=639232637179940261){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Winter
Winter theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Winter();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Winter-light](/assets/images/screenshots/kt-themes/Winter-light.png?v=639232637193565938){ .light .snapshot} ![Winter-dark](/assets/images/screenshots/kt-themes/Winter-dark.png?v=639232637193565938){.dark .snapshot}

== tab "Light" icon:sun
![Winter-light](/assets/images/screenshots/kt-themes/Winter-light.png?v=639232637193565938){  .snapshot}

== tab "Dark" icon:moon
![Winter-dark](/assets/images/screenshots/kt-themes/Winter-dark.png?v=639232637193565938){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Dim
Dim theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Dim();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Dim-light](/assets/images/screenshots/kt-themes/Dim-light.png?v=639232637202782036){ .light .snapshot} ![Dim-dark](/assets/images/screenshots/kt-themes/Dim-dark.png?v=639232637202782036){.dark .snapshot}

== tab "Light" icon:sun
![Dim-light](/assets/images/screenshots/kt-themes/Dim-light.png?v=639232637202782036){  .snapshot}

== tab "Dark" icon:moon
![Dim-dark](/assets/images/screenshots/kt-themes/Dim-dark.png?v=639232637202782036){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Nord
Nord theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Nord();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Nord-light](/assets/images/screenshots/kt-themes/Nord-light.png?v=639232637216075024){ .light .snapshot} ![Nord-dark](/assets/images/screenshots/kt-themes/Nord-dark.png?v=639232637216075024){.dark .snapshot}

== tab "Light" icon:sun
![Nord-light](/assets/images/screenshots/kt-themes/Nord-light.png?v=639232637216075024){  .snapshot}

== tab "Dark" icon:moon
![Nord-dark](/assets/images/screenshots/kt-themes/Nord-dark.png?v=639232637216075024){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Sunset
Sunset theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Sunset();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Sunset-light](/assets/images/screenshots/kt-themes/Sunset-light.png?v=639232637225406531){ .light .snapshot} ![Sunset-dark](/assets/images/screenshots/kt-themes/Sunset-dark.png?v=639232637225406531){.dark .snapshot}

== tab "Light" icon:sun
![Sunset-light](/assets/images/screenshots/kt-themes/Sunset-light.png?v=639232637225406531){  .snapshot}

== tab "Dark" icon:moon
![Sunset-dark](/assets/images/screenshots/kt-themes/Sunset-dark.png?v=639232637225406531){ .snapshot}

:::
:::

::: hero layout:split glow:true
## CaramelLatte
CaramelLatte theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.CaramelLatte();
```
== side
::: tabs
== tab "Auto" icon:app-window
![CaramelLatte-light](/assets/images/screenshots/kt-themes/CaramelLatte-light.png?v=639232637239987118){ .light .snapshot} ![CaramelLatte-dark](/assets/images/screenshots/kt-themes/CaramelLatte-dark.png?v=639232637239987118){.dark .snapshot}

== tab "Light" icon:sun
![CaramelLatte-light](/assets/images/screenshots/kt-themes/CaramelLatte-light.png?v=639232637239987118){  .snapshot}

== tab "Dark" icon:moon
![CaramelLatte-dark](/assets/images/screenshots/kt-themes/CaramelLatte-dark.png?v=639232637239987118){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Abyss
Abyss theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Abyss();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Abyss-light](/assets/images/screenshots/kt-themes/Abyss-light.png?v=639232637249099619){ .light .snapshot} ![Abyss-dark](/assets/images/screenshots/kt-themes/Abyss-dark.png?v=639232637249099619){.dark .snapshot}

== tab "Light" icon:sun
![Abyss-light](/assets/images/screenshots/kt-themes/Abyss-light.png?v=639232637249099619){  .snapshot}

== tab "Dark" icon:moon
![Abyss-dark](/assets/images/screenshots/kt-themes/Abyss-dark.png?v=639232637249099619){ .snapshot}

:::
:::

::: hero layout:split glow:true
## Silk
Silk theme is built into `KtColor` Presets and provides a complete semantic color system.

```csharp "🔴 🟡 🟢"
KtColor.Presets.Silk();
```
== side
::: tabs
== tab "Auto" icon:app-window
![Silk-light](/assets/images/screenshots/kt-themes/Silk-light.png?v=639232637262538758){ .light .snapshot} ![Silk-dark](/assets/images/screenshots/kt-themes/Silk-dark.png?v=639232637262538758){.dark .snapshot}

== tab "Light" icon:sun
![Silk-light](/assets/images/screenshots/kt-themes/Silk-light.png?v=639232637262538758){  .snapshot}

== tab "Dark" icon:moon
![Silk-dark](/assets/images/screenshots/kt-themes/Silk-dark.png?v=639232637262538758){ .snapshot}

:::
:::

::: callout tip
### SCOPED THEMING COMING SOON
Upcoming updates will introduce scoped themes, allowing controls to inherit themes from their parent context and define custom themes for specific controls or containers.
:::
## API `Reference`
|   |  |   |
| -------- | ------- | ----------- |
