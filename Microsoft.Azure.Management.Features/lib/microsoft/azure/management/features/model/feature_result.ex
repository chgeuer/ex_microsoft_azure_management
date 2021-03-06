# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Features.Model.FeatureResult do
  @moduledoc """
  Previewed feature information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"properties",
    :"id",
    :"type"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"properties" => FeatureProperties,
    :"id" => String.t,
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Features.Model.FeatureResult do
  import Microsoft.Azure.Management.Features.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Features.Model.FeatureProperties, options)
  end
end

