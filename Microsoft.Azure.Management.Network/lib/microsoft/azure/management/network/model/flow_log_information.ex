# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.FlowLogInformation do
  @moduledoc """
  Information on the configuration of flow log and traffic analytics (optional) .
  """

  @derive [Poison.Encoder]
  defstruct [
    :"targetResourceId",
    :"properties",
    :"flowAnalyticsConfiguration"
  ]

  @type t :: %__MODULE__{
    :"targetResourceId" => String.t,
    :"properties" => FlowLogProperties,
    :"flowAnalyticsConfiguration" => TrafficAnalyticsProperties
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.FlowLogInformation do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"properties", :struct, Microsoft.Azure.Management.Network.Model.FlowLogProperties, options)
    |> deserialize(:"flowAnalyticsConfiguration", :struct, Microsoft.Azure.Management.Network.Model.TrafficAnalyticsProperties, options)
  end
end

