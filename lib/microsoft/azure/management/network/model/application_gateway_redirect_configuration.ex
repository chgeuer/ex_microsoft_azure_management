# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayRedirectConfiguration do
  @moduledoc """
  Redirect configuration of an application gateway.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayRedirectConfiguration do
  def decode(value, _options) do
    value
  end
end

