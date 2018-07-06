# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.BotService.Model.MsTeamsChannelProperties do
  @moduledoc """
  The parameters to provide for the Microsoft Teams channel.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"enableMessaging",
    :"enableMediaCards",
    :"enableVideo",
    :"enableCalling",
    :"callMode",
    :"isEnabled"
  ]

  @type t :: %__MODULE__{
    :"enableMessaging" => boolean(),
    :"enableMediaCards" => boolean(),
    :"enableVideo" => boolean(),
    :"enableCalling" => boolean(),
    :"callMode" => String.t,
    :"isEnabled" => boolean()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.BotService.Model.MsTeamsChannelProperties do
  def decode(value, _options) do
    value
  end
end
