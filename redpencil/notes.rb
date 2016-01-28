=begin
A red pencil promotion starts due to a price reduction.
    The price has to be reduced by at least 5% but at most be 30% and the previous price
    had to be stable for at least 30 days.
A red pencil promotion lasts 30 days as the maximum length.
If the price is further reduced during the red pencil promotion the promotion will not
    be prolonged by that reduction.
If the price is increased during the red pencil promotion the promotion will
    be ended immediately.
If the price if reduced during the red pencil promotion so that the overall
    reduction is more than 30% with regard to the original price, the promotion is
    ended immediately.
After a red pencil promotion is ended additional red pencil promotions may follow –
    as long as the start condition is valid: the price was stable for 30 days and
    these 30 days don’t intersect with a previous red pencil promotion.
=end


=begin
My notes:
     What type of objects would make sense?

     Store class
        stock: attributes    price
                            duration of price stability


     Sale object
                    reduction of price

     red pencil object
                    duration of red pencil <= 30
                    sale price must be >= 5%
                    sale price must be <= 30%

        if price is increased, red pencil ends immediately.
        if sale price exceeds 30%, red pencil ends immediately


=end


=begin
Test Features:
I own a Store
My stock has a price
My stock can be reduced or incresed in price
When price is reduced => 5% && <= 30% a red pencil promotion begins
I want a red pencil promotion to incentivize customers to buy stock

My stock will have these attributes: original price, current price, duration of
      current price

Redpencil Promotion has these attributes: duration of promotion, current discount


As a customer:
I want to know the price of stock
So I know how much to pay for

As a store owner
I want my customers to know discounted prices
so I can incentivize them to buy old stock


Stock class
     Price object
     Sale object
        RedPencil Object


=end
