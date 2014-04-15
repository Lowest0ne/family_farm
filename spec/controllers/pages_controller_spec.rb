require 'spec_helper'

describe PagesController do

  describe 'home page' do

    before( :each ){ get :home }

    subject{ response }

    it { should be_success }
    it { should render_template( root_path ) }

  end

end
