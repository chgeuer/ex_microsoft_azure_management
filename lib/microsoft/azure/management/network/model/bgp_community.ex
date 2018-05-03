# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.BgpCommunity do
  @moduledoc """
  Contains bgp community information offered in Service Community resources.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"serviceSupportedRegion",
    :"communityName",
    :"communityValue",
    :"communityPrefixes",
    :"isAuthorizedToUse",
    :"serviceGroup"
  ]

  @type t :: %__MODULE__{
    :"serviceSupportedRegion" => String.t,
    :"communityName" => String.t,
    :"communityValue" => String.t,
    :"communityPrefixes" => [String.t],
    :"isAuthorizedToUse" => boolean(),
    :"serviceGroup" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.BgpCommunity do
  def decode(value, _options) do
    value
  end
end

