# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Model.VirtualMachineCaptureResult do
  @moduledoc """
  Resource Id.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Compute.Model.VirtualMachineCaptureResult do
  def decode(value, _options) do
    value
  end
end

