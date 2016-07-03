defmodule Backend.ReportTest do
  use Backend.ModelCase

  alias Backend.Report

  @valid_attrs %{user_id: 231, geom: %Geo.Point{coordinates: {30, -90}, srid: 4326}, color_id: 121, time: "2010-04-17 14:00:00"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Report.changeset(%Report{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Report.changeset(%Report{}, @invalid_attrs)
    refute changeset.valid?
  end
end
