def parse_invoices(invoice_data)
  # Regular expression pattern to extract date, invoice number, client name, and amount
  pattern = /(\d{4}-\d{2}-\d{2}) - ([\w\d]+) - ([\w\s]+) - \$([\d,]+)/

  # Iterate over each line of the invoice data
  invoice_data.each_line do |line|
    # Match the pattern against each line
    match_data = line.match(pattern)

    # If a match is found, extract and display the details
    if match_data
      date = match_data[1]
      invoice_number = match_data[2]
      client_name = match_data[3]
      amount = match_data[4]

      # Display the extracted details in a structured format
      puts "Date: #{date}, Invoice Number: #{invoice_number}, Client: #{client_name}, Amount: $#{amount}"
    end
  end
end

# Sample invoice entries
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

# Call the parse_invoices method with the sample invoice entries
parse_invoices(invoice_entries)
