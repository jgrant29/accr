require 'spec_helper'

module Spree
  RSpec.describe PaymentCreate do
    let(:user) { nil }
    let(:order) { create :order, user: user }
    let(:request_env) { {} }
    let(:payment_create) { described_class.new(order, attributes, request_env: request_env) }
    let(:payment_method) { create(:payment_method) }
    let(:new_payment) { payment_create.build }

    context 'empty attributes' do
      let(:attributes){ {} }
      it "builds a new empty payment" do
        expect(new_payment).to be_a Spree::Payment
        expect(new_payment.order).to eq order
        expect(new_payment.source).to be_nil
      end

      it "builds the payment in order.payments" do
        expect(order.payments).to eq [new_payment]
      end
    end

    context 'with a new source' do
      let(:attributes) do
        {
          :amount => 100,
          :payment_method => payment_method,
          :source_attributes => {
            :expiry =>"01 / 99",
            :number => '1234567890123',
            :verification_value => '123',
            :name => 'Foo Bar'
          }
        }
      end

      it "should build the payment's source" do
        expect(new_payment).to be_valid
        expect(new_payment.source).not_to be_nil
        expect(new_payment.source.user_id).to eq order.user_id
        expect(new_payment.source.payment_method_id).to eq payment_method.id
      end

      context "when payment source not valid" do
        let(:attributes) do
          {
            amount: 100,
            payment_method: payment_method,
            source_attributes: {expiry: "1 / 12"}
          }

        end
        it "errors when payment source not valid" do
          expect(new_payment).not_to be_valid
          expect(new_payment).not_to be_persisted
          expect(new_payment.source).not_to be_persisted
          expect(new_payment.source).not_to be_valid
          expect(new_payment.source.error_on(:number)).to be_present
          expect(new_payment.source.error_on(:verification_value).size).to be_present
        end
      end
    end

    context 'with an existing credit card' do
      let(:user) { create(:user) }
      let!(:credit_card) { create(:credit_card, user: order.user) }

      let(:attributes) do
        {
          source_attributes: {
            existing_card_id: credit_card.id,
            verification_value: '321',
          }
        }
      end

      it 'sets the existing card as the source for the new payment' do
        expect(new_payment.source).to eq(credit_card)
      end

      it 'sets the payment payment_method to that of the credit card' do
        expect(new_payment.payment_method_id).to eq(credit_card.payment_method_id)
      end

      it 'sets the verification_value on the credit card' do
        expect(new_payment.source.verification_value).to eq('321')
      end

      context 'with request_env' do
        let(:request_env){ {'USER_AGENT' => 'Firefox'} }
        it 'sets the request_env on the payment' do
          expect(new_payment.request_env).to eq({'USER_AGENT' => 'Firefox'})
        end
      end

      context 'the credit card belongs to a different user' do
        let(:other_user) { create(:user) }
        before { credit_card.update!(user: other_user) }
        it 'errors' do
          expect { new_payment }.to raise_error(ActiveRecord::RecordNotFound)
        end
      end

      context 'the credit card has no user' do
        before { credit_card.update!(user_id: nil) }
        it 'errors' do
          expect { new_payment }.to raise_error(ActiveRecord::RecordNotFound)
        end
      end

      context 'the order has no user' do
        before { order.update_attributes!(user_id: nil) }
        it 'errors' do
          expect { new_payment }.to raise_error(ActiveRecord::RecordNotFound)
        end
      end

      context 'the order and the credit card have no user' do
        before do
          order.update_attributes!(user_id: nil)
          credit_card.update!(user_id: nil)
        end
        it 'errors' do
          expect { new_payment }.to raise_error(ActiveRecord::RecordNotFound)
        end
      end
    end
  end
end
