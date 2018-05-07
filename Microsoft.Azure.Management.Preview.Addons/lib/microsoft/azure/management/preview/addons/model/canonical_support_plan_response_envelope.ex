# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanResponseEnvelope do
  @moduledoc """
  The status of the Canonical support plan.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"type",
    :"properties"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"type" => String.t,
    :"properties" => CanonicalSupportPlanProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanResponseEnvelope do
  import Microsoft.Azure.Management.Preview.Addons.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanProperties, options)
  end
end
