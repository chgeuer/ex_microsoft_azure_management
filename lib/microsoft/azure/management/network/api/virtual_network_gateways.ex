# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.VirtualNetworkGateways do
  @moduledoc """
  API calls for all endpoints tagged `VirtualNetworkGateways`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Creates or updates a virtual network gateway in the specified resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - parameters (VirtualNetworkGateway): Parameters supplied to create or update virtual network gateway operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_create_or_update(connection, resource_group_name, virtual_network_gateway_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{})
  end

  @doc """
  Deletes the specified virtual network gateway.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def virtual_network_gateways_delete(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Generates VPN profile for P2S client of the virtual network gateway in the specified resource group. Used for IKEV2 and radius based authentication.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - parameters (VpnClientParameters): Parameters supplied to the generate virtual network gateway VPN client package operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_generate_vpn_profile(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.VpnClientParameters.t, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_generate_vpn_profile(connection, resource_group_name, virtual_network_gateway_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/generatevpnprofile")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Generates VPN client package for P2S client of the virtual network gateway in the specified resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - parameters (VpnClientParameters): Parameters supplied to the generate virtual network gateway VPN client package operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_generatevpnclientpackage(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.VpnClientParameters.t, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_generatevpnclientpackage(connection, resource_group_name, virtual_network_gateway_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/generatevpnclientpackage")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the specified virtual network gateway by resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_get(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{})
  end

  @doc """
  This operation retrieves a list of routes the virtual network gateway is advertising to the specified peer.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - peer (String.t): The IP address of the peer
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.GatewayRouteListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_get_advertised_routes(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.GatewayRouteListResult.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_get_advertised_routes(connection, resource_group_name, virtual_network_gateway_name, peer, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/getAdvertisedRoutes")
    |> add_param(:query, :"peer", peer)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.GatewayRouteListResult{})
  end

  @doc """
  The GetBgpPeerStatus operation retrieves the status of all BGP peers.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :peer (String.t): The IP address of the peer to retrieve the status of.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.BgpPeerStatusListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_get_bgp_peer_status(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.BgpPeerStatusListResult.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_get_bgp_peer_status(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"peer" => :query
    }
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/getBgpPeerStatus")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.BgpPeerStatusListResult{})
  end

  @doc """
  This operation retrieves a list of routes the virtual network gateway has learned, including routes learned from BGP peers.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.GatewayRouteListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_get_learned_routes(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.GatewayRouteListResult.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_get_learned_routes(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/getLearnedRoutes")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.GatewayRouteListResult{})
  end

  @doc """
  Gets pre-generated VPN profile for P2S client of the virtual network gateway in the specified resource group. The profile needs to be generated first using generateVpnProfile.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_get_vpn_profile_package_url(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_get_vpn_profile_package_url(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/getvpnprofilepackageurl")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  The Get VpnclientIpsecParameters operation retrieves information about the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The virtual network gateway name.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_get_vpnclient_ipsec_parameters(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_get_vpnclient_ipsec_parameters(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/getvpnclientipsecparameters")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters{})
  end

  @doc """
  Gets all virtual network gateways by resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayListResult.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_list(connection, resource_group_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayListResult{})
  end

  @doc """
  Gets all the connections in a virtual network gateway.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayListConnectionsResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_list_connections(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayListConnectionsResult.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_list_connections(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/connections")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayListConnectionsResult{})
  end

  @doc """
  Resets the primary of the virtual network gateway in the specified resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :gateway_vip (String.t): Virtual network gateway vip address supplied to the begin reset of the active-active feature enabled gateway.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_reset(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_reset(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"gatewayVip" => :query
    }
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/reset")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{})
  end

  @doc """
  The Set VpnclientIpsecParameters operation sets the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - vpnclient_ipsec_params (VpnClientIPsecParameters): Parameters supplied to the Begin Set vpnclient ipsec parameters of Virtual Network Gateway P2S client operation through Network resource provider.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_set_vpnclient_ipsec_parameters(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_set_vpnclient_ipsec_parameters(connection, resource_group_name, virtual_network_gateway_name, vpnclient_ipsec_params, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/setvpnclientipsecparameters")
    |> add_param(:body, :"vpnclientIpsecParams", vpnclient_ipsec_params)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VpnClientIPsecParameters{})
  end

  @doc """
  Gets a xml format representation for supported vpn devices.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_supported_vpn_devices(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_supported_vpn_devices(connection, resource_group_name, virtual_network_gateway_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}/supportedvpndevices")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updates a virtual network gateway tags.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_name (String.t): The name of the virtual network gateway.
  - parameters (TagsObject): Parameters supplied to update virtual network gateway tags.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_update_tags(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.TagsObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_update_tags(connection, resource_group_name, virtual_network_gateway_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/#{virtual_network_gateway_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGateway{})
  end

  @doc """
  Gets a xml format representation for vpn device configuration script.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The name of the virtual network gateway connection for which the configuration script is generated.
  - parameters (VpnDeviceScriptParameters): Parameters supplied to the generate vpn device script operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateways_vpn_device_configuration_script(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.VpnDeviceScriptParameters.t, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def virtual_network_gateways_vpn_device_configuration_script(connection, resource_group_name, virtual_network_gateway_connection_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}/vpndeviceconfigurationscript")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
