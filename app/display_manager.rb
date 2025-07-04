require_relative 'transaction_processor'

class DisplayManager
  include TransactionFormattable

  def initialize(transaction_processor)
    @transaction_processor = transaction_processor
  end

  def format_product_list(products)
    #"Available Products:\n B2 - Soda Pop - 2.20"
    output = []
    output << "Available Products:"

    products.each do |code, product|
      output_line = " #{code} - #{product[:name]} - #{product[:price]}"
      output << output_line
    end

    output.join("\n")
  end

  def format_transaction_result(product_name, change)
    basic_result = "Dispensed #{product_name}"
    last_transaction = @transaction_processor.last_transaction_details

    basic_result + " with change #{change}\n" + last_transaction
  end
end
