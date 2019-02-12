# Write your code here.

def dictionary(word)
    words = {
        "hello" => "hi",
        "to" => '2',
        'two' => '2',
        "too" => '2',
        "for" => '4', 
        "four" => '4',
        'be' => 'b',
        'you' => 'u',
        "at" => "@",
        "and" => "&"
    }
    if words[word.downcase] == nil
        return word
    else
        return words[word.downcase]
    end
end

def word_substituter(str)
    str.split.map {|i| dictionary(i)}.join(" ")
end

def bulk_tweet_shortener(arr)
    arr.each { |tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(str)
    if str.length < 141
        return str
    else
        return word_substituter(str)
    end
end

def shortened_tweet_truncator(str)
    if word_substituter(str).length > 140
        return word_substituter(str)[0..136] + "..."
    else
        return word_substituter(str)
    end
end