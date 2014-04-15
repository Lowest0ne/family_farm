require 'spec_helper'

describe 'user sign in' do

  before( :each ){ get new_user_session_path }

  it { assert_select 'h2', 'Sign in' }

  it 'has a proper form' do

    assert_select "form[action='/users/sign_in'][method='post']" do
      assert_select "input[id='user_email'][type='email']", 1
      assert_select "input[id='user_password'][type='password']", 1
      assert_select "input[name='commit'][type='submit']", 1
    end

  end

end
