declare module '@apiverve/nameservers' {
  export interface nameserversOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface nameserversResponse {
    status: string;
    error: string | null;
    data: NameserversData;
    code?: number;
  }


  interface NameserversData {
      domain:      string;
      nameservers: Nameserver[];
  }
  
  interface Nameserver {
      nameserver:  string;
      ipAddresses: string[];
      reverseDNS:  string;
      owner:       string;
  }

  export default class nameserversWrapper {
    constructor(options: nameserversOptions);

    execute(callback: (error: any, data: nameserversResponse | null) => void): Promise<nameserversResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: nameserversResponse | null) => void): Promise<nameserversResponse>;
    execute(query?: Record<string, any>): Promise<nameserversResponse>;
  }
}
