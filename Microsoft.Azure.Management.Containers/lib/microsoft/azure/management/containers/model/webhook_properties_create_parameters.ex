# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.WebhookPropertiesCreateParameters do
  @moduledoc """
  The parameters for creating the properties of a webhook.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"serviceUri",
    :"customHeaders",
    :"status",
    :"scope",
    :"actions"
  ]

  @type t :: %__MODULE__{
    :"serviceUri" => String.t,
    :"customHeaders" => %{optional(String.t) => String.t},
    :"status" => String.t,
    :"scope" => String.t,
    :"actions" => [String.t]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.WebhookPropertiesCreateParameters do
  def decode(value, _options) do
    value
  end
end

