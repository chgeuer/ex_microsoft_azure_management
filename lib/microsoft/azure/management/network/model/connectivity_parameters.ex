# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ConnectivityParameters do
  @moduledoc """
  Parameters that determine how the connectivity check will be performed.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"source",
    :"destination",
    :"protocol",
    :"protocolConfiguration"
  ]

  @type t :: %__MODULE__{
    :"source" => ConnectivitySource,
    :"destination" => ConnectivityDestination,
    :"protocol" => String.t,
    :"protocolConfiguration" => ProtocolConfiguration
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ConnectivityParameters do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"source", :struct, Microsoft.Azure.Management.Network.Model.ConnectivitySource, options)
    |> deserialize(:"destination", :struct, Microsoft.Azure.Management.Network.Model.ConnectivityDestination, options)
    |> deserialize(:"protocolConfiguration", :struct, Microsoft.Azure.Management.Network.Model.ProtocolConfiguration, options)
  end
end

