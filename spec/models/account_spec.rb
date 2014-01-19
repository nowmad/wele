require 'spec_helper'

describe Account do
  it 'deveria validar o nome' do
  	account = Account.new()
  	expect(account.save).to eq(false)
  end
end

