# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventGrid.Model.WebHookEventSubscriptionDestination do
  @moduledoc """
  Information about the webhook destination for an event subscription
  """

  @derive [Poison.Encoder]
  defstruct [
    :"endpointType"
  ]

  @type t :: %__MODULE__{
    :"endpointType" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventGrid.Model.WebHookEventSubscriptionDestination do
  def decode(value, _options) do
    value
  end
end

