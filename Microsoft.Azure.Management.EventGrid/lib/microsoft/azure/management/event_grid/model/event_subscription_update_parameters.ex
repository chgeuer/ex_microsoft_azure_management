# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionUpdateParameters do
  @moduledoc """
  Properties of the Event Subscription update
  """

  @derive [Poison.Encoder]
  defstruct [
    :"destination",
    :"filter",
    :"labels"
  ]

  @type t :: %__MODULE__{
    :"destination" => EventSubscriptionDestination,
    :"filter" => EventSubscriptionFilter,
    :"labels" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionUpdateParameters do
  import Microsoft.Azure.Management.EventGrid.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"destination", :struct, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionDestination, options)
    |> deserialize(:"filter", :struct, Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionFilter, options)
  end
end

