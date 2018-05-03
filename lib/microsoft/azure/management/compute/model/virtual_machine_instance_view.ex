# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineInstanceView do
  @moduledoc """
  The instance view of a virtual machine.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"platformUpdateDomain",
    :"platformFaultDomain",
    :"computerName",
    :"osName",
    :"osVersion",
    :"rdpThumbPrint",
    :"vmAgent",
    :"maintenanceRedeployStatus",
    :"disks",
    :"extensions",
    :"bootDiagnostics",
    :"statuses"
  ]

  @type t :: %__MODULE__{
    :"platformUpdateDomain" => integer(),
    :"platformFaultDomain" => integer(),
    :"computerName" => String.t,
    :"osName" => String.t,
    :"osVersion" => String.t,
    :"rdpThumbPrint" => String.t,
    :"vmAgent" => VirtualMachineAgentInstanceView,
    :"maintenanceRedeployStatus" => MaintenanceRedeployStatus,
    :"disks" => [DiskInstanceView],
    :"extensions" => [VirtualMachineExtensionInstanceView],
    :"bootDiagnostics" => BootDiagnosticsInstanceView,
    :"statuses" => [InstanceViewStatus]
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineInstanceView do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"vmAgent", :struct, Microsoft.Azure.Management.Compute.Model.VirtualMachineAgentInstanceView, options)
    |> deserialize(:"maintenanceRedeployStatus", :struct, Microsoft.Azure.Management.Compute.Model.MaintenanceRedeployStatus, options)
    |> deserialize(:"disks", :list, Microsoft.Azure.Management.Compute.Model.DiskInstanceView, options)
    |> deserialize(:"extensions", :list, Microsoft.Azure.Management.Compute.Model.VirtualMachineExtensionInstanceView, options)
    |> deserialize(:"bootDiagnostics", :struct, Microsoft.Azure.Management.Compute.Model.BootDiagnosticsInstanceView, options)
    |> deserialize(:"statuses", :list, Microsoft.Azure.Management.Compute.Model.InstanceViewStatus, options)
  end
end

