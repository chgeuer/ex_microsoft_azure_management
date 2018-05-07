# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Advisor.Model.ConfigData do
  @moduledoc """
  The Advisor configuration data structure.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"type",
    :"name",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"type" => String.t,
    :"name" => String.t,
    :"properties" => %{optional(String.t) => Object}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Advisor.Model.ConfigData do
  import Microsoft.Azure.Management.Advisor.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :map, Microsoft.Azure.Management.Advisor.Model.Object, options)
  end
end

