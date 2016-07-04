defmodule GraphQL.Schema.Backend do
  alias GraphQL.Schema
  alias GraphQL.Type.ObjectType
  alias GraphQL.Type.String
  alias GraphQL.Type.ID

  defmodule Color do
    def type do
      %ObjectType{
        name: "Color",
        description: "Incinerator smoke color",
        fields: %{
          id: %{type: %NonNull{ofType: %String{}}},
          name: %{type: %String{}},
          example_images: %{type: %List{ofType: Report}},
        },
      }
    end
  end

  defmodule Report do
    def type do
      %ObjectType{
        name: "Report",
        description: "Smell report",
        fields: %{
          id: %{type: %NonNull{ofType: %String{}}},
          # WIP
        }
      }
    end
  end

  def schema do
    %Schema{
      query: %ObjectType{
        name: "Query",
        fields: %{
          color: %{
            type: 
          }
        }
      }
    }
end
