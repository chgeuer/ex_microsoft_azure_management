# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway do
  @moduledoc """
  A common class for general resource information
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"name",
    :"type",
    :"location",
    :"tags"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"name" => String.t,
    :"type" => String.t,
    :"location" => String.t,
    :"tags" => %{optional(String.t) => String.t}
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway do
  def decode(value, _options) do
    value
  end
end

