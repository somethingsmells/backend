defmodule Backend.ColorTest do
  use Backend.ModelCase

  alias Backend.Color

  @valid_attrs %{image: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Color.changeset(%Color{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Color.changeset(%Color{}, @invalid_attrs)
    refute changeset.valid?
  end
end
