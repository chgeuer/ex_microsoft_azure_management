# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.ContainerProperties do
  @moduledoc """
  The properties of a container.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"publicAccess",
    :"lastModifiedTime",
    :"leaseStatus",
    :"leaseState",
    :"leaseDuration",
    :"metadata",
    :"immutabilityPolicy",
    :"legalHold",
    :"hasLegalHold",
    :"hasImmutabilityPolicy"
  ]

  @type t :: %__MODULE__{
    :"publicAccess" => String.t,
    :"lastModifiedTime" => DateTime.t,
    :"leaseStatus" => String.t,
    :"leaseState" => String.t,
    :"leaseDuration" => String.t,
    :"metadata" => %{optional(String.t) => String.t},
    :"immutabilityPolicy" => ImmutabilityPolicyProperties,
    :"legalHold" => LegalHoldProperties,
    :"hasLegalHold" => boolean(),
    :"hasImmutabilityPolicy" => boolean()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.ContainerProperties do
  import Microsoft.Azure.Management.Storage.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"immutabilityPolicy", :struct, Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicyProperties, options)
    |> deserialize(:"legalHold", :struct, Microsoft.Azure.Management.Storage.Model.LegalHoldProperties, options)
  end
end
