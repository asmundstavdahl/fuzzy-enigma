
def re_tail(olds, news)
    while olds.size > 0
        if olds == news[0, olds.size]
            break
        else
            olds.shift
        end
    end

    news.shift olds.size

    news
end
