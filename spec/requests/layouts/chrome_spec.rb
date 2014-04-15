require 'spec_helper'

describe 'chrome' do

  describe 'all users' do
    before( :each ){ get root_path }

    it { assert_select 'p.notice', '' }
    it { assert_select 'p.alert', '' }
  end

  describe 'visitors' do
    before( :each ){ get root_path }

    it { assert_select "a[href='/users/sign_in']", 'Sign In' }
    it { assert_select "a[href='/users/sign_up']", 'Sign Up' }
    it { assert_select "a[href='/users/sign_out']", false }
  end

  describe 'logged in users' do
    before( :each ){ log_in FactoryGirl.create( :user ) }

    it { assert_select "a[href='/users/sign_out']", 'Sign Out' }
    it { assert_select "a[href='/users/sign_in']", false }
    it { assert_select "a[href='/users/sign_up']", false }

  end
end
