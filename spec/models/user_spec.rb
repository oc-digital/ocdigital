require 'rails_helper'

RSpec.describe User, type: :model do
  it { should respond_to(:bio) }
  it { should respond_to(:email) }
  it { should respond_to(:first_name) }
  it { should respond_to(:gplus) }
  it { should respond_to(:last_name) }
  it { should respond_to(:role) }
  it { should respond_to(:twitter_handle) }

end
