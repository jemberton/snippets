---
tags: [test, note, obsidian, css, custom, markdown]
author: Josh Emberton
author_email: josh@emberton.xyz
abbr:
 - "HTML: Hypertext Markup Language"
 - "CSS: Cascading Stylesheet"
---

This is a note that is used to test themes, custom CSS, plugins, and anything else you might use in Obsidian. Use this note to showcase all the elements used in Obsidian Markdown! Feel free to add anything to this note and keep it in your vault for the future!

This note also serves as a manual on using each of the elements displayed. It is easy to switch between the editor/source view and the reading view to see how the element was generated and how it will appear when rendered!

***

# Headings

There are a total of 6 levels of headings supported in Obsidian. More levels *can* be used with customization, but only 6 levels will be shown in the outline.

# Heading 1

## Heading 2

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

***

# Typography

Obsidian can support a variety of typography features. Text can be shown in:

- *italic*
- **bold**
- ***bold italics***
- ~~strikethrough~~
- *~~italic strikethrough~~*
- **~~bold strikethrough~~**
- ***~~bold italic strikethrough~~***

## Superscript & Subscript

Obsidian does not support superscripts and subscripts natively. This feature is provided by the [LaTeX Suite](https://github.com/artisticat1/obsidian-latex-suite) plugin. If you do not have it enabled, you can ignore this section!

- $\large H_2O$
- $\large X^2 = 5 + 3$
- $\large V_{\small RMS}^2$ or $\large V^2_{\small RMS}$

These examples are but only a small demonstration. Consult the LaTeX documentation for more information. [Overleaf](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes) has a good "30 minute" tutorial on learning LaTeX.

***

# Abbreviations

Abbreviations and acronyms are provided via the plugin [Abbreviations and Acronyms](https://github.com/dragonish/obsidian-abbreviations). If you look in the note's metadata/properties, you can see the syntax for the abbreviations. Something like HTML or CSS. Just hover over those terms and the tooltip will be the definition.

***

# Blockquotes

> Block quotes are also supported! This is a basic blockquote. In the next section, you'll see the Callouts. They are customized blockquotes with extra styling, icon support, and a special syntax.
> 
> This is just a new paragraph in the blockquote. It is to demonstrate the styling of the blockquote.

***

# Callouts

Callouts are special blockquotes that have additional styling. Callouts have a title, icon, and content areas. They can also be different colors or just have different styling in general. There are several types of Callouts.

## Built-ins

The following Callouts are all built-in to Obsidian.

> [!note]
> This is a `note` callout.

> [!abstract]
> This is an `abstract` callout. It also has the aliases `summary` & `tldr`.

> [!info]
> This is an `info` callout.

> [!todo]
> This is a `todo` callout.

> [!tip]
> This is a `tip` callout. It also has the aliases `hint` & `important`.

> [!success]
> This is a `success` callout. It also has the aliases `check` & `done`.

> [!question]
> This is a `question` callout. It also has the aliases `help` & `faq`.

> [!warning]
> This is a `warning` callout. It also has the aliases `caution` & `attention`.

> [!failure]
> This is a `failure` callout. It also has the aliases `fail` & `missing`.

> [!danger]
> This is a `danger` callout. It also has the alias `error`.

> [!bug]
> This is a `bug` callout.

> [!example]
> This is an `example` callout.

> [!quote]
> This is a `quote` callout. It also has the alias `cite`.

## Custom

The following Callouts are completely custom. If you do not have any stylesheets to support these, they'll appear as `note` callouts.

> [!wip]
> This is a `wip` custom callout.

> [!terminal]
> This is a `terminal` callout.

> [!fixme]
> This is a `fixme` callout.

> [!ghost]
> This is a `ghost` callout.

> [!calendar]
> This is a `calendar` callout.

### Inline

The following Callouts are custom inline Callouts. They are meant to be single line with short content. Some of them have special effects used for various purposes.

> [!inline:]
> This is an `inline` callout.

> [!part:]
> This is a `part` inline callout.

> [!key:]
> This is a `key` inline callout. It becomes clear when you hover over the content.

### Marks

The following Callouts are custom inline Callouts. They are narrow, with tight margins, and a ribbon that is persistently on the left of the screen. They are meant to act as a bookmark in the note. (This requires special CSS customizations.)

> [!mark]
> This is a `mark` callout. The default color is red, but other colors are available.

> [!mark.red]
> This is a `mark.red` callout.

> [!mark.yellow]
> This is a `mark.yellow` callout.

> [!mark.orange]
> This is a `mark.orange` callout.

> [!mark.green]
> This is a `mark.green` callout.

> [!mark.blue]
> This is a `mark.blue` callout.

> [!mark.purple]
> This is a `mark.purple` callout.

> [!mark.pink]
> This is a `mark.pink` callout.

> [!mark.dark]
> This is a `mark.dark` callout.

> [!mark.light]
> This is a `mark.light` callout.

## Folding Callouts

Callouts can be folded. It is a simple change in the syntax. They can start in an open or closed state.

> [!note]- This callout is folded by default
> Here is the rest of the content for the callout.

> [!note]+ This callout is not folded by default
> Here is the rest of the content for the callout.

The custom Callouts above can be folded too (even the Inline Callouts)!

> [!inline:]-
> Here is the content that is folded by default.

> [!key:]-
> Here is a folded `key` inline callout.

## Nesting Callouts

All Callouts can be nested within another.

> [!info]
> Here is an `info` callout with a nested callout.
> > [!terminal]
> > This is a nested `terminal` callout.

***

# Code

***

# Emojis

Emojis are supported, but not the friendliest to use. On Windows, you can press <kbd>WIN + .</kbd> to open the emoji selector. Emoji shortcodes are provided by [Emoji Autocomplete](https://github.com/KraXen72/obsidian-emoji-autocomplete).

Simple smileys like ❤️ and 😄 are easy enough to add!

***

# Footnotes

***

# Highlight

Sometimes it can be helpful to highlight certain text. ==This is a very important sentence!== It can be done using a simple syntax. By default, the highlight color is yellow. Only one color is supported natively.

***

# Horizontal Rules

***

# Images

***

# Keyboard

Sometimes, it can be helpful to show keyboard shortcuts. Obsidian doesn't support them natively, but with custom CSS, they are made to look more noticeable and distinguishable from normal code blocks.

Unfortunately, Markdown does not have a common/standard way to add keyboard elements. The only supported way for now is to use raw HTML. You can add a <kbd>shift</kbd> key in the middle of a sentence to see it displayed like a key on the keyboard.

***

# Links

***

# Lists

Lists are supported in Obsidian. They can be unordered or ordered.

## Unordered

- First list item
- Second list item
- Third list item
- Fourth List Item

## Ordered

1. First list item
2. Second list item
3. Third list item
4. Fourth list item

***

# Tables
