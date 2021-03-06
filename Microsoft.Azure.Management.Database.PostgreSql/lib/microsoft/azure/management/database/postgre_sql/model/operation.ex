# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.PostgreSql.Model.Operation do
  @moduledoc """
  REST API operation definition.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"display",
    :"origin",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"display" => OperationDisplay,
    :"origin" => String.t,
    :"properties" => %{optional(String.t) => Object}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.PostgreSql.Model.Operation do
  import Microsoft.Azure.Management.Database.PostgreSql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"display", :struct, Microsoft.Azure.Management.Database.PostgreSql.Model.OperationDisplay, options)
    |> deserialize(:"properties", :map, Microsoft.Azure.Management.Database.PostgreSql.Model.Object, options)
  end
end

