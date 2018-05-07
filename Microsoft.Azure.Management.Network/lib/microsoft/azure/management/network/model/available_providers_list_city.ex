# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.AvailableProvidersListCity do
  @moduledoc """
  City or town details.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cityName",
    :"providers"
  ]

  @type t :: %__MODULE__{
    :"cityName" => String.t,
    :"providers" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.AvailableProvidersListCity do
  def decode(value, _options) do
    value
  end
end
