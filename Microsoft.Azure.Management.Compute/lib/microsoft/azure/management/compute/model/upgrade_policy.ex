# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.UpgradePolicy do
  @moduledoc """
  Describes an upgrade policy - automatic, manual, or rolling.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"mode",
    :"rollingUpgradePolicy",
    :"automaticOSUpgrade",
    :"autoOSUpgradePolicy"
  ]

  @type t :: %__MODULE__{
    :"mode" => String.t,
    :"rollingUpgradePolicy" => RollingUpgradePolicy,
    :"automaticOSUpgrade" => boolean(),
    :"autoOSUpgradePolicy" => AutoOsUpgradePolicy
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.UpgradePolicy do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"rollingUpgradePolicy", :struct, Microsoft.Azure.Management.Compute.Model.RollingUpgradePolicy, options)
    |> deserialize(:"autoOSUpgradePolicy", :struct, Microsoft.Azure.Management.Compute.Model.AutoOsUpgradePolicy, options)
  end
end

