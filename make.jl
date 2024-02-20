using Documenter

makedocs(
    sitename="Scribbleios",
    authors="James Schloss (Leios)",
    pages = [
        "2024" => Any[
            "The Livestreaming Accident" => "content/2024/February/20.md",
        ],
        "2022" => Any[
            "The Commute" => "content/2022/August/01.md",
            "The USB Hero" => "content/2022/May/10.md",
            "The Modern Blacksmith" => "content/2022/April/11.md",
            "The Humbler" => "content/2022/April/07.md",
            "The Conscious Actor" => "content/2022/March/30.md",
            "Digital Selves" => "content/2022/February/24.md",
            "Walking to School" => "content/2022/February/15.md",
            "Wikipedia: Peter Shelly" => "content/2022/February/11.md",
            "Bittersweet Memories" => "content/2022/February/02.md",
            "Academic Correspondences" => "content/2022/February/01.md",
            "The Beowulf Poet" => "content/2022/January/31.md",
            "A Waste of Time" => "content/2022/January/23.md",
            "Describing a Tree" => "content/2022/January/02.md",
            "The Future" => "content/2022/January/06.md",
        ],
        "2021" => Any[
            "The NPC" => "content/2021/December/12.md",
            "A Talentless Student" => "content/2021/February/03.md",
            "The Master's Disciple" => "content/2021/February/02.md",
            "The Potion Master" => "content/2021/February/01.md",
            "The G00Gl3 Interview" => "content/2021/January/31.md",
            "A Mother's Love" => "content/2021/January/30.md",
            "The Creation Machine" => "content/2021/January/29.md",
            "The Great Collapse" => "content/2021/January/28.md",
            "Losing Myself" => "content/2021/January/27.md",
            "Merfolk" => "content/2021/January/26.md",
            "The Super Couple" => "content/2021/January/22.md",
            "The Girlfriend" => "content/2021/January/03.md",
            "The Anti-Poem" => "content/2021/January/02.md",
            "Who I Want to Be" => "content/2021/January/01.md",
        ],
        "2020" => Any[
            "Reincarnated Happiness" => "content/2020/December/27.md",
            "The Helpful Demon" => "content/2020/December/26.md",
            "Sophia and Aheb" => "content/2020/December/25.md",
            "Age Regression" => "content/2020/December/24.md",
            "Shy Gal" => "content/2020/December/23.md",
            "This is Not the End" => "content/2020/December/12.md",
            "All the Right Questions" => "content/2020/December/11.md",
            "Returning to the Sea" => "content/2020/December/10.md",
            "How Elves are Made" => "content/2020/December/09.md",
            "The American Hero" => "content/2020/December/08.md",
            "Jim" => "content/2020/December/07.md",
            "The Cult of Vi" => "content/2020/December/06.md",
            "Rhyming Truths" => "content/2020/December/05.md",
            "The Blind Dragon" => "content/2020/December/04.md",
            "Santa Stole the Money" => "content/2020/December/03.md",
            "The Angel of Mercy" => "content/2020/December/02.md",
            "The Genie Order" => "content/2020/December/01.md",
            "The Bargaining Protagonist" => "content/2020/November/30.md",
            "Raindrops on the Window" => "content/2020/November/29.md",
            "Happy Habitat" => "content/2020/October/06.md",
            "Another Castle" => "content/2020/October/05.md",
            "Glitching" => "content/2020/October/04.md",
            "Mirrors on the Wall" => "content/2020/October/03.md",
            "The Forest Guardian" => "content/2020/October/02.md",
            "The Prince of Time" => "content/2020/October/01.md",
            "The Sword and Shield" => "content/2020/July/6.md",
            "The Unsettling Sandwich" => "content/2020/July/4.md",
            "Afraid of the Light" => "content/2020/July/3.md",
            "The Demon Professor" => "content/2020/July/2.md",
            "Tree Traversing Super Power" => "content/2020/July/1.md",
            "Luminescent Love Story" => "content/2020/June/30.md",
            "Becoming Anything" => "content/2020/June/29.md",
        ],

    ],
)

deploydocs(;
    repo="github.com/leios/scribbleios",
)
