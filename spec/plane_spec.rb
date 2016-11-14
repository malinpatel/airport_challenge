require './lib/plane.rb'
require './lib/airport.rb'

describe Plane do
  subject (:plane) {described_class.new}
  let (:airport) {double :airport}

    describe '#take off' do
      it 'raises an error if trying to take off while already flying' do
        plane.take_off
        expect{plane.take_off}.to raise_error 'Plane cannot take off: already flying.'
      end

      it 'flying planes cannot take off' do
        plane.take_off
        expect{plane.take_off}.to raise_error("Plane cannot take off: already flying.")
      end
    end

    describe '#land' do
        it 'raises an error if already landed' do
          plane.take_off
          plane.land
          expect {plane.land}.to raise_error 'Plane cannot land: plane already landed.'
      end
    end



end
