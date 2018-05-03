# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.UpgradeOperationHistoricalStatusInfo do
  @moduledoc """
  Virtual Machine Scale Set OS Upgrade History operation response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"properties",
    :"type",
    :"location"
  ]

  @type t :: %__MODULE__{
    :"properties" => UpgradeOperationHistoricalStatusInfoProperties,
    :"type" => String.t,
    :"location" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.UpgradeOperationHistoricalStatusInfo do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Compute.Model.UpgradeOperationHistoricalStatusInfoProperties, options)
  end
end

