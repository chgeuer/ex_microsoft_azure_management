# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForMysql.Model.ConfigurationProperties do
  @moduledoc """
  The properties of a configuration.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"value",
    :"description",
    :"defaultValue",
    :"dataType",
    :"allowedValues",
    :"source"
  ]

  @type t :: %__MODULE__{
    :"value" => String.t,
    :"description" => String.t,
    :"defaultValue" => String.t,
    :"dataType" => String.t,
    :"allowedValues" => String.t,
    :"source" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.DbForMysql.Model.ConfigurationProperties do
  def decode(value, _options) do
    value
  end
end

