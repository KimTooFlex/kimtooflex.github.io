---
type: concept
title: "KimTools / AI & LLM Context"
description: "Machine-readable documentation context for AI coding assistants and LLM agents."
source: "https://kimtoo.net/ai-llm/"
path: /ai-llm/
updated: 2026-08-29
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-29T19:18:50.523Z"
---
---
title: "KimTools / AI & LLM Context"
description: "Machine-readable documentation context for AI coding assistants and LLM agents."
keywords: ["KimTools", "AI", "LLM", "llms.txt", "llms-full.txt", "Model Context Protocol", "MCP", "AI agents", "AI coding assistant", "RAG", "machine-readable documentation", "AI-ready", "LLM context", "ChatGPT", "Claude", "Anthropic", "OpenAI", "GPT", "Copilot", "GitHub Copilot", "Gemini", "Cursor", "Windsurf", "WinForms", ".NET", "C#"]
layout: "full"
toc: false
---


::: hero layout:split glow:true
# AI / LLM `Context`
KimTools.WinForms publishes a complete, machine-readable context file so AI coding assistants and LLM agents can understand the entire component API in a single fetch.

[//]: # (::: button "llms.txt" external:https://kimtoo.net/docs/llms.txt icon:external-link)
::: button "llms-full.txt" external:https://kimtoo.net/docs/llms-full.txt icon:external-link
== side
![llms-context-example](/assets/images/ChatGPT-vs-Claude-vs-Copilot-vs-Gemini-hero.webp){ .with-shadow}
:::

::: callout tip "MCP Support Coming Soon"
We're actively building native Model Context Protocol (MCP) support, so AI agents will be able to search, read, and query KimTools documentation interactively instead of fetching a static file. Until then, the `llms.txt` files below give any AI tool full context in one request.
:::

## Full context

Here's the fastest way to get an AI assistant up to speed on KimTools - copy one of the two links below into any tool that accepts a URL for context (Claude, ChatGPT, Cursor, and most others support this).
> Paste the URL into Claude, ChatGPT, Cursor, or any tool that accepts a context URL, and the model will have full knowledge of KimTools controls, properties, and usage patterns for that session.
```
https://kimtoo.net/llms-full.txt
```

### Quick index
> just page titles, descriptions, and links, for when the assistant only needs an overview:

```
https://kimtoo.net/llms.txt
```

Not sure which one to use? Start with `llms-full.txt` - it's larger, but it means the assistant already has everything it needs without asking it to fetch individual pages afterward. Reach for the lighter `llms.txt` only if you're working with a tool that has a small context window, or you just want a table of contents.

## General

::: collapsible "What is llms-full.txt?"

`llms-full.txt` is a single Markdown document containing every KimTools.WinForms component, property, and code example from these docs, concatenated and optimized for ingestion by large language models.

It follows the emerging `llms.txt` convention adopted across the developer tooling ecosystem, making KimTools discoverable to AI agents without any custom integration work.

:::

::: collapsible "How do I use it with an AI assistant?"

Point any LLM tool at the file directly:

```
https://kimtoo.net/llms-full.txt
```

Paste the URL into Claude, ChatGPT, Cursor, or any tool that accepts a context URL, and the model will have full knowledge of KimTools controls, properties, and usage patterns for that session.

:::

::: collapsible "Is there a shorter summary version?"

Yes.

`llms.txt` provides a condensed index of page titles, descriptions, and links, useful when an agent only needs an overview before fetching specific pages.

```
https://kimtoo.net/llms.txt
```

:::

::: collapsible "Does KimTools support interactive AI agent access (MCP)?"

Not yet - it's on the way.

We're actively developing native MCP support so AI agents can search, read, and query the KimTools documentation interactively instead of relying on a static context file. In the meantime, `llms-full.txt` is the recommended way for outside tools to get full context today.

:::

::: collapsible "How current is the context file?"

`llms-full.txt` is regenerated automatically on every documentation build, so it always reflects the latest published components and API references.

:::
