# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionFilter do
  @moduledoc """
  Filter for the Event Subscription
  """

  @derive [Poison.Encoder]
  defstruct [
    :"subjectBeginsWith",
    :"subjectEndsWith",
    :"includedEventTypes",
    :"isSubjectCaseSensitive"
  ]

  @type t :: %__MODULE__{
    :"subjectBeginsWith" => String.t,
    :"subjectEndsWith" => String.t,
    :"includedEventTypes" => [String.t],
    :"isSubjectCaseSensitive" => boolean()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventGrid.Model.EventSubscriptionFilter do
  def decode(value, _options) do
    value
  end
end

