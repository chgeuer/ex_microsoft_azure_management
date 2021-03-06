# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Model.ApplicationGatewayFirewallDisabledRuleGroup do
  @moduledoc """
  Allows to disable rules within a rule group or an entire rule group.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ruleGroupName",
    :"rules"
  ]

  @type t :: %__MODULE__{
    :"ruleGroupName" => String.t,
    :"rules" => [integer()]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Network.Model.ApplicationGatewayFirewallDisabledRuleGroup do
  def decode(value, _options) do
    value
  end
end

