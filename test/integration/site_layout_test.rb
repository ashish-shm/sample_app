require 'test_helper'
class SiteLayoutTest < ActionDispatch::IntegrationTest

    def setup
        @user = users(:example)
    end

    test "layout links when logged in" do
        log_in_as(@user)
        assert is_logged_in?
        get root_path
        assert_template 'static_pages/home'
        assert_select "a[href=?]", root_path, count: 2
        assert_select "a[href=?]", help_path
        assert_select "a[href=?]", users_path
        assert_select "a[href=?]", about_path
        assert_select "a[href=?]", contact_path
        # assert_select "a[href=?]", signup_path
    end

    test "layout links when not logged in" do
        get root_path
        assert_template 'static_pages/home'
        assert_select "a[href=?]", root_path, count: 2
        assert_select "a[href=?]", help_path
        assert_select "a[href=?]", login_path
        assert_select "a[href=?]", about_path
        assert_select "a[href=?]", contact_path
        assert_select "a[href=?]", signup_path
    end
end