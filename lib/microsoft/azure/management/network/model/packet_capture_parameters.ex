# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.PacketCaptureParameters do
  @moduledoc """
  Parameters that define the create packet capture operation.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"target",
    :"bytesToCapturePerPacket",
    :"totalBytesPerSession",
    :"timeLimitInSeconds",
    :"storageLocation",
    :"filters"
  ]

  @type t :: %__MODULE__{
    :"target" => String.t,
    :"bytesToCapturePerPacket" => integer(),
    :"totalBytesPerSession" => integer(),
    :"timeLimitInSeconds" => integer(),
    :"storageLocation" => PacketCaptureStorageLocation,
    :"filters" => [PacketCaptureFilter]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.PacketCaptureParameters do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"storageLocation", :struct, Microsoft.Azure.Management.Network.Model.PacketCaptureStorageLocation, options)
    |> deserialize(:"filters", :list, Microsoft.Azure.Management.Network.Model.PacketCaptureFilter, options)
  end
end

