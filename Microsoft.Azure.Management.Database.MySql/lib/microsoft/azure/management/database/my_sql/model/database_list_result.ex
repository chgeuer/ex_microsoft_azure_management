# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.MySql.Model.DatabaseListResult do
  @moduledoc """
  A List of databases.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Database]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.MySql.Model.DatabaseListResult do
  import Microsoft.Azure.Management.Database.MySql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Database.MySql.Model.Database, options)
  end
end

