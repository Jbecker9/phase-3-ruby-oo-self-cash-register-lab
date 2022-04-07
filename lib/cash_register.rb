
class CashRegister
attr_accessor :discount, :total, :items, :last_transaction


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, ammount = 1)
        self.last_transaction = (price * ammount)
        self.total += self.last_transaction
        #ammount.times {|i| items.push(item)}
        ammount.times do
            self.items << title
        end
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            @total = total - (total * (discount/100.to_f))
            "After the discount, the total comes to $#{total.to_int}."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
        #removed_item = items[items.length - 1]
        #self.total -= removed_item.to_int
    end

end