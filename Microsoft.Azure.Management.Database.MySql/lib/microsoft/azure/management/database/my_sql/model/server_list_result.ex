# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.MySql.Model.ServerListResult do
  @moduledoc """
  A list of servers.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Server]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.MySql.Model.ServerListResult do
  import Microsoft.Azure.Management.Database.MySql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Database.MySql.Model.Server, options)
  end
end

