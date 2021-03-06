# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayConnectionDraining do
  @moduledoc """
  Connection draining allows open connections to a backend server to be active for a specified time after the backend server got removed from the configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"enabled",
    :"drainTimeoutInSec"
  ]

  @type t :: %__MODULE__{
    :"enabled" => boolean(),
    :"drainTimeoutInSec" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayConnectionDraining do
  def decode(value, _options) do
    value
  end
end

