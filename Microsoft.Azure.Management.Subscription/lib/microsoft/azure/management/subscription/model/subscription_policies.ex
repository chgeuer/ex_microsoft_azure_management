# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Model.SubscriptionPolicies do
  @moduledoc """
  Subscription policies.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"locationPlacementId",
    :"quotaId",
    :"spendingLimit"
  ]

  @type t :: %__MODULE__{
    :"locationPlacementId" => String.t,
    :"quotaId" => String.t,
    :"spendingLimit" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Subscription.Model.SubscriptionPolicies do
  def decode(value, _options) do
    value
  end
end

