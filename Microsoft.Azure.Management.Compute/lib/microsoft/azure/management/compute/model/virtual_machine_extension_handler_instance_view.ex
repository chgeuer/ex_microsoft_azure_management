# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineExtensionHandlerInstanceView do
  @moduledoc """
  The instance view of a virtual machine extension handler.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type",
    :"typeHandlerVersion",
    :"status"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t,
    :"typeHandlerVersion" => String.t,
    :"status" => InstanceViewStatus
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineExtensionHandlerInstanceView do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, Microsoft.Azure.Management.Compute.Model.InstanceViewStatus, options)
  end
end
