# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Database.MySql.Model.ConfigurationListResult do
  @moduledoc """
  A list of server configurations.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value"
  ]

  @type t :: %__MODULE__{
    :"value" => [Configuration]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Database.MySql.Model.ConfigurationListResult do
  import Microsoft.Azure.Management.Database.MySql.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Database.MySql.Model.Configuration, options)
  end
end
