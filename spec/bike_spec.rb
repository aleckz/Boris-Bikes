require 'bike'

describe Bike do

it { is_expected.to respond_to :working? }

it { is_expected.to respond_to :broken? }

it {is_expected.not_to be_broken}

it {is_expected.to be_working}

it 'can be reported as broken' do
  subject.report_broken
  expect(subject).to be_broken
end



end

