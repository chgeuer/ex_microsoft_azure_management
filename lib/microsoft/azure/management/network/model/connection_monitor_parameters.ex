# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ConnectionMonitorParameters do
  @moduledoc """
  Parameters that define the operation to create a connection monitor.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"source",
    :"destination",
    :"autoStart",
    :"monitoringIntervalInSeconds"
  ]

  @type t :: %__MODULE__{
    :"source" => ConnectionMonitorSource,
    :"destination" => ConnectionMonitorDestination,
    :"autoStart" => boolean(),
    :"monitoringIntervalInSeconds" => integer()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ConnectionMonitorParameters do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"source", :struct, Microsoft.Azure.Management.Network.Model.ConnectionMonitorSource, options)
    |> deserialize(:"destination", :struct, Microsoft.Azure.Management.Network.Model.ConnectionMonitorDestination, options)
  end
end
