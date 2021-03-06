# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.LinuxConfiguration do
  @moduledoc """
  Specifies the Linux operating system settings on the virtual machine. &lt;br&gt;&lt;br&gt;For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc&#x3D;%2fazure%2fvirtual-machines%2flinux%2ftoc.json) &lt;br&gt;&lt;br&gt; For running non-endorsed distributions, see [Information for Non-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-create-upload-generic?toc&#x3D;%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
  """

  @derive [Poison.Encoder]
  defstruct [
    :"disablePasswordAuthentication",
    :"ssh"
  ]

  @type t :: %__MODULE__{
    :"disablePasswordAuthentication" => boolean(),
    :"ssh" => SshConfiguration
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.LinuxConfiguration do
  import Microsoft.Azure.Management.Compute.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ssh", :struct, Microsoft.Azure.Management.Compute.Model.SshConfiguration, options)
  end
end

