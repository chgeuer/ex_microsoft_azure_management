# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Model.SubscriptionListResult do
  @moduledoc """
  Subscription list operation response.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"nextLink"
  ]

  @type t :: %__MODULE__{
    :"value" => [Subscription],
    :"nextLink" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Subscription.Model.SubscriptionListResult do
  import Microsoft.Azure.Management.Subscription.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"value", :list, Microsoft.Azure.Management.Subscription.Model.Subscription, options)
  end
end

