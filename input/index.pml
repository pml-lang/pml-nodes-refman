[doc [title PML Nodes Reference Manual]

    [table 
        [tr [tc [b PML Version]][tc PMLC 3.0.0 2022-08-19]]
        [tr [tc [b License]][tc [link url=https://creativecommons.org/licenses/by-nd/4.0/ text="CC BY-ND 4.0"]]]
        [tr [tc [b Author and Copyright]][tc Christian Neumanns]]
        [tr [tc [b Website]][tc [link url=https://www.pml-lang.dev/]]]
    ]
    [ch ( id="introduction" ) [title Introduction]
        [p This document describes all standard [link url=https://www.pml-lang.dev/ text=PML] nodes. For each type of node, its tag and attributes are listed, and an example shows how to use it.]
    ]

    [ch ( id="block_nodes" ) [title Block Nodes]
        [p A [i block] node is a section that starts at a given line in the document and ends at a subsequent line.]
        [p For example, a [i chapter], a [i paragraph], and a [i list] are all [i block] nodes.]
        [ch ( id="fundamental_block_nodes" ) [title Fundamental Nodes]
            [ch ( id="node_doc" ) [title Document]

                [b Name: ][c doc]

                [b Kind:] Node with child nodes

                [header Description]
                [p Every PML document must start with a 'doc' node. It is the root node of the document.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [doc [title A Nice Surprise]
                            
                                Author: Giovanni Spiridigliotsky
                            
                                Lorem ipsum blah blah blah
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <h1 class="pml-doc-title">A Nice Surprise</h1>
                            <p class="pml-paragraph">Author: Giovanni Spiridigliotsky</p>
                            <p class="pml-paragraph">Lorem ipsum blah blah blah </p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <h1 class="pml-doc-title">A Nice Surprise</h1>
                            <p class="pml-paragraph">Author: Giovanni Spiridigliotsky</p>
                            <p class="pml-paragraph">Lorem ipsum blah blah blah </p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_p" ) [title Paragraph]

                [b Name: ][c p]

                [b Kind:] Node with child nodes

                [header Description]
                [p A paragraph is a set of one or more sentences.[nl]It is not required to embed a paragraph within a node. Text not explicitly embedded in a node is automatically converted to a paragraph node.[nl]A double-new-line creates a paragraph break. All other whitespace is converted to a single space. Hence, two sentences separated by a single new-line will result in a single paragraph composed of two sentences.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            First sentence of first paragraph. Second sentence of first paragraph.
                            
                            First sentence of second paragraph.
                            Second sentence of second paragraph.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                            [p Third paragraph.]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph">First sentence of first paragraph. Second sentence of first paragraph.</p>
                            <p class="pml-paragraph">First sentence of second paragraph. Second sentence of second paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                            <p class="pml-paragraph">Third paragraph.</p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph">First sentence of first paragraph. Second sentence of first paragraph.</p>
                            <p class="pml-paragraph">First sentence of second paragraph. Second sentence of second paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                            <p class="pml-paragraph">Third paragraph.</p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_ch" ) [title Chapter]

                [b Name: ][c ch]

                [b Kind:] Node with child nodes

                [header Description]
                [p A chapter or sub-chapter in the document.[nl]A chapter can have any number of sub-chapters. Chapters can be nested to any level.[nl][nl]Note: The idiomatic way of identifying a chapter for cross-referencing is to assign an 'id' to the chapter node (and not to the chapter's title or subtitle node).]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [ch (id=intro) [title Introduction]
                                 [ch [title What is This About?]
                                     blah blah blah
                                 ]
                                 [ch [title Why is This Important?]
                                     blah blah blah
                                 ]
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <section id="intro" class="pml-chapter">
                                <h2 class="pml-chapter-title">Introduction</h2>
                                <section id="ch__2" class="pml-chapter">
                                    <h3 class="pml-chapter-title">What is This About?</h3>
                                    <p class="pml-paragraph">blah blah blah</p>
                            
                                </section>
                                <section id="ch__3" class="pml-chapter">
                                    <h3 class="pml-chapter-title">Why is This Important?</h3>
                                    <p class="pml-paragraph">blah blah blah</p>
                            
                                </section>
                            
                            </section>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <section id="intro" class="pml-chapter">
                                <h2 class="pml-chapter-title">Introduction</h2>
                                <section id="ch__2" class="pml-chapter">
                                    <h3 class="pml-chapter-title">What is This About?</h3>
                                    <p class="pml-paragraph">blah blah blah</p>
                            
                                </section>
                                <section id="ch__3" class="pml-chapter">
                                    <h3 class="pml-chapter-title">Why is This Important?</h3>
                                    <p class="pml-paragraph">blah blah blah</p>
                            
                                </section>
                            
                            </section>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_title" ) [title Chapter Title]

                [b Name: ][c title]

                [b Kind:] Node with child nodes

                [header Description]
                [p A title for a chapter. This node must be the first child-node of a chapter. The text of this node is used in the table of contents.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [ch [title Some [i Big] Advantages]
                                 ...
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <section id="ch__1" class="pml-chapter">
                                <h2 class="pml-chapter-title">Some <i class="pml-italic">Big</i> Advantages</h2>
                                <p class="pml-paragraph">... </p>
                            
                            </section>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <section id="ch__1" class="pml-chapter">
                                <h2 class="pml-chapter-title">Some <i class="pml-italic">Big</i> Advantages</h2>
                                <p class="pml-paragraph">... </p>
                            
                            </section>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_subtitle" ) [title Chapter Subtitle]

                [b Name: ][c subtitle]

                [b Kind:] Node with child nodes

                [header Description]
                [p A subtitle for a chapter, displayed on a separate line after a chapter's title. If present, this node must follow a 'title' (chapter title) node. The subtitle is not displayed in the table of contents.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [ch [title My Life as a Gardener]
                                [subtitle Why I Left the Corporate World]
                                ...
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <section id="ch__1" class="pml-chapter">
                                <h2 class="pml-chapter-title">My Life as a Gardener</h2>
                                <h2 class="pml-chapter-subtitle">Why I Left the Corporate World</h2>
                                <p class="pml-paragraph">... </p>
                            
                            </section>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <section id="ch__1" class="pml-chapter">
                                <h2 class="pml-chapter-title">My Life as a Gardener</h2>
                                <h2 class="pml-chapter-subtitle">Why I Left the Corporate World</h2>
                                <p class="pml-paragraph">... </p>
                            
                            </section>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_options" ) [title Options]

                [b Name: ][c options]

                [b Kind:] Node without child nodes

                [header Description]
                [p Used to define a set of options applied to the document.[nl]If used, this node must be the first child node of the 'doc' node.[nl]Please consult the user manual and/or the CLI manual to see the list of options available.]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] not allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [doc [title Options Demo]
                                [options
                                    [TOCPosition top]
                                    [TOCTitle Inhaltsverzeichnis]
                                ]
                                text
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <h1 class="pml-doc-title">Options Demo</h1>
                            <p class="pml-paragraph">text </p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <h1 class="pml-doc-title">Options Demo</h1>
                            <p class="pml-paragraph">text </p>
                            ~~~
                        ]
                    ]
                ]

            ]

        ]

        [ch ( id="common_nodes" ) [title Common Nodes]
            [ch ( id="list_nodes" ) [title List]
                [ch ( id="node_list" ) [title List]

                    [b Name: ][c list]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p A bulleted list of nodes.[nl]CSS can be used to change the item marker's appearance (e.g. use numbers). The CSS must be assigned to attribute 'html_style'. See examples.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Standard list:
                                [list
                                    [el item 1]
                                    [el item 2]
                                ]
                                
                                Numbered list:
                                [list (html_style="list-style-type:decimal")
                                    [el item 1]
                                    [el item 2]
                                ]
                                
                                No markers:
                                [list (html_style="list-style-type:none")
                                    [el item 1]
                                    [el item 2]
                                ]
                                
                                Picture for marker:
                                [list (html_style="list-style-image: url('images/gold_star.png')")
                                    [el item 1]
                                    [el item 2]
                                ]
                                
                                Text for marker:
                                [list (html_style="list-style-type: 'x '")
                                    [el item 1]
                                    [el item 2]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Standard list: </p>
                                <ul class="pml-list">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">Numbered list: </p>
                                <ul class="pml-list" style="list-style-type:decimal">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">No markers: </p>
                                <ul class="pml-list" style="list-style-type:none">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">Picture for marker: </p>
                                <ul class="pml-list" style="list-style-image: url('images/gold_star.png')">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">Text for marker: </p>
                                <ul class="pml-list" style="list-style-type: 'x '">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Standard list: </p>
                                <ul class="pml-list">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">Numbered list: </p>
                                <ul class="pml-list" style="list-style-type:decimal">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">No markers: </p>
                                <ul class="pml-list" style="list-style-type:none">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">Picture for marker: </p>
                                <ul class="pml-list" style="list-style-image: url('images/gold_star.png')">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                <p class="pml-paragraph">Text for marker: </p>
                                <ul class="pml-list" style="list-style-type: 'x '">
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 1</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <p class="pml-paragraph">item 2</p>
                                
                                    </li>
                                
                                </ul>
                                ~~~
                            ]
                        ]
                    ]

                ]

                [ch ( id="node_el" ) [title List Element]

                    [b Name: ][c el]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p An element of a list.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Some planets:
                                [list
                                    [el [header Jupiter]
                                        Jupiter is ...
                                    ]
                                    [el [header Uranus]
                                        Uranus is ...
                                    ]
                                    [el [header Neptun]
                                        Neptun is ...
                                    ]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Some planets: </p>
                                <ul class="pml-list">
                                    <li class="pml-list-element">
                                        <div class="pml-header">Jupiter</div>
                                        <p class="pml-paragraph">Jupiter is ...</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <div class="pml-header">Uranus</div>
                                        <p class="pml-paragraph">Uranus is ...</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <div class="pml-header">Neptun</div>
                                        <p class="pml-paragraph">Neptun is ...</p>
                                
                                    </li>
                                
                                </ul>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Some planets: </p>
                                <ul class="pml-list">
                                    <li class="pml-list-element">
                                        <div class="pml-header">Jupiter</div>
                                        <p class="pml-paragraph">Jupiter is ...</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <div class="pml-header">Uranus</div>
                                        <p class="pml-paragraph">Uranus is ...</p>
                                
                                    </li>
                                    <li class="pml-list-element">
                                        <div class="pml-header">Neptun</div>
                                        <p class="pml-paragraph">Neptun is ...</p>
                                
                                    </li>
                                
                                </ul>
                                ~~~
                            ]
                        ]
                    ]

                ]

            ]

            [ch ( id="table_nodes" ) [title Table]
                [ch ( id="node_table_data" ) [title Table Data]

                    [b Name: ][c table_data]

                    [b Kind:] Node with raw text content

                    [header Description]
                    [p Simple table data defined as plain text, and rendered as a table.[nl]Each line of text represents a row.[nl]All cell values in all rows are separated by the same character which can be: a vertical bar (|), a semicolon (;), or a comma (,).[nl]The content of each cell can only be plain text. If formatted text or complex cell content (e.g. picture in a cell, or table in a table) is needed, then please use the 'table' tag.[nl]A header and footer can optionally be defined.[nl]The horizontal alignment (left, center, or right) can be specified for each column.[nl]The data will be rendered as a table.[nl]The following format rules apply:[nl]- Rows are separated by a line break. Empty lines are ignored.[nl]- Cells can be separated by a comma or a TAB character, but both separators cannot be mixed in a table.[nl]- Spaces before or after cell values are ignored.[nl]- If the second line is a dash (-) then the first line is a header.[nl]- If the second-last line is a dash (-) then the last line is a footer.[nl]]

                    [header Attributes]
                    [list 
                        [el 
                            [header Horizontal Alignments for Table Columns]
                            [table 
                                [tr [tc [b Name]][tc halign]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc This optional parameter specifies the horizontal alignment for each column in a table.[nl]The alignments are defined as a comma-separated list, in the order of the columns.[nl]For each column the following values can be specified:[nl]- left or l[nl]- center or c[nl]- right or r[nl]- {empty} (default alignment (usually left-aligned) will be used)[nl]The values are case-insensitive. Uppercase letters are allowed.]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc halign = "Left, Center, , Right"[nl]short from:[nl]halign = "L, C, , R]]
                            ]
                        ]

                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Simple table:
                                [table_data
                                    cell 1.1, cell 1.2
                                    cell 2.1, cell 2.2
                                table_data]
                                
                                Table with header, footer, and column alignments:
                                
                                [table_data (halign="C,L,R")
                                    ~~~
                                    Position, Product, Price
                                    -
                                    1, Organic food, 12.50
                                    2, Meditation lessons, 150.00
                                    -
                                    ,,Total: 162.50
                                    ~~~
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Simple table: </p>
                                <table class="pml-table">
                                    <tbody class="pml-table-body">
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell">cell 1.1</td><td class="pml-table-body-cell">cell 1.2</td></tr>
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell">cell 2.1</td><td class="pml-table-body-cell">cell 2.2</td></tr>
                                    </tbody>
                                </table>
                                <p class="pml-paragraph">Table with header, footer, and column alignments:</p>
                                <table class="pml-table">
                                    <thead class="pml-table-header">
                                        <tr class="pml-table-header-row">
                                <th class="pml-table-header-cell">Position</th><th class="pml-table-header-cell">Product</th><th class="pml-table-header-cell">Price</th></tr>
                                    </thead>
                                    <tbody class="pml-table-body">
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell pml-text-align-center">1</td><td class="pml-table-body-cell pml-text-align-left">Organic food</td><td class="pml-table-body-cell pml-text-align-right">12.50</td></tr>
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell pml-text-align-center">2</td><td class="pml-table-body-cell pml-text-align-left">Meditation lessons</td><td class="pml-table-body-cell pml-text-align-right">150.00</td></tr>
                                    </tbody>
                                    <tfoot class="pml-table-footer">
                                        <tr class="pml-table-footer-row">
                                <td class="pml-table-footer-cell pml-text-align-center"></td><td class="pml-table-footer-cell pml-text-align-left"></td><td class="pml-table-footer-cell pml-text-align-right">Total: 162.50</td></tr>
                                    </tfoot>
                                </table>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Simple table: </p>
                                <table class="pml-table">
                                    <tbody class="pml-table-body">
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell">cell 1.1</td><td class="pml-table-body-cell">cell 1.2</td></tr>
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell">cell 2.1</td><td class="pml-table-body-cell">cell 2.2</td></tr>
                                    </tbody>
                                </table>
                                <p class="pml-paragraph">Table with header, footer, and column alignments:</p>
                                <table class="pml-table">
                                    <thead class="pml-table-header">
                                        <tr class="pml-table-header-row">
                                <th class="pml-table-header-cell">Position</th><th class="pml-table-header-cell">Product</th><th class="pml-table-header-cell">Price</th></tr>
                                    </thead>
                                    <tbody class="pml-table-body">
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell pml-text-align-center">1</td><td class="pml-table-body-cell pml-text-align-left">Organic food</td><td class="pml-table-body-cell pml-text-align-right">12.50</td></tr>
                                        <tr class="pml-table-body-row">
                                <td class="pml-table-body-cell pml-text-align-center">2</td><td class="pml-table-body-cell pml-text-align-left">Meditation lessons</td><td class="pml-table-body-cell pml-text-align-right">150.00</td></tr>
                                    </tbody>
                                    <tfoot class="pml-table-footer">
                                        <tr class="pml-table-footer-row">
                                <td class="pml-table-footer-cell pml-text-align-center"></td><td class="pml-table-footer-cell pml-text-align-left"></td><td class="pml-table-footer-cell pml-text-align-right">Total: 162.50</td></tr>
                                    </tfoot>
                                </table>
                                ~~~
                            ]
                        ]
                    ]

                ]

                [ch ( id="node_table" ) [title Table]

                    [b Name: ][c table]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p A table consisting of rows and columns.[nl]The content of each cell can be just plain text or any complex node, such as formatted text, a picture, a table (table in a table), etc.[nl]The table's structure is similar to a HTML table.[nl]HTML 'class' and 'style' attributes can be use to format the table with CSS.[nl]The table can optionally have a header and a footer.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Horizontal Alignments for Table Columns]
                            [table 
                                [tr [tc [b Name]][tc halign]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc This optional parameter specifies the horizontal alignment for each column in a table.[nl]The alignments are defined as a comma-separated list, in the order of the columns.[nl]For each column the following values can be specified:[nl]- left or l[nl]- center or c[nl]- right or r[nl]- {empty} (default alignment (usually left-aligned) will be used)[nl]The values are case-insensitive. Uppercase letters are allowed.]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc halign = "Left, Center, , Right"[nl]short from:[nl]halign = "L, C, , R]]
                            ]
                        ]

                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Simple table:
                                
                                [table
                                    [tr [tc cell 1.1] [tc cell 1.2]]
                                    [tr [tc cell 2.1] [tc cell 2.2]]
                                ]
                                
                                Table with header and footer:
                                
                                [table
                                    [theader
                                        [tr [tc Position] [tc Product] [tc Price]]
                                    ]
                                    [tr [tc 1] [tc [i Organic] food] [tc (html_style="text-align:right;") 12.50]]
                                    [tr [tc 2] [tc Meditation lessons] [tc (html_style="text-align:right;") 150.00]]
                                    [tfooter
                                        [tr [tc] [tc (html_style="text-align:right;") Total:] [tc (html_style="text-align:right;") 162.50]]
                                    ]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Simple table:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                <p class="pml-paragraph">Table with header and footer:</p>
                                <table class="pml-table">
                                    <thead class="pml-table-header">
                                        <tr class="pml-table-header-row">
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Position</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Product</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Price</p>
                                
                                            </th>
                                
                                        </tr>
                                
                                    </thead>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph"><i class="pml-italic">Organic</i> food</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell" style="text-align:right;">
                                            <p class="pml-paragraph">12.50</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">Meditation lessons</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell" style="text-align:right;">
                                            <p class="pml-paragraph">150.00</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tfoot class="pml-table-footer">
                                        <tr class="pml-table-footer-row">
                                            <td class="pml-table-footer-cell">
                                
                                            </td>
                                            <td class="pml-table-footer-cell" style="text-align:right;">
                                                <p class="pml-paragraph">Total:</p>
                                
                                            </td>
                                            <td class="pml-table-footer-cell" style="text-align:right;">
                                                <p class="pml-paragraph">162.50</p>
                                
                                            </td>
                                
                                        </tr>
                                
                                    </tfoot>
                                
                                </table>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Simple table:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                <p class="pml-paragraph">Table with header and footer:</p>
                                <table class="pml-table">
                                    <thead class="pml-table-header">
                                        <tr class="pml-table-header-row">
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Position</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Product</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Price</p>
                                
                                            </th>
                                
                                        </tr>
                                
                                    </thead>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph"><i class="pml-italic">Organic</i> food</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell" style="text-align:right;">
                                            <p class="pml-paragraph">12.50</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">Meditation lessons</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell" style="text-align:right;">
                                            <p class="pml-paragraph">150.00</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tfoot class="pml-table-footer">
                                        <tr class="pml-table-footer-row">
                                            <td class="pml-table-footer-cell">
                                
                                            </td>
                                            <td class="pml-table-footer-cell" style="text-align:right;">
                                                <p class="pml-paragraph">Total:</p>
                                
                                            </td>
                                            <td class="pml-table-footer-cell" style="text-align:right;">
                                                <p class="pml-paragraph">162.50</p>
                                
                                            </td>
                                
                                        </tr>
                                
                                    </tfoot>
                                
                                </table>
                                ~~~
                            ]
                        ]
                    ]

                ]

                [ch ( id="node_theader" ) [title Table Header]

                    [b Name: ][c theader]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p A header in a table.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Table with header:
                                
                                [table
                                    [theader
                                        [tr [tc Header 1] [tc Header 2] [tc Header 3]]
                                    ]
                                    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
                                    [tr [tc cell 2.1] [tc cell 2.2] [tc cell 2.3]]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Table with header:</p>
                                <table class="pml-table">
                                    <thead class="pml-table-header">
                                        <tr class="pml-table-header-row">
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Header 1</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Header 2</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Header 3</p>
                                
                                            </th>
                                
                                        </tr>
                                
                                    </thead>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Table with header:</p>
                                <table class="pml-table">
                                    <thead class="pml-table-header">
                                        <tr class="pml-table-header-row">
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Header 1</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Header 2</p>
                                
                                            </th>
                                            <th class="pml-table-header-cell">
                                                <p class="pml-paragraph">Header 3</p>
                                
                                            </th>
                                
                                        </tr>
                                
                                    </thead>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                ~~~
                            ]
                        ]
                    ]

                ]

                [ch ( id="node_tfooter" ) [title Table Footer]

                    [b Name: ][c tfooter]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p A footer in a table.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Table with footer:
                                
                                [table
                                    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
                                    [tr [tc cell 2.1] [tc cell 2.2] [tc cell 2.3]]
                                    [tfooter
                                        [tr [tc Footer 1] [tc Footer 2] [tc Footer 3]]
                                    ]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Table with footer:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tfoot class="pml-table-footer">
                                        <tr class="pml-table-footer-row">
                                            <td class="pml-table-footer-cell">
                                                <p class="pml-paragraph">Footer 1</p>
                                
                                            </td>
                                            <td class="pml-table-footer-cell">
                                                <p class="pml-paragraph">Footer 2</p>
                                
                                            </td>
                                            <td class="pml-table-footer-cell">
                                                <p class="pml-paragraph">Footer 3</p>
                                
                                            </td>
                                
                                        </tr>
                                
                                    </tfoot>
                                
                                </table>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Table with footer:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tfoot class="pml-table-footer">
                                        <tr class="pml-table-footer-row">
                                            <td class="pml-table-footer-cell">
                                                <p class="pml-paragraph">Footer 1</p>
                                
                                            </td>
                                            <td class="pml-table-footer-cell">
                                                <p class="pml-paragraph">Footer 2</p>
                                
                                            </td>
                                            <td class="pml-table-footer-cell">
                                                <p class="pml-paragraph">Footer 3</p>
                                
                                            </td>
                                
                                        </tr>
                                
                                    </tfoot>
                                
                                </table>
                                ~~~
                            ]
                        ]
                    ]

                ]

                [ch ( id="node_tr" ) [title Table Row]

                    [b Name: ][c tr]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p A row in a table.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Table with 2 rows:
                                
                                [table
                                    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
                                    [tr [tc cell 2.1] [tc cell 2.2] [tc row 2.3]]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Table with 2 rows:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">row 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Table with 2 rows:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">row 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                ~~~
                            ]
                        ]
                    ]

                ]

                [ch ( id="node_tc" ) [title Table Cell]

                    [b Name: ][c tc]

                    [b Kind:] Node with child nodes

                    [header Description]
                    [p A cell in a table row.]

                    [header Attributes]
                    [list 
                        [el 
                            [header Node Identifier]
                            [table 
                                [tr [tc [b Name]][tc id]]
                                [tr [tc [b Is positional parameter]][tc No]]
                                [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                                [tr [tc [b Type]][tc string or null]]
                                [tr [tc [b Required]][tc no]]
                                [tr [tc [b Default Value]][tc null]]
                                [tr [tc [b Example(s)]][tc id = basic_concept]]
                            ]
                        ]

                    ]

                    [b HTML Attributes:] allowed

                    [header Example]
                    [list 
                        [el 
                            [p PML code:]
                            [code 
                                ~~~
                                Table with 2 rows and 3 columns:
                                
                                [table
                                    [tr [tc cell 1.1] [tc cell 1.2] [tc cell 1.3]]
                                    [tr [tc cell 2.1] [tc cell 2.2] [tc cell 2.3]]
                                ]
                                ~~~
                            ]
                        ]
                        [el 
                            [p Result:]
                            [html 
                                ~~~
                                <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                                <p class="pml-paragraph">Table with 2 rows and 3 columns:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                
                                </div>
                                ~~~
                            ]
                        ]
                        [el 
                            [p HTML code generated:]
                            [code 
                                ~~~
                                <p class="pml-paragraph">Table with 2 rows and 3 columns:</p>
                                <table class="pml-table">
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 1.3</p>
                                
                                        </td>
                                
                                    </tr>
                                    <tr class="pml-table-body-row">
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.1</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.2</p>
                                
                                        </td>
                                        <td class="pml-table-body-cell">
                                            <p class="pml-paragraph">cell 2.3</p>
                                
                                        </td>
                                
                                    </tr>
                                
                                </table>
                                ~~~
                            ]
                        ]
                    ]

                ]

            ]

            [ch ( id="node_header" ) [title Header]

                [b Name: ][c header]

                [b Kind:] Node with child nodes

                [header Description]
                [p A header (small title) displayed on a separate line. A header is not included in the table of contents. Headers can be inserted anywhere in a document.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [ch [title Advantages]
                                [header Simple]
                                ...
                                [header Fast]
                                ...
                                [header Effective]
                                ...
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <section id="ch__1" class="pml-chapter">
                                <h2 class="pml-chapter-title">Advantages</h2>
                                <div class="pml-header">Simple</div>
                                <p class="pml-paragraph">...</p>
                                <div class="pml-header">Fast</div>
                                <p class="pml-paragraph">...</p>
                                <div class="pml-header">Effective</div>
                                <p class="pml-paragraph">... </p>
                            
                            </section>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <section id="ch__1" class="pml-chapter">
                                <h2 class="pml-chapter-title">Advantages</h2>
                                <div class="pml-header">Simple</div>
                                <p class="pml-paragraph">...</p>
                                <div class="pml-header">Fast</div>
                                <p class="pml-paragraph">...</p>
                                <div class="pml-header">Effective</div>
                                <p class="pml-paragraph">... </p>
                            
                            </section>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_caption" ) [title Caption]

                [b Name: ][c caption]

                [b Kind:] Node with child nodes

                [header Description]
                [p A small title that is not part of the table of contents, typically displayed below a block element (image, video, table, etc.).]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [caption Figure 1: Top Brain Boosters]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-caption">Figure 1: Top Brain Boosters</div>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-caption">Figure 1: Top Brain Boosters</div>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_admon" ) [title Admonition]

                [b Name: ][c admon]

                [b Kind:] Node with child nodes

                [header Description]
                [p A labeled piece of advice, such as a note, tip, warning, etc.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Label]
                        [table 
                            [tr [tc [b Name]][tc label]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The admonition's label, such as 'Note', 'Tip', 'Warning', etc.]]
                            [tr [tc [b Type]][tc string]]
                            [tr [tc [b Required]][tc yes]]
                            [tr [tc [b Default Value]][tc none]]
                            [tr [tc [b Example(s)]][tc label = Tip]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [admon (label=Tip)
                                We will have a look at some [i striking] examples later in the book.
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-admonition">
                                <div class="pml-admonition-label">Tip</div>
                                <div class="pml-admonition-content">
                                    <p class="pml-paragraph">We will have a look at some <i class="pml-italic">striking</i> examples later in the book. </p>
                                </div>
                            </div>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-admonition">
                                <div class="pml-admonition-label">Tip</div>
                                <div class="pml-admonition-content">
                                    <p class="pml-paragraph">We will have a look at some <i class="pml-italic">striking</i> examples later in the book. </p>
                                </div>
                            </div>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_note" ) [title Note]

                [b Name: ][c note]

                [b Kind:] Node with child nodes

                [header Description]
                [p A note is an admonition with label 'Note'.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [note Please remember that ...]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-admonition">
                                <div class="pml-admonition-label">Note</div>
                                <div class="pml-admonition-content">
                                    <p class="pml-paragraph">Please remember that ...</p>
                                </div>
                            </div>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-admonition">
                                <div class="pml-admonition-label">Note</div>
                                <div class="pml-admonition-content">
                                    <p class="pml-paragraph">Please remember that ...</p>
                                </div>
                            </div>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_quote" ) [title Quote]

                [b Name: ][c quote]

                [b Kind:] Node with child nodes

                [header Description]
                [p A piece of text said or written by somebody else.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Source of Quote]
                        [table 
                            [tr [tc [b Name]][tc source]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The source of the quote, such as the name of a person, the title of an article, etc.]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc source = Dalai Lama]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [quote (source="Albert Einstein, physicist")
                                Everything should be as simple as possible, but not simpler.
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <blockquote class="pml-quote">
                                <div class="pml-quote-text-block">
                                    <div class="pml-quote-text-prefix"></div>
                                    <div class="pml-quote-text">
                                        <p class="pml-paragraph">Everything should be as simple as possible, but not simpler. </p>
                                    </div>
                                    <div class="pml-quote-text-suffix"></div>
                                </div>
                                <div class="pml-quote-source">Albert Einstein, physicist</div>
                            </blockquote>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <blockquote class="pml-quote">
                                <div class="pml-quote-text-block">
                                    <div class="pml-quote-text-prefix"></div>
                                    <div class="pml-quote-text">
                                        <p class="pml-paragraph">Everything should be as simple as possible, but not simpler. </p>
                                    </div>
                                    <div class="pml-quote-text-suffix"></div>
                                </div>
                                <div class="pml-quote-source">Albert Einstein, physicist</div>
                            </blockquote>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_monospace" ) [title Monospace]

                [b Name: ][c monospace]

                [b Kind:] Node with child nodes

                [header Description]
                [p A paragraph in which whitespace is preserved, and a fixed-width font is used. The text will be rendered exactly as written in the PML document.[nl]The following rules apply to the text in a 'monospace' block:[nl]- The width of each character (letter, digit, symbol) is the same.[nl]- All spaces and line-breaks in the text are preserved and rendered in the final document.[nl]Inline nodes can be used within a 'monospace' block. Hence standard character escape rules are applied.[nl]]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [header A Pascal Triangle]
                            [monospace
                                  1
                                1   1
                              1   2   1
                            1   3   3   1
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-header">A Pascal Triangle</div>
                            <pre class="pml-monospace">
                                  1
                                1   1
                              1   2   1
                            1   3   3   1
                            </pre>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-header">A Pascal Triangle</div>
                            <pre class="pml-monospace">
                                  1
                                1   1
                              1   2   1
                            1   3   3   1
                            </pre>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_div" ) [title Division]

                [b Name: ][c div]

                [b Kind:] Node with child nodes

                [header Description]
                [p A division or section in the document. This node is typically used to render a HTML <div>...</div> block with a specific set of HTML attributes.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [div (html_style="color:red;")
                                Important message: ...
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-division" style="color:red;">
                                <p class="pml-paragraph">Important message: ... </p>
                            
                            </div>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-division" style="color:red;">
                                <p class="pml-paragraph">Important message: ... </p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_html" ) [title HTML Code]

                [b Name: ][c html]

                [b Kind:] Node with raw text content

                [header Description]
                [p A node that contains HTML code.[nl]The HTML code is not processed in any way by the PML converter. It is passed as is to the resulting HTML document.[nl]This allows you to embed arbitrary HTML code in your final document.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [html
                                ~~~
                                <p>This is pure <b>HTML</b> code.</p>
                                ~~~
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-html"><p>This is pure <b>HTML</b> code.</p></div>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-html"><p>This is pure <b>HTML</b> code.</p></div>
                            ~~~
                        ]
                    ]
                ]

            ]

        ]

        [ch ( id="media_nodes" ) [title Media Nodes]
            [ch ( id="node_image" ) [title Image]

                [b Name: ][c image]

                [b Kind:] Node without child nodes

                [header Description]
                [p An image, such as a .jpg or .png file.[nl]Note: Attribute 'html_alt' can be used to add an explicit 'alt' attribute in the resulting HTML (see example).[nl]]

                [header Attributes]
                [list 
                    [el 
                        [header Horizontal Alignment]
                        [table 
                            [tr [tc [b Name]][tc align]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The horizontal alignment of the media. Valid values are: left, center, and right.]]
                            [tr [tc [b Type]][tc htextalign]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc LEFT]]
                            [tr [tc [b Allowed Values]][tc left, center, right (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc align = center]]
                        ]
                    ]

                    [el 
                        [header Border]
                        [table 
                            [tr [tc [b Name]][tc border]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc This parameter can be set to 'yes' to draw a border around the media.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc false]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc border = yes]]
                        ]
                    ]

                    [el 
                        [header Image Height]
                        [table 
                            [tr [tc [b Name]][tc height]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The height of the media, expressed in pixels.]]
                            [tr [tc [b Type]][tc integer32 or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc height = 150]]
                        ]
                    ]

                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Link]
                        [table 
                            [tr [tc [b Name]][tc link]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A link (e.g. URL) to the media. If the user clicks on the media, the specified link will be opened in the browser.]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc link = http://www.example.com/path/image.png]]
                        ]
                    ]

                    [el 
                        [header Image Source]
                        [table 
                            [tr [tc [b Name]][tc source]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The source (location) of the media asset.[nl]The source can be a relative path, an URL, or any other string that denotes a valid source in the generated target code (e.g. HTML).[nl]Note: The validity/existence of the source is not checked by PML. It is the users responsibility to provide a valid source.[nl]]]
                            [tr [tc [b Type]][tc string]]
                            [tr [tc [b Required]][tc yes]]
                            [tr [tc [b Default Value]][tc none]]
                            [tr [tc [b Example(s)]][tc source = images/ball.png]]
                        ]
                    ]

                    [el 
                        [header Image Width]
                        [table 
                            [tr [tc [b Name]][tc width]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The width of the media, expressed in pixels.]]
                            [tr [tc [b Type]][tc integer32 or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc width = 200]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [header Strawberries (Photo by Jacek Dylag on Unsplash)]
                            [image ( source = media/strawberries.jpg
                                link = https://unsplash.com/photos/kH3Sr9K8EBA
                                html_alt = "Delicious strawberries" ) ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-header">Strawberries (Photo by Jacek Dylag on Unsplash)</div>
                            <figure style="text-align: left">
                                <a href="https://unsplash.com/photos/kH3Sr9K8EBA">
                                    <img class="pml-image" src="media/strawberries.jpg">
                                </a>
                            </figure>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-header">Strawberries (Photo by Jacek Dylag on Unsplash)</div>
                            <figure style="text-align: left">
                                <a href="https://unsplash.com/photos/kH3Sr9K8EBA">
                                    <img class="pml-image" src="media/strawberries.jpg">
                                </a>
                            </figure>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_audio" ) [title Audio (Sound)]

                [b Name: ][c audio]

                [b Kind:] Node without child nodes

                [header Description]
                [p An audio stream (sound), such as an .mp3 or .wav file.]

                [header Attributes]
                [list 
                    [el 
                        [header Horizontal Alignment]
                        [table 
                            [tr [tc [b Name]][tc align]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The horizontal alignment of the media. Valid values are: left, center, and right.]]
                            [tr [tc [b Type]][tc htextalign]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc LEFT]]
                            [tr [tc [b Allowed Values]][tc left, center, right (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc align = center]]
                        ]
                    ]

                    [el 
                        [header Border]
                        [table 
                            [tr [tc [b Name]][tc border]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc This parameter can be set to 'yes' to draw a border around the media.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc false]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc border = yes]]
                        ]
                    ]

                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Audio Source]
                        [table 
                            [tr [tc [b Name]][tc source]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The source (location) of the media asset.[nl]The source can be a relative path, an URL, or any other string that denotes a valid source in the generated target code (e.g. HTML).[nl]Note: The validity/existence of the source is not checked by PML. It is the users responsibility to provide a valid source.[nl]]]
                            [tr [tc [b Type]][tc string]]
                            [tr [tc [b Required]][tc yes]]
                            [tr [tc [b Default Value]][tc none]]
                            [tr [tc [b Example(s)]][tc source = audios/violin.mp3]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [header Bird talk]
                            [audio source=media/bird_talk.mp3]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-header">Bird talk</div>
                            <figure style="text-align: left">
                                <audio class="pml-audio" controls="controls">
                                    <source src="media/bird_talk.mp3">
                                    Your browser does not support the audio element.
                                </audio>
                            </figure>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-header">Bird talk</div>
                            <figure style="text-align: left">
                                <audio class="pml-audio" controls="controls">
                                    <source src="media/bird_talk.mp3">
                                    Your browser does not support the audio element.
                                </audio>
                            </figure>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_video" ) [title Video]

                [b Name: ][c video]

                [b Kind:] Node without child nodes

                [header Description]
                [p A video, such as an .mp4 or .webm file.]

                [header Attributes]
                [list 
                    [el 
                        [header Horizontal Alignment]
                        [table 
                            [tr [tc [b Name]][tc align]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The horizontal alignment of the media. Valid values are: left, center, and right.]]
                            [tr [tc [b Type]][tc htextalign]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc LEFT]]
                            [tr [tc [b Allowed Values]][tc left, center, right (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc align = center]]
                        ]
                    ]

                    [el 
                        [header Border]
                        [table 
                            [tr [tc [b Name]][tc border]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc This parameter can be set to 'yes' to draw a border around the media.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc false]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc border = yes]]
                        ]
                    ]

                    [el 
                        [header Video Height]
                        [table 
                            [tr [tc [b Name]][tc height]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The height of the media, expressed in pixels.]]
                            [tr [tc [b Type]][tc integer32 or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc height = 150]]
                        ]
                    ]

                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Video Source]
                        [table 
                            [tr [tc [b Name]][tc source]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The source (location) of the media asset.[nl]The source can be a relative path, an URL, or any other string that denotes a valid source in the generated target code (e.g. HTML).[nl]Note: The validity/existence of the source is not checked by PML. It is the users responsibility to provide a valid source.[nl]]]
                            [tr [tc [b Type]][tc string]]
                            [tr [tc [b Required]][tc yes]]
                            [tr [tc [b Default Value]][tc none]]
                            [tr [tc [b Example(s)]][tc source = videos/happy_kids.mp4]]
                        ]
                    ]

                    [el 
                        [header Video Width]
                        [table 
                            [tr [tc [b Name]][tc width]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The width of the media, expressed in pixels.]]
                            [tr [tc [b Type]][tc integer32 or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc width = 200]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [header Beautiful Nature]
                            [video source = media/red_flower.mp4]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-header">Beautiful Nature</div>
                            <figure style="text-align: left">
                                <video class="pml-video" controls="controls">
                                    <source src="media/red_flower.mp4">
                                    Your browser does not support the video element.
                                </video>
                            </figure>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-header">Beautiful Nature</div>
                            <figure style="text-align: left">
                                <video class="pml-video" controls="controls">
                                    <source src="media/red_flower.mp4">
                                    Your browser does not support the video element.
                                </video>
                            </figure>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_youtube_video" ) [title Embedded Youtube Video]

                [b Name: ][c youtube_video]

                [b Kind:] Node without child nodes

                [header Description]
                [p A Youtube video embedded in the document.]

                [header Attributes]
                [list 
                    [el 
                        [header Horizontal Alignment]
                        [table 
                            [tr [tc [b Name]][tc align]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The horizontal alignment of the media. Valid values are: left, center, and right.]]
                            [tr [tc [b Type]][tc htextalign]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc LEFT]]
                            [tr [tc [b Allowed Values]][tc left, center, right (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc align = center]]
                        ]
                    ]

                    [el 
                        [header Border]
                        [table 
                            [tr [tc [b Name]][tc border]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc This parameter can be set to 'yes' to draw a border around the media.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc false]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc border = yes]]
                        ]
                    ]

                    [el 
                        [header Video Height]
                        [table 
                            [tr [tc [b Name]][tc height]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The height of the media, expressed in pixels.]]
                            [tr [tc [b Type]][tc integer32 or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc height = 150]]
                        ]
                    ]

                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Video Width]
                        [table 
                            [tr [tc [b Name]][tc width]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The width of the media, expressed in pixels.]]
                            [tr [tc [b Type]][tc integer32 or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc width = 200]]
                        ]
                    ]

                    [el 
                        [header Youtube Video Id]
                        [table 
                            [tr [tc [b Name]][tc yid]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The identifier of the Youtube video.[nl]This identifier is displayed in the video's URL on Youtube.[nl]Example: If the URL of the Youtube video is https://www.youtube.com/watch?v=NUDhA4hXdS8 then the identifier is NUDhA4hXdS8.[nl]]]
                            [tr [tc [b Type]][tc string]]
                            [tr [tc [b Required]][tc yes]]
                            [tr [tc [b Default Value]][tc none]]
                            [tr [tc [b Example(s)]][tc yid = NUDhA4hXdS8]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [header Hellzapoppin 1941 - [i Enjoy!]]
                            [youtube_video (
                                yid = qrcZqnICYbs
                                width = 600
                                height = 400 ) ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <div class="pml-header">Hellzapoppin 1941 - <i class="pml-italic">Enjoy!</i></div>
                            <figure style="text-align: left">
                                <iframe class="pml-youtube-video" src="https://www.youtube.com/embed/qrcZqnICYbs" width="600" height="400" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; fullscreen"></iframe>
                            </figure>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <div class="pml-header">Hellzapoppin 1941 - <i class="pml-italic">Enjoy!</i></div>
                            <figure style="text-align: left">
                                <iframe class="pml-youtube-video" src="https://www.youtube.com/embed/qrcZqnICYbs" width="600" height="400" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture; fullscreen"></iframe>
                            </figure>
                            ~~~
                        ]
                    ]
                ]

            ]

        ]

        [ch ( id="software_development_nodes" ) [title Software Development]
            [ch ( id="node_code" ) [title Source Code]

                [b Name: ][c code]

                [b Kind:] Node with raw text content

                [header Description]
                [p A block of source code.]

                [header Attributes]
                [list 
                    [el 
                        [header Use Source Code Syntax Highlighter]
                        [table 
                            [tr [tc [b Name]][tc highlight]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc Specifies whether the source code should be highlighted or not.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc true]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc highlight = no]]
                        ]
                    ]

                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Language]
                        [table 
                            [tr [tc [b Name]][tc lang]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The name of the language used in the source code.[nl]This value is used primarily for syntax highlighting.[nl]Specify 'auto' to request automatic language detection (works only if this feature is supported by the highlighter).[nl]Specify 'text' for simple plain text (without highlighting).[nl]To get the list of supported languages please consult the documentation of the syntax highlighter used. Some frequently used values are: c, css, java, javascript, html.]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc lang = java]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [code
                                ~~~
                                repeat 3 times
                                    write_line ( "Hello" )
                                .
                                ~~~
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <pre class="pml-code"><code>repeat 3 times
                                write_line ( &quot;Hello&quot; )
                            .</code></pre>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <pre class="pml-code"><code>repeat 3 times
                                write_line ( &quot;Hello&quot; )
                            .</code></pre>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_insert_code" ) [title Insert Source Code]

                [b Name: ][c insert_code]

                [b Kind:] Node without child nodes

                [header Description]
                [p Insert source code stored in an external file.]

                [header Attributes]
                [list 
                    [el 
                        [header File]
                        [table 
                            [tr [tc [b Name]][tc file]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc Absolute or relative path to the source code file.[nl]In case of a relative path, it is relative to the working directory at the time of running the application.]]
                            [tr [tc [b Type]][tc file_path]]
                            [tr [tc [b Required]][tc yes]]
                            [tr [tc [b Default Value]][tc none]]
                            [tr [tc [b Example(s)]][tc file = code_examples/hello.ppl]]
                        ]
                    ]

                    [el 
                        [header From Regex]
                        [table 
                            [tr [tc [b Name]][tc from_regex]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc If this parameter is not defined (set to null by default) then the source code inserted into the document starts at the beginning of the file content.[nl]A regular expression can be assigned to this parameter. In that case the source code inserted into the document starts at the first match of the regular expression in the source code file.[nl][nl]If parameter 'include_from_regex' is set to 'true/yes' (default value), then the string that matches the regex is included in the document's source code.[nl]If parameter 'include_from_regex' is set to 'false/no' then the string that matches the regex is not included in the document's source code.]]
                            [tr [tc [b Type]][tc regex or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc from_regex = "function foo ( name string )"[nl]from_regex = "\[ \\t\]*// start insert.*\\r?\\n" include_from_regex = no[nl]]]
                        ]
                    ]

                    [el 
                        [header Use Source Code Syntax Highlighter]
                        [table 
                            [tr [tc [b Name]][tc highlight]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc Specifies whether the source code should be highlighted or not.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc true]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc highlight = no]]
                        ]
                    ]

                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                    [el 
                        [header Include From Regex]
                        [table 
                            [tr [tc [b Name]][tc include_from_regex]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc Please refer to the description of parameter 'from_regex' for an explanation of this parameter.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc true]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc from_regex = "// start insert.*\\r?\\n" include_from_regex = no[nl]]]
                        ]
                    ]

                    [el 
                        [header Include To Regex]
                        [table 
                            [tr [tc [b Name]][tc include_to_regex]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc Please refer to the description of parameter 'to_regex' for an explanation of this parameter.]]
                            [tr [tc [b Type]][tc boolean]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc true]]
                            [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                            [tr [tc [b Example(s)]][tc to_regex = "\\s*// end insert" include_to_regex = no[nl]]]
                        ]
                    ]

                    [el 
                        [header Language]
                        [table 
                            [tr [tc [b Name]][tc lang]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc The name of the language used in the source code.[nl]This value is used primarily for syntax highlighting.[nl]Specify 'auto' to request automatic language detection (works only if this feature is supported by the highlighter).[nl]Specify 'text' for simple plain text (without highlighting).[nl]To get the list of supported languages please consult the documentation of the syntax highlighter used. Some frequently used values are: c, css, java, javascript, html.]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc lang = java]]
                        ]
                    ]

                    [el 
                        [header To Regex]
                        [table 
                            [tr [tc [b Name]][tc to_regex]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc If this parameter is not defined (set to null by default) then the source code inserted into the document ends at the end of the file content.[nl]A regular expression can be assigned to this parameter. In that case the source code inserted into the document ends at the first match of the regular expression in the source code file.[nl][nl]If parameter 'from_regex' is also defined, then the search for this regex starts after the match of 'from_regex'.[nl]If parameter 'include_to_regex' is set to 'true/yes' (default value), then the string that matches the regex is included in the document's source code.[nl]If parameter 'include_to_regex' is set to 'false/no' then the string that matches the regex is not included in the document's source code.]]
                            [tr [tc [b Type]][tc regex or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc to_regex = "\\\\}\\r?\\n"[nl]to_regex = "\\\\s*// end insert" include_to_regex = no[nl]]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [insert_code file=resources/source_code/hello_world.ppl]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <pre class="pml-code"><code>// Hello world program written in PPL
                            // www.ppl-lang.dev
                            
                            function start
                                OS.out.write_line ( &quot;Hello world&quot; )
                            .
                            </code></pre>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <pre class="pml-code"><code>// Hello world program written in PPL
                            // www.ppl-lang.dev
                            
                            function start
                                OS.out.write_line ( &quot;Hello world&quot; )
                            .
                            </code></pre>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_input" ) [title Input]

                [b Name: ][c input]

                [b Kind:] Node with raw text content

                [header Description]
                [p Any input provided to a software application, such as a command typed in a terminal, text contained in a config file, etc.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [input
                                ~~~
                                pmlc pml_to_html article.pml
                                ~~~
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <pre class="pml-input">pmlc pml_to_html article.pml</pre>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <pre class="pml-input">pmlc pml_to_html article.pml</pre>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_output" ) [title Output]

                [b Name: ][c output]

                [b Kind:] Node with raw text content

                [header Description]
                [p Any output created by a software application, such as a result written to the OS's standard output device.]

                [header Attributes]
                [list 
                    [el 
                        [header Node Identifier]
                        [table 
                            [tr [tc [b Name]][tc id]]
                            [tr [tc [b Is positional parameter]][tc No]]
                            [tr [tc [b Description]][tc A unique identifier for the node.[nl][nl]An id can be used to:[nl]- identify a node so that an internal link can be done with an 'xref' (cross reference) node.[nl]- identify a node so that it can be styled individually with CSS[nl]- create an HTML anchor so that it can be accessed with the # (hash) sign (e.g. writing id=foo will enable you to have an HTML link ending with #foo.[nl][nl]An identifier must start with a letter or an underscore, and can be followed by any number of letters, digits, underscores, dots, and hyphens. Note for programmers: The regex of an identifier is: \[a-zA-Z_\]\[a-zA-Z0-9_\\.-\]*. Identifiers are case-sensitive. The following identifiers are all different: name, Name, and NAME.[nl]]]
                            [tr [tc [b Type]][tc string or null]]
                            [tr [tc [b Required]][tc no]]
                            [tr [tc [b Default Value]][tc null]]
                            [tr [tc [b Example(s)]][tc id = basic_concept]]
                        ]
                    ]

                ]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [output
                                ~~~
                                Congratulations!
                                The new database has been created successfully.
                                ~~~
                            ]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <pre class="pml-output">Congratulations!
                            The new database has been created successfully.</pre>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <pre class="pml-output">Congratulations!
                            The new database has been created successfully.</pre>
                            ~~~
                        ]
                    ]
                ]

            ]

        ]

    ]

    [ch ( id="inline_nodes" ) [title Inline Nodes]
        [p An [i inline] node represents a part of a paragraph (a span of text). All nodes contained in a paragraph are inline nodes.]
        [p For example, the [c italic] node is an [i inline] node. All text contained in it is written in [i italics].]
        [ch ( id="font_nodes" ) [title Font]
            [ch ( id="node_b" ) [title Bold Text]

                [b Name: ][c b]

                [b Kind:] Node with child nodes

                [header Description]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            This is a [b huge] advantage.
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph">This is a <b class="pml-bold">huge</b> advantage.</p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph">This is a <b class="pml-bold">huge</b> advantage.</p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_i" ) [title Italic Text]

                [b Name: ][c i]

                [b Kind:] Node with child nodes

                [header Description]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            We want [i simplicity].
                            
                            This is a [b [i very] important] point.
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph">We want <i class="pml-italic">simplicity</i>.</p>
                            <p class="pml-paragraph">This is a <b class="pml-bold"><i class="pml-italic">very</i> important</b> point.</p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph">We want <i class="pml-italic">simplicity</i>.</p>
                            <p class="pml-paragraph">This is a <b class="pml-bold"><i class="pml-italic">very</i> important</b> point.</p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_sub" ) [title Subscript Text]

                [b Name: ][c sub]

                [b Kind:] Node with child nodes

                [header Description]
                [p Subscript text is rendered in a smaller font below the normal text line.]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            Water: H[sub 2]O
                            
                            This is [sub subscript], and this is [sup superscript]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph">Water: H<sub class="pml-subscript">2</sub>O</p>
                            <p class="pml-paragraph">This is <sub class="pml-subscript">subscript</sub>, and this is <sup class="pml-superscript">superscript</sup></p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph">Water: H<sub class="pml-subscript">2</sub>O</p>
                            <p class="pml-paragraph">This is <sub class="pml-subscript">subscript</sub>, and this is <sup class="pml-superscript">superscript</sup></p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_sup" ) [title Superscript Text]

                [b Name: ][c sup]

                [b Kind:] Node with child nodes

                [header Description]
                [p Superscript text is rendered in a smaller font above the normal text line.]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            2[sup 4] = 16
                            
                            This is [sup superscript], and this is [sub subscript]
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph">2<sup class="pml-superscript">4</sup> = 16</p>
                            <p class="pml-paragraph">This is <sup class="pml-superscript">superscript</sup>, and this is <sub class="pml-subscript">subscript</sub></p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph">2<sup class="pml-superscript">4</sup> = 16</p>
                            <p class="pml-paragraph">This is <sup class="pml-superscript">superscript</sup>, and this is <sub class="pml-subscript">subscript</sub></p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_strike" ) [title Strikethrough Text]

                [b Name: ][c strike]

                [b Kind:] Node with child nodes

                [header Description]
                [p Strikethrough text is rendered with a line through it.]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            [strike Only 50 tickets left.]
                            
                            SOLD OUT!
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph"><s class="pml-strikethrough">Only 50 tickets left.</s></p>
                            <p class="pml-paragraph">SOLD OUT!</p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph"><s class="pml-strikethrough">Only 50 tickets left.</s></p>
                            <p class="pml-paragraph">SOLD OUT!</p>
                            ~~~
                        ]
                    ]
                ]

            ]

            [ch ( id="node_c" ) [title Inline Source Code]

                [b Name: ][c c]

                [b Kind:] Node with raw text content

                [header Description]
                [p Source code embedded within text.]

                [header Attributes]
                [p This node doesn't have attributes.]

                [b HTML Attributes:] allowed

                [header Example]
                [list 
                    [el 
                        [p PML code:]
                        [code 
                            ~~~
                            The assignment [c pi = 3.1415] means we are using [i four] decimals for [c pi].
                            ~~~
                        ]
                    ]
                    [el 
                        [p Result:]
                        [html 
                            ~~~
                            <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                            <p class="pml-paragraph">The assignment <code class="pml-inline-code">pi = 3.1415</code> means we are using <i class="pml-italic">four</i> decimals for <code class="pml-inline-code">pi</code>.</p>
                            
                            </div>
                            ~~~
                        ]
                    ]
                    [el 
                        [p HTML code generated:]
                        [code 
                            ~~~
                            <p class="pml-paragraph">The assignment <code class="pml-inline-code">pi = 3.1415</code> means we are using <i class="pml-italic">four</i> decimals for <code class="pml-inline-code">pi</code>.</p>
                            ~~~
                        ]
                    ]
                ]

            ]

        ]

        [ch ( id="node_link" ) [title URL Link]

            [b Name: ][c link]

            [b Kind:] Node without child nodes

            [header Description]
            [p A URL link to a resource, such as a website or a file to download.]

            [header Attributes]
            [list 
                [el 
                    [header URL Text]
                    [table 
                        [tr [tc [b Name]][tc text]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The text to be displayed instead of the URL. If no text is specified then the URL itself is displayed.]]
                        [tr [tc [b Type]][tc string or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc text = our website]]
                    ]
                ]

                [el 
                    [header URL]
                    [table 
                        [tr [tc [b Name]][tc url]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The Uniform Resource Locator (URL) of the link.]]
                        [tr [tc [b Type]][tc string]]
                        [tr [tc [b Required]][tc yes]]
                        [tr [tc [b Default Value]][tc none]]
                        [tr [tc [b Example(s)]][tc url = https://www.ppl-lang.dev]]
                    ]
                ]

            ]

            [b HTML Attributes:] allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        Please have a look at [link url=https://www.pml-lang.dev/docs/articles/practical-document-markup-language/index.html text="this article"] for more information.
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <p class="pml-paragraph">Please have a look at <a class="pml-link" href="https://www.pml-lang.dev/docs/articles/practical-document-markup-language/index.html">this article</a> for more information.</p>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <p class="pml-paragraph">Please have a look at <a class="pml-link" href="https://www.pml-lang.dev/docs/articles/practical-document-markup-language/index.html">this article</a> for more information.</p>
                        ~~~
                    ]
                ]
            ]

        ]

        [ch ( id="node_verbatim" ) [title Verbatim Text]

            [b Name: ][c verbatim]

            [b Kind:] Node with raw text content

            [header Description]
            [p Raw, verbatim text that is rendered as is, without any transformations]

            [header Attributes]
            [p This node doesn't have attributes.]

            [b HTML Attributes:] allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        Math's ring operator is [verbatim &#x2218;].
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <p class="pml-paragraph">Math's ring operator is &#x2218;.</p>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <p class="pml-paragraph">Math's ring operator is &#x2218;.</p>
                        ~~~
                    ]
                ]
            ]

        ]

        [ch ( id="node_xref" ) [title Cross-Reference]

            [b Name: ][c xref]

            [b Kind:] Node without child nodes

            [header Description]
            [p A cross-reference (link) to another node in the same document.]

            [header Attributes]
            [list 
                [el 
                    [header Referenced Node Id]
                    [table 
                        [tr [tc [b Name]][tc node_id]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The identifier of the node that is referenced.]]
                        [tr [tc [b Type]][tc string]]
                        [tr [tc [b Required]][tc yes]]
                        [tr [tc [b Default Value]][tc none]]
                        [tr [tc [b Example(s)]][tc node_id = chapter_1]]
                    ]
                ]

                [el 
                    [header Text]
                    [table 
                        [tr [tc [b Name]][tc text]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The text to be displayed for the cross-reference.[nl]If this attribute is omitted, then the title of the target node is displayed. If the target node doesn't have a title, then the target node's identifier is displayed instead.]]
                        [tr [tc [b Type]][tc string or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc text = "Hello World example"]]
                    ]
                ]

            ]

            [b HTML Attributes:] allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        [ch (id=solution) [title A Beautiful Solution]
                            text text text
                        ]
                        
                        [ch [title Conclusion]
                            As we saw in chapter [xref node_id=solution], it is ...
                        ]
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <section id="solution" class="pml-chapter">
                            <h2 class="pml-chapter-title">A Beautiful Solution</h2>
                            <p class="pml-paragraph">text text text </p>
                        
                        </section>
                        <section id="ch__2" class="pml-chapter">
                            <h2 class="pml-chapter-title">Conclusion</h2>
                            <p class="pml-paragraph">As we saw in chapter <a class="pml-xref" href="#solution">A Beautiful Solution</a>, it is ... </p>
                        
                        </section>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <section id="solution" class="pml-chapter">
                            <h2 class="pml-chapter-title">A Beautiful Solution</h2>
                            <p class="pml-paragraph">text text text </p>
                        
                        </section>
                        <section id="ch__2" class="pml-chapter">
                            <h2 class="pml-chapter-title">Conclusion</h2>
                            <p class="pml-paragraph">As we saw in chapter <a class="pml-xref" href="#solution">A Beautiful Solution</a>, it is ... </p>
                        
                        </section>
                        ~~~
                    ]
                ]
            ]

        ]

        [ch ( id="node_span" ) [title Span]

            [b Name: ][c span]

            [b Kind:] Node with child nodes

            [header Description]
            [p This inline node is typically used to render a HTML <span>...</span> inline element with a specific set of HTML attributes.]

            [header Attributes]
            [p This node doesn't have attributes.]

            [b HTML Attributes:] allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        This is a [span (html_style="color:red;background-color:yellow") huge] advantage.
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <p class="pml-paragraph">This is a <span class="pml-span" style="color:red;background-color:yellow">huge</span> advantage.</p>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <p class="pml-paragraph">This is a <span class="pml-span" style="color:red;background-color:yellow">huge</span> advantage.</p>
                        ~~~
                    ]
                ]
            ]

        ]

        [ch ( id="node_nl" ) [title New Line]

            [b Name: ][c nl]

            [b Kind:] Node without child nodes

            [header Description]
            [p An explicit new line (line break) inserted in the document.]

            [header Attributes]
            [p This node doesn't have attributes.]

            [b HTML Attributes:] not allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        Line 1[nl][nl]Line 2
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <p class="pml-paragraph">Line 1<br /><br />Line 2</p>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <p class="pml-paragraph">Line 1<br /><br />Line 2</p>
                        ~~~
                    ]
                ]
            ]

        ]

        [ch ( id="node_sp" ) [title Space Character]

            [b Name: ][c sp]

            [b Kind:] Node without child nodes

            [header Description]
            [p An explicit space character inserted in the document. Whitespace composed of several characters (such as two spaces) is always converted into a single space (as in HTML). Hence, this node can be used to explicitly insert two or more spaces.]

            [header Attributes]
            [p This node doesn't have attributes.]

            [b HTML Attributes:] not allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        This is  g  o  o  d !  [- 2 spaces will result in ONE space -]
                        
                        This is [sp]g[sp][sp]o[sp][sp]o[sp][sp]d[sp]!
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <p class="pml-paragraph">This is g o o d !</p>
                        <p class="pml-paragraph">This is &nbsp;g&nbsp;&nbsp;o&nbsp;&nbsp;o&nbsp;&nbsp;d&nbsp;!</p>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <p class="pml-paragraph">This is g o o d !</p>
                        <p class="pml-paragraph">This is &nbsp;g&nbsp;&nbsp;o&nbsp;&nbsp;o&nbsp;&nbsp;d&nbsp;!</p>
                        ~~~
                    ]
                ]
            ]

        ]

        [ch ( id="node_text" ) [title Text]

            [b Name: ][c text]

            [b Kind:] Node with raw text content

            [header Description]
            [p A node containing text.[nl]Normally this node is not used in hand-written documents, because free text is implicitly contained in a 'text' node.]

            [header Attributes]
            [p This node doesn't have attributes.]

            [b HTML Attributes:] allowed

            [header Example]
            [list 
                [el 
                    [p PML code:]
                    [code 
                        ~~~
                        [text All is very well.]
                        All is very well.
                        ~~~
                    ]
                ]
                [el 
                    [p Result:]
                    [html 
                        ~~~
                        <div style="border: 1px dotted grey; padding-left: 1em; padding-right: 1em;border-radius: 7px;">
                        <p class="pml-paragraph">All is very well. All is very well. </p>
                        
                        </div>
                        ~~~
                    ]
                ]
                [el 
                    [p HTML code generated:]
                    [code 
                        ~~~
                        <p class="pml-paragraph">All is very well. All is very well. </p>
                        ~~~
                    ]
                ]
            ]

        ]

    ]

]
