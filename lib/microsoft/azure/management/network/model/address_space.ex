# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.AddressSpace do
  @moduledoc """
  AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"addressPrefixes"
  ]

  @type t :: %__MODULE__{
    :"addressPrefixes" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.AddressSpace do
  def decode(value, _options) do
    value
  end
end
