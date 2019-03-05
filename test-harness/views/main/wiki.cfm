==Layout==
<!--{{VE documentation}} Over prominent and confusing -->

===Sections===

Sections in a page will follow the page's [[WP:LEAD|lead/introduction]] and (under certain conditions,) the [[WP:TOC|Table of Contents]].

====Section headings====
{{see|Help:Section|MOS:HEAD}}

The <code>=</code> through <code>======</code> markup are headings for the sections with which they are associated.
* A single = is styled as the article title and should not be used within an article.
* Headings are styled through [[CSS]] and add an <code>[edit]</code> link. [[Help:Cascading Style Sheets#Wiki headings|See this section]] for the relevant CSS.
* Four or more headings cause a table of contents to be generated automatically.
* Do not use <em>any</em> markup after the final heading markup – this will either break the heading, or will cause the heading to not be included in an edit summary.

{{#lst:Help:HTML in wikitext|WIKI_section}}

Templates: {{tl|fake heading}} for use in documentation.

====Horizontal rule====
{{see|WP:LINE}}

The horizontal rule represents a paragraph-level thematic break. Do not use in article content, as rules are only used after main sections, and this is automatic.

{{markup
|<nowiki>----</nowiki>
|{{crlf2}}
----
}}

HTML equivalent: {{tag|hr|s}}

====Table of contents====
{{see|WP:TOC}}

When a page has at least four headings, a table of contents (TOC) will automatically appear after the lead and before the first heading. The TOC can be controlled by magic words or templates:
* <code><nowiki>__FORCETOC__</nowiki></code> forces the TOC to appear at the normal location regardless of the number of headings.
* <code><nowiki>__TOC__</nowiki></code> forces the TOC to appear at the point where the magic word is inserted instead of the normal location.
* <code><nowiki>__NOTOC__</nowiki></code> disables the TOC entirely.
* {{tl|TOC limit}} can be used to control the depth of subsections included in the TOC. This is useful where the TOC is long and unwieldy.
* [[:Category:Wikipedia table of contents templates]] contains a number of specialized TOC templates.

===Line breaks===
<!--[[Help:Breaks]] links directly here.-->
{{see|Wikipedia:Line-break handling|Wikipedia:Don't use line breaks}}

Line breaks or newlines are used to add whitespace between lines, such as separating paragraphs.
* A line break that is visible in the content is inserted by pressing {{key press|Enter}} twice.
* Pressing {{key press|Enter}} once will place a line break in the markup, but it will not show in the rendered content, except when using list markup.
* Markup such as bold or italics will be terminated at a line break.

{{markup
|<nowiki>A single newline here
has no effect on the layout.

But an empty line starts a new paragraph, 
or ends a list or an indented part.
</nowiki>
|{{crlf2}}
A single newline here
has no effect on the layout.

But an empty line starts a new paragraph, 
or ends a list or an indented part.
}}

HTML equivalent: {{tag|br|o}} or {{tag|br|s}}

Templates:
* {{tl|break}} adds multiple line breaks.
* {{tl|-}} and {{tl|clear}} adds a break with styling, to clear floating elements.
* {{tl|plainlist}} and {{tl|unbulleted list}} both create an unbulleted list.

===Indent text===
{{see|WP:INDENT}}

Indentation is most commonly used on talk pages.

{{markup
|<nowiki>Indentation as used on talk pages:
:Each colon at the start of a line
::causes the line to be indented by three more character positions.
:::(The indentation persists
so long as no carriage return or line break is used.)
:::Repeat the indentation at any line break.
::::Use an extra colon for each response.
:::::And so forth ...
::::::And so on ...
{{Outdent|::::::}}The outdent template can give a visual indicator that we're deliberately cancelling the indent (6 levels here)</nowiki>
|Indentation as used on talk pages:
:Each colon at the start of a line
::causes the line to be indented by three more character positions.
:::(The indentation persists
so long as no carriage return or line break is used.)
:::Repeat the indentation at any line break.
::::Use an extra colon for each response.
:::::And so forth ...
::::::And so on ...
{{Outdent|::::::}}The outdent template can give a visual indicator that we're deliberately cancelling the indent (6 levels here)}}

Templates: {{tl|outdent}}, {{tl|outdent2}}

===Blockquote===

When there is a need for separating a block of text. This is useful for (as the name says) inserting blocks of quoted (and cited) text.
{{markup
|<nowiki><blockquote>
The '''blockquote''' tag will indent both margins when needed instead of the left margin only as the colon does.
</blockquote>
</nowiki>
|<blockquote>
The '''blockquote''' tag will indent both margins when needed instead of the left margin only as the colon does.
</blockquote>
}}

===Center text===

{{markup
|<source lang="html" inline style="border:none; background:transparent;"><div class="center" style="width: auto; margin-left: auto; margin-right: auto;">Centered text</div></source>
|2=<div class="center" style="width: auto; margin-left: auto; margin-right: auto;">Centered text</div>
}}

Template {{tl|center}} uses the same markup. To center a table, see [[Help:Table#Centering tables]].
Please do not use {{tag|center}}, as it is obsolete.

===Align text to right===

You can align content in a separate container:

{{markup
|1=<source lang="html" inline style="border:none; background:transparent;"><div style="text-align: right; direction: ltr; margin-left: 1em;">Text on the right</div></source>
|2=Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<div style="text-align: right; direction: ltr; margin-left: 1em;">Text on the right</div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
}}

Or; make the text float around it:

{{markup
|1=<source lang="html" inline style="border:none; background:transparent;"><div class="floatright">Text on the right</div></source>
|2=Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.<div class="floatright">Text on the right</div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

|3=<nowiki>{{stack|Text on the right}}</nowiki>
|4=Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.{{stack|Text on the right}}Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
}}

===Lists===
{{see|Help:List|MOS:LIST}}

Do not leave blank lines between items in a list unless there is a reason to do so, since this causes the MediaWiki software to interpret each item as beginning a new list.

====Unordered lists====

{{markup
|<nowiki>* Item1
* Item2
* Item3
* Item4
** Sub-item 4 a)
*** Sub-item 4 a) 1.
**** Sub-item 4 a) 1. i)
**** Sub-item 4 a) 1. ii)
** Sub-item 4 b)
* Item5</nowiki>
|{{crlf2}}
* Item1
* Item2
* Item3
* Item4
** Sub-item 4 a)
*** Sub-item 4 a) 1.
**** Sub-item 4 a) 1. i)
**** Sub-item 4 a) 1. ii)
** Sub-item 4 b)
* Item5
}}

