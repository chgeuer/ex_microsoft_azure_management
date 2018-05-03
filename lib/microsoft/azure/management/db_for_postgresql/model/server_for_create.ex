# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForPostgresql.Model.ServerForCreate do
  @moduledoc """
  Represents a server to be created.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"sku",
    :"properties",
    :"location",
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"sku" => Sku,
    :"properties" => ServerPropertiesForCreate,
    :"location" => String.t,
    :"tags" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForPostgresql.Model.ServerForCreate do
  import Microsoft.Azure.Management.DbForPostgresql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"sku", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.Sku, options)
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.DbForPostgresql.Model.ServerPropertiesForCreate, options)
  end
end
