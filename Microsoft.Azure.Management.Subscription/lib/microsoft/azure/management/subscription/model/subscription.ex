# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Model.Subscription do
  @moduledoc """
  Subscription information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"subscriptionId",
    :"displayName",
    :"state",
    :"subscriptionPolicies",
    :"authorizationSource"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"subscriptionId" => String.t,
    :"displayName" => String.t,
    :"state" => String.t,
    :"subscriptionPolicies" => SubscriptionPolicies,
    :"authorizationSource" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Subscription.Model.Subscription do
  import Microsoft.Azure.Management.Subscription.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"subscriptionPolicies", :struct, Microsoft.Azure.Management.Subscription.Model.SubscriptionPolicies, options)
  end
end

