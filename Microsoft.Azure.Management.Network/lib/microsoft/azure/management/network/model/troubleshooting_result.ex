# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.TroubleshootingResult do
  @moduledoc """
  Troubleshooting information gained from specified resource.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"startTime",
    :"endTime",
    :"code",
    :"results"
  ]

  @type t :: %__MODULE__{
    :"startTime" => DateTime.t,
    :"endTime" => DateTime.t,
    :"code" => String.t,
    :"results" => [TroubleshootingDetails]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.TroubleshootingResult do
  import Microsoft.Azure.Management.Network.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, Microsoft.Azure.Management.Network.Model.TroubleshootingDetails, options)
  end
end

