# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Model.BuildFilter do
  @moduledoc """
  Properties that are enabled for Odata querying.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"buildId",
    :"buildType",
    :"status",
    :"createTime",
    :"finishTime",
    :"outputImageManifests",
    :"isArchiveEnabled",
    :"buildTaskName"
  ]

  @type t :: %__MODULE__{
    :"buildId" => String.t,
    :"buildType" => String.t,
    :"status" => String.t,
    :"createTime" => DateTime.t,
    :"finishTime" => DateTime.t,
    :"outputImageManifests" => String.t,
    :"isArchiveEnabled" => boolean(),
    :"buildTaskName" => String.t
  }
end

defimpl Poison.Decoder, for: Microsoft.Azure.Management.Preview.Containers.Model.BuildFilter do
  def decode(value, _options) do
    value
  end
end

