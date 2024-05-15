require "test_helper"

class MinesweeperBoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get minesweeper_boards_new_url
    assert_response :success
  end

  test "should get create" do
    get minesweeper_boards_create_url
    assert_response :success
  end

  test "should get show" do
    get minesweeper_boards_show_url
    assert_response :success
  end

  test "should get index" do
    get minesweeper_boards_index_url
    assert_response :success
  end
end
