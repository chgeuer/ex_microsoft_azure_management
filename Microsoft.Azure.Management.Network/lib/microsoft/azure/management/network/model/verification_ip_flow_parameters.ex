# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VerificationIpFlowParameters do
  @moduledoc """
  Parameters that define the IP flow to be verified.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"targetResourceId",
    :"direction",
    :"protocol",
    :"localPort",
    :"remotePort",
    :"localIPAddress",
    :"remoteIPAddress",
    :"targetNicResourceId"
  ]

  @type t :: %__MODULE__{
    :"targetResourceId" => String.t,
    :"direction" => String.t,
    :"protocol" => String.t,
    :"localPort" => String.t,
    :"remotePort" => String.t,
    :"localIPAddress" => String.t,
    :"remoteIPAddress" => String.t,
    :"targetNicResourceId" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VerificationIpFlowParameters do
  def decode(value, _options) do
    value
  end
end

