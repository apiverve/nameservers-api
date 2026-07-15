declare module '@apiverve/nameservers' {
  export interface nameserversOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface nameserversResponse {
    status: string;
    error: string | null;
    data: NameserversData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface NameserversData {
      domain:               null | string;
      nameserverCount:      number | null;
      hasMultipleProviders: boolean | null;
      nameservers:          Nameserver[];
      uniqueOwners:         (null | string)[];
  }
  
  interface Nameserver {
      nameserver:  null | string;
      ipAddresses: (null | string)[];
      reverseDNS:  null | string;
      owner:       null | string;
  }

  export default class nameserversWrapper {
    constructor(options: nameserversOptions);

    execute(callback: (error: any, data: nameserversResponse | null) => void): Promise<nameserversResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: nameserversResponse | null) => void): Promise<nameserversResponse>;
    execute(query?: Record<string, any>): Promise<nameserversResponse>;
  }
}
