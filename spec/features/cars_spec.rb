require 'rails_helper'
require 'capybara/rails'


RSpec.feature 'Cars', type: :feature, js: true do
    context 'test1' do
        let!(:car) { create(:car, brand: 'VW', model: 'GOL')}
        let!(:car2) { create(:car, brand: 'Chevrolett', model: 'Corsa') }
        let!(:car3) { create(:car, brand: 'Ford', model: 'Falcon') }
        let!(:car4) { create(:car, brand: 'Toyota', model: 'Hilux') }
        
        it 'List cars and filter by brand' do
            visit cars_path
            expect(page).to have_content('VW Chevrolet Ford Toyota')
            expect(page).to have_content('Corsa')

            check 'Ford'
            sleep 1
            expect(page).to have_content('Ford')
            expect(page).not_to have_content('Corsa')
            # Resto de tu código de prueba
        end
    end
end

  