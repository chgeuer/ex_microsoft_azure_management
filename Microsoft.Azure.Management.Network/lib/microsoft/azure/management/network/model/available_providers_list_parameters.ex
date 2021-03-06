# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.AvailableProvidersListParameters do
  @moduledoc """
  Constraints that determine the list of available Internet service providers.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"azureLocations",
    :"country",
    :"state",
    :"city"
  ]

  @type t :: %__MODULE__{
    :"azureLocations" => [String.t],
    :"country" => String.t,
    :"state" => String.t,
    :"city" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.AvailableProvidersListParameters do
  def decode(value, _options) do
    value
  end
end

