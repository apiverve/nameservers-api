using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Nameservers
{
    /// <summary>
    /// Query options for the Nameservers API
    /// </summary>
    public class NameserversQueryOptions
    {
        /// <summary>
        /// The domain name to lookup nameservers for
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
