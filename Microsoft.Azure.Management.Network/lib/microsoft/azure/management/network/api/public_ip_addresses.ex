# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.PublicIPAddresses do
  @moduledoc """
  API calls for all endpoints tagged `PublicIPAddresses`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Creates or updates a static or dynamic public IP address.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - public_ip_address_name (String.t): The name of the public IP address.
  - parameters (PublicIpAddress): Parameters supplied to the create or update public IP address operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PublicIpAddress{}} on success
  {:error, info} on failure
  """
  @spec public_ip_addresses_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.PublicIpAddress.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PublicIpAddress.t} | {:error, Tesla.Env.t}
  def public_ip_addresses_create_or_update(connection, resource_group_name, public_ip_address_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/#{public_ip_address_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PublicIpAddress{})
  end

  @doc """
  Deletes the specified public IP address.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - public_ip_address_name (String.t): The name of the subnet.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec public_ip_addresses_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def public_ip_addresses_delete(connection, resource_group_name, public_ip_address_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/#{public_ip_address_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the specified public IP address in a specified resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - public_ip_address_name (String.t): The name of the subnet.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :__expand (String.t): Expands referenced resources.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PublicIpAddress{}} on success
  {:error, info} on failure
  """
  @spec public_ip_addresses_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PublicIpAddress.t} | {:error, Tesla.Env.t}
  def public_ip_addresses_get(connection, resource_group_name, public_ip_address_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/#{public_ip_address_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PublicIpAddress{})
  end

  @doc """
  Gets all public IP addresses in a resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PublicIpAddressListResult{}} on success
  {:error, info} on failure
  """
  @spec public_ip_addresses_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PublicIpAddressListResult.t} | {:error, Tesla.Env.t}
  def public_ip_addresses_list(connection, resource_group_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/publicIPAddresses")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PublicIpAddressListResult{})
  end

  @doc """
  Gets all the public IP addresses in a subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PublicIpAddressListResult{}} on success
  {:error, info} on failure
  """
  @spec public_ip_addresses_list_all(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PublicIpAddressListResult.t} | {:error, Tesla.Env.t}
  def public_ip_addresses_list_all(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Network/publicIPAddresses")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PublicIpAddressListResult{})
  end

  @doc """
  Updates public IP address tags.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - public_ip_address_name (String.t): The name of the public IP address.
  - parameters (TagsObject): Parameters supplied to update public IP address tags.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.PublicIpAddress{}} on success
  {:error, info} on failure
  """
  @spec public_ip_addresses_update_tags(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.TagsObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.PublicIpAddress.t} | {:error, Tesla.Env.t}
  def public_ip_addresses_update_tags(connection, resource_group_name, public_ip_address_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/publicIPAddresses/#{public_ip_address_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.PublicIpAddress{})
  end
end
