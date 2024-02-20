require "test_helper"

class GrubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grub = grubs(:one)
  end

  test "should get index" do
    get grubs_url
    assert_response :success
  end

  test "should get new" do
    get new_grub_url
    assert_response :success
  end

  test "should create grub" do
    assert_difference("Grub.count") do
      post grubs_url, params: { grub: { calories: @grub.calories, cuisine: @grub.cuisine, name: @grub.name, price: @grub.price } }
    end

    assert_redirected_to grub_url(Grub.last)
  end

  test "should show grub" do
    get grub_url(@grub)
    assert_response :success
  end

  test "should get edit" do
    get edit_grub_url(@grub)
    assert_response :success
  end

  test "should update grub" do
    patch grub_url(@grub), params: { grub: { calories: @grub.calories, cuisine: @grub.cuisine, name: @grub.name, price: @grub.price } }
    assert_redirected_to grub_url(@grub)
  end

  test "should destroy grub" do
    assert_difference("Grub.count", -1) do
      delete grub_url(@grub)
    end

    assert_redirected_to grubs_url
  end
end
