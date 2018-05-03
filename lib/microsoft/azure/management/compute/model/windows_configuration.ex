# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.WindowsConfiguration do
  @moduledoc """
  Specifies Windows operating system settings on the virtual machine.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"provisionVMAgent",
    :"enableAutomaticUpdates",
    :"timeZone",
    :"additionalUnattendContent",
    :"winRM"
  ]

  @type t :: %__MODULE__{
    :"provisionVMAgent" => boolean(),
    :"enableAutomaticUpdates" => boolean(),
    :"timeZone" => String.t,
    :"additionalUnattendContent" => [AdditionalUnattendContent],
    :"winRM" => WinRmConfiguration
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.WindowsConfiguration do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"additionalUnattendContent", :list, Microsoft.Azure.Management.Compute.Model.AdditionalUnattendContent, options)
    |> deserialize(:"winRM", :struct, Microsoft.Azure.Management.Compute.Model.WinRmConfiguration, options)
  end
end

