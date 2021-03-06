# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.BotService.Model.ServiceProviderProperties do
  @moduledoc """
  The Object used to describe a Service Provider supported by Bot Service
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"displayName",
    :"serviceProviderName",
    :"devPortalUrl",
    :"iconUrl",
    :"parameters"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"displayName" => String.t,
    :"serviceProviderName" => String.t,
    :"devPortalUrl" => String.t,
    :"iconUrl" => String.t,
    :"parameters" => [ServiceProviderParameter]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.BotService.Model.ServiceProviderProperties do
  import Microsoft.Azure.Management.Preview.BotService.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"parameters", :list, Microsoft.Azure.Management.Preview.BotService.Model.ServiceProviderParameter, options)
  end
end

