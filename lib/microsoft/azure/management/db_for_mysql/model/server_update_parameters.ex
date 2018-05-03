# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForMysql.Model.ServerUpdateParameters do
  @moduledoc """
  Parameters allowd to update for a server.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"sku",
    :"properties",
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"sku" => Sku,
    :"properties" => ServerUpdateParametersProperties,
    :"tags" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForMysql.Model.ServerUpdateParameters do
  import Microsoft.Azure.Management.DbForMysql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sku", :struct, Microsoft.Azure.Management.DbForMysql.Model.Sku, options)
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.DbForMysql.Model.ServerUpdateParametersProperties, options)
  end
end

