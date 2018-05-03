# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.DbForMysql.Api.Configurations do
  @moduledoc """
  API calls for all endpoints tagged `Configurations`.
  """

  alias Microsoft.Azure.Management.DbForMysql.Connection
  import Microsoft.Azure.Management.DbForMysql.RequestBuilder


  @doc """
  Updates a configuration of a server.

  ## Parameters

  - connection (Microsoft.Azure.Management.DbForMysql.Connection): Connection to server
  - api_version (String.t): The API version to use for the request.
  - subscription_id (String.t): The subscription ID that identifies an Azure subscription.
  - resource_group_name (String.t): The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  - server_name (String.t): The name of the server.
  - configuration_name (String.t): The name of the server configuration.
  - parameters (Configuration): The required parameters for updating a server configuration.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.DbForMysql.Model.Configuration{}} on success
  {:error, info} on failure
  """
  @spec configurations_create_or_update(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.DbForMysql.Model.Configuration.t, keyword()) :: {:ok, Microsoft.Azure.Management.DbForMysql.Model.Configuration.t} | {:error, Tesla.Env.t}
  def configurations_create_or_update(connection, api_version, subscription_id, resource_group_name, server_name, configuration_name, parameters, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMySQL/servers/#{server_name}/configurations/#{configuration_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"parameters", parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.DbForMysql.Model.Configuration{})
  end

  @doc """
  Gets information about a configuration of server.

  ## Parameters

  - connection (Microsoft.Azure.Management.DbForMysql.Connection): Connection to server
  - api_version (String.t): The API version to use for the request.
  - subscription_id (String.t): The subscription ID that identifies an Azure subscription.
  - resource_group_name (String.t): The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  - server_name (String.t): The name of the server.
  - configuration_name (String.t): The name of the server configuration.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.DbForMysql.Model.Configuration{}} on success
  {:error, info} on failure
  """
  @spec configurations_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.DbForMysql.Model.Configuration.t} | {:error, Tesla.Env.t}
  def configurations_get(connection, api_version, subscription_id, resource_group_name, server_name, configuration_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMySQL/servers/#{server_name}/configurations/#{configuration_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.DbForMysql.Model.Configuration{})
  end

  @doc """
  List all the configurations in a given server.

  ## Parameters

  - connection (Microsoft.Azure.Management.DbForMysql.Connection): Connection to server
  - api_version (String.t): The API version to use for the request.
  - subscription_id (String.t): The subscription ID that identifies an Azure subscription.
  - resource_group_name (String.t): The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  - server_name (String.t): The name of the server.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.DbForMysql.Model.ConfigurationListResult{}} on success
  {:error, info} on failure
  """
  @spec configurations_list_by_server(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.DbForMysql.Model.ConfigurationListResult.t} | {:error, Tesla.Env.t}
  def configurations_list_by_server(connection, api_version, subscription_id, resource_group_name, server_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.DBforMySQL/servers/#{server_name}/configurations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.DbForMysql.Model.ConfigurationListResult{})
  end
end