====Ordered lists====

{{markup
|<nowiki>
# Item1
# Item2
# Item3
# Item4
## Sub-item 1
### Sub-sub-item
#### Sub-sub-sub-item
## Sub-item 2
# Item5
</nowiki>
|{{crlf2}}
# Item1
# Item2
# Item3
# Item4
## Sub-item 1
### Sub-sub-item
#### Sub-sub-sub-item
## Sub-item 2
# Item5
}}

===={{Anchor|DL}}Description lists====
{{anchors|Definition lists|Association lists|H:DL}}
{{Shortcut|H:DL}}

To list terms and definitions, start a new line with a semicolon (;) followed by the term. Then, type a colon (:) followed by a definition.  The format can also be used for other purposes, such as make and models of vehicles, etc.

''Description lists''<!--HTML5 name--> (formerly ''definition lists''<!--HTML4 name-->, and a.k.a. ''association lists''<!--draft HTML5 name-->) consist of group names corresponding to values. Group names (terms) are in bold. Values (definitions) are indented. Each group <em>must</em> include one or more definitions. For a single or first value, the <code>:</code> can be placed on the same line after <code>;</code> – but subsequent values must be placed on separate lines.

{{hatnote-inline|Do not use a semicolon (;) simply to bold a line without defining a value using a colon (:). This usage renders invalid [[HTML5]] and creates issues with [[screen reader]]s.}}

{{markup
|<nowiki>; Term : Definition1</nowiki>
|{{crlf2}}
; Term : Definition1
|<nowiki>; Term
: Definition1
: Definition2
: Definition3
: Definition4</nowiki>
|{{crlf2}}
; Term
: Definition1
: Definition2
: Definition3
: Definition4
}}

HTML equivalent: {{tag|dl|o}} {{tag|dt}}, {{tag|dd}} {{tag|dl|c}}

Templates: {{tl|defn}}

===Retaining newlines and spaces===
{{shortcut|H:POEM}}

The MediaWiki software suppresses single newlines and converts lines starting with a space to preformatted text in a dashed box. HTML suppresses multiple spaces. It is often desirable to retain these elements for poems, lyrics, mottoes, oaths and the like. The [[mw:Extension:Poem|Poem]] extension adds HTML-like {{tag|poem}} tags to maintain newlines and spaces. These tags may be used inside other tags such as {{tag|blockquote}}. [[H:CSS|CSS styles]] may be applied to this tag, e.g.: <code><nowiki><poem style="margin-left: 2em;"></nowiki></code>.

{{markup
|<nowiki><poem>
In Xanadu did Kubla Khan
  A stately pleasure-dome decree:
Where Alph, the sacred river, ran
  Through caverns measureless to man
Down to a sunless sea.

So twice five miles of fertile ground
  With walls and towers were girdled round:
And there were gardens bright with sinuous rills,
  Where blossomed many an incense-bearing tree;
And here were forests ancient as the hills,
  Enfolding sunny spots of greenery.
</poem></nowiki>
|<poem>
In Xanadu did Kubla Khan
  A stately pleasure-dome decree:
Where Alph, the sacred river, ran
  Through caverns measureless to man
Down to a sunless sea.

So twice five miles of fertile ground
  With walls and towers were girdled round:
And there were gardens bright with sinuous rills,
  Where blossomed many an incense-bearing tree;
And here were forests ancient as the hills,
  Enfolding sunny spots of greenery.
</poem>
}}
