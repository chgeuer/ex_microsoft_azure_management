# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Containers.Model.OsType do
  @moduledoc """
  OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Containers.Model.OsType do
  def decode(value, _options) do
    value
  end
end

