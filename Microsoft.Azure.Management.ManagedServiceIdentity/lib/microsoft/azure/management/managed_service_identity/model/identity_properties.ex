# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.ManagedServiceIdentity.Model.IdentityProperties do
  @moduledoc """
  The properties associated with the identity.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"tenantId",
    :"principalId",
    :"clientId",
    :"clientSecretUrl"
  ]

  @type t :: %__MODULE__{
    :"tenantId" => String.t,
    :"principalId" => String.t,
    :"clientId" => String.t,
    :"clientSecretUrl" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.ManagedServiceIdentity.Model.IdentityProperties do
  def decode(value, _options) do
    value
  end
end
