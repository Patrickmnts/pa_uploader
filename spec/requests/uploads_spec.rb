require 'spec_helper'


describe "Uploads" do

  describe "GET static pages" do
    # I would love to put a before block for visit '/' but I havent figured out how with Capybara.

    it "lands on homepage successfully" do
      visit '/'
      expect(page.status_code).to be(200)
    end
      # as upposed to the old syntax which is much less performant.
      # (page.status_code).should be(200)
  end

  describe "Submit an attachment throught form" do
    it "fails when nothing is entered in form" do
      visit '/'
      within(".new_upload") do
        click_button 'Create Upload'
      end
      expect(page).to have_text('prohibited')
    end

# I know I should have tests for completion as well, I was having a hard time coming up with a test for completion
# that wouldn't run into issues concerning ActionMailer in test mode.
    it "should be on Upload.new with successful completion"


    it "fails with invalid email" do
      visit '/'

      within(".new_upload") do
        fill_in 'upload_user_name', :with => 'Patrick Mounts'
        fill_in 'upload_user_email', :with => 'nahnahnahnah'
        fill_in 'upload_recipient_email', :with => 'me@lucascharles.me'
        fill_in 'upload_message', :with => 'YOU RULE!'
        attach_file ('upload_package'), "#{Rails.root}/spec/requests/fixtures/mock_upload.txt"
        click_button 'Create Upload'
      end
      expect(page).to have_text('prohibited')

    end

    it "fails with no attachement" do
      visit '/'

      within(".new_upload") do
        fill_in 'upload_user_name', :with => 'Patrick Mounts'
        fill_in 'upload_user_email', :with => 'patrickmnts@gmail.com'
        fill_in 'upload_recipient_email', :with => 'me@lucascharles.me'
        fill_in 'upload_message', :with => 'YOU RULE!'
        click_button 'Create Upload'
      end
      expect(page).to have_text('prohibited')
    end

  end
end