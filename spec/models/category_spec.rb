require 'spec_helper'

describe Category do
  it 'can have a father' do
    parent_node = Category.create :name => 'receita moov', :is_debit => 'false'
    child_node = Category.create :name => 'plano profissional', :father => parent_node

    expect(child_node.father).to eq(parent_node)
  end

end
