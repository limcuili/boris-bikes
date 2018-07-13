require 'docking_station'

describe DockingStation do

	#	it { respond_to?(release_bike) }
	it '#checks bike is working' do
		bike = Bike.new
		expect(bike).to be_working
	end

	describe '#release_bike' do
		it { is_expected.to respond_to :release_bike}
		# Using a '#' before a method name implies that it is an instance method.
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
	 	end

		it '#returns docked bikes' do
			bike = Bike.new
			subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end
	end

	describe '#dock(bike)' do
		# expect it to raise an error when there's already a bike docked.
		it 'raises an error when there are no empty docks' do
			subject.capacity.times { subject.dock(Bike.new) }
			expect { subject.dock(Bike.new) }.to raise_error 'Docking station full'
		end
	end

	it { is_expected.to respond_to(:dock).with(1).argument }
	it '#docks something' do
		bike = Bike.new
		# We want to return the bike we dock
		expect(subject.dock(bike)).to eq bike
	end


end
