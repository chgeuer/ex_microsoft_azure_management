# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Model.StorageAccountProperties do
  @moduledoc """
  Properties of the storage account.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provisioningState",
    :"primaryEndpoints",
    :"primaryLocation",
    :"statusOfPrimary",
    :"lastGeoFailoverTime",
    :"secondaryLocation",
    :"statusOfSecondary",
    :"creationTime",
    :"customDomain",
    :"secondaryEndpoints",
    :"encryption",
    :"accessTier",
    :"supportsHttpsTrafficOnly",
    :"networkAcls",
    :"isHnsEnabled"
  ]

  @type t :: %__MODULE__{
    :"provisioningState" => String.t,
    :"primaryEndpoints" => Endpoints,
    :"primaryLocation" => String.t,
    :"statusOfPrimary" => String.t,
    :"lastGeoFailoverTime" => DateTime.t,
    :"secondaryLocation" => String.t,
    :"statusOfSecondary" => String.t,
    :"creationTime" => DateTime.t,
    :"customDomain" => CustomDomain,
    :"secondaryEndpoints" => Endpoints,
    :"encryption" => Encryption,
    :"accessTier" => String.t,
    :"supportsHttpsTrafficOnly" => boolean(),
    :"networkAcls" => NetworkRuleSet,
    :"isHnsEnabled" => boolean()
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Storage.Model.StorageAccountProperties do
  import Microsoft.Azure.Management.Storage.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"primaryEndpoints", :struct, Microsoft.Azure.Management.Storage.Model.Endpoints, options)
    |> deserialize(:"customDomain", :struct, Microsoft.Azure.Management.Storage.Model.CustomDomain, options)
    |> deserialize(:"secondaryEndpoints", :struct, Microsoft.Azure.Management.Storage.Model.Endpoints, options)
    |> deserialize(:"encryption", :struct, Microsoft.Azure.Management.Storage.Model.Encryption, options)
    |> deserialize(:"networkAcls", :struct, Microsoft.Azure.Management.Storage.Model.NetworkRuleSet, options)
  end
end

