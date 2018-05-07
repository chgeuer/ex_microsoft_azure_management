# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Model.CheckNameAvailabilityResult do
  @moduledoc """
  The Result of the CheckNameAvailability operation
  """

  @derive [Poison.Encoder]
  defstruct [
    :"message",
    :"nameAvailable",
    :"reason"
  ]

  @type t :: %__MODULE__{
    :"message" => String.t,
    :"nameAvailable" => boolean(),
    :"reason" => UnavailableReason
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.EventHub.Model.CheckNameAvailabilityResult do
  import Microsoft.Azure.Management.EventHub.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"reason", :struct, Microsoft.Azure.Management.EventHub.Model.UnavailableReason, options)
  end
end
