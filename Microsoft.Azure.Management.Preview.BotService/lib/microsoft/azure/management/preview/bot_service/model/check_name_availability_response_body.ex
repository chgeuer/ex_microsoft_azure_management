# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.BotService.Model.CheckNameAvailabilityResponseBody do
  @moduledoc """
  The response body returned for a request to Bot Service Management to check availability of a bot name.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"valid",
    :"message"
  ]

  @type t :: %__MODULE__{
    :"valid" => boolean(),
    :"message" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.BotService.Model.CheckNameAvailabilityResponseBody do
  def decode(value, _options) do
    value
  end
end

