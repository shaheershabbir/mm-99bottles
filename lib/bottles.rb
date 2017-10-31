class Bottles

    def verse(bottleCount)
        "#{constructIntro(bottleCount)}\n#{constructAction(bottleCount-1)}\n"
    end

    def verses(startCount, endCount)
        output = verse(startCount)
        while startCount > endCount do
            startCount = startCount - 1
            output += "\n#{verse(startCount)}"
        end
        output
    end

    def song
        verses(99, 0)
    end

    private
    def constructIntro(bottleCount)
        if bottleCount > 0
            "#{bottleCount} #{pluralizeBottle(bottleCount)} of beer on the wall, #{bottleCount} #{pluralizeBottle(bottleCount)} of beer."
        else
            "No more bottles of beer on the wall, no more bottles of beer."
        end
    end

    def constructAction(bottleCount)
        if bottleCount < 0
            "Go to the store and buy some more, 99 bottles of beer on the wall."
        else
            bottleCount > 0 ? "Take one down and pass it around, #{bottleCount} #{pluralizeBottle(bottleCount)} of beer on the wall." : "Take it down and pass it around, no more bottles of beer on the wall."
        end
    end

    def pluralizeBottle(bottleCount)
        bottleCount > 1 ? "bottles" : "bottle"
    end
end