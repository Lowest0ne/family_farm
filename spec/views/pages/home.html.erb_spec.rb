require 'spec_helper'

describe 'pages/home' do

  before(:each){ render }

  it { assert_select 'h1', 'Welcome to Family Farms' }
  it { assert_select 'h2', 'Where you can organize your small farm and connect to others' }

end
