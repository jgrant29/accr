require 'spec_helper'

module Spree
  describe Classification, :type => :model do
    # Regression test for https://github.com/spree/spree/issues/3494
    it "cannot link the same taxon to the same product more than once" do
      product = create(:product)
      taxon = create(:taxon)
      add_taxon = lambda { product.taxons << taxon }
      add_taxon.call
      expect(add_taxon).to raise_error(ActiveRecord::RecordInvalid)
    end

    let(:taxon_with_5_products) do
      products = []
      5.times do
        products << create(:base_product)
      end

      create(:taxon, products: products)
    end

    def positions_to_be_valid(taxon)
      positions = taxon.reload.classifications.map(&:position)
      expect(positions).to eq((1..taxon.classifications.count).to_a)
    end

    it "has a valid fixtures" do
      expect positions_to_be_valid(taxon_with_5_products)
      expect(Spree::Classification.count).to eq 5
    end

    context "removing product from taxon" do
      before :each do
        p = taxon_with_5_products.products[1]
        expect(p.classifications.first.position).to eq(2)
        taxon_with_5_products.products.destroy(p)
      end

      it "resets positions" do
        expect positions_to_be_valid(taxon_with_5_products)
      end
    end

    context "replacing taxon's products" do
      before :each do
        products = taxon_with_5_products.products.to_a
        products.pop(1)
        taxon_with_5_products.products = products
        taxon_with_5_products.save!
      end

      it "resets positions" do
        expect positions_to_be_valid(taxon_with_5_products)
      end
    end

    context "removing taxon from product" do
      before :each do
        p = taxon_with_5_products.products[1]
        p.taxons.destroy(taxon_with_5_products)
        p.save!
      end

      it "resets positions" do
        expect positions_to_be_valid(taxon_with_5_products)
      end
    end

    context "replacing product's taxons" do
      before :each do
        p = taxon_with_5_products.products[1]
        p.taxons = []
        p.save!
      end

      it "resets positions" do
        expect positions_to_be_valid(taxon_with_5_products)
      end
    end

    context "destroying classification" do
      before :each do
        classification = taxon_with_5_products.classifications[1]
        classification.destroy
      end

      it "resets positions" do
        expect positions_to_be_valid(taxon_with_5_products)
      end
    end
  end
end
