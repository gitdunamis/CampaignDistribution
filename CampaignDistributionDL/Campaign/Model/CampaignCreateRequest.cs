
using System;
using System.Collections.Generic;
using CampaignDistribution.CampaignDistributionDAL;
using Newtonsoft.Json;

namespace CampaignDistribution.CampaignDistributionDL.Campaign.Model  
{
    /// <summary>
    /// Description of a request object
    /// The request object specifies all that are need to
    /// create a campaign and its vouchers
    /// </summary>
    [JsonObject]
    public class CampaignCreateRequest
    {
        /// <summary>
        /// Descriptive name of the campaign e.g. BlackFridayPromo
        /// </summary>
        /// <value>String</value>
        [JsonProperty("campaign_name", Required=Required.Always)]
        public string Name { get; set; }

        /// <summary>
        /// The day a campaign will start
        /// </summary>
        /// <value>DateTime</value>

        [JsonProperty("start_date", Required=Required.Always)]
        public DateTime StartDate { get; set; }

        /// <summary>
        /// The day a campaign will end
        /// </summary>
        /// <value>DateTime</value>
        
        [JsonProperty("end_date", Required=Required.Always)]
        public DateTime EndDate { get; set; }

        /// <summary>
        /// The type of campaign to be created
        /// </summary>
        /// <see>CampaignType</see>
        /// <value>CampaignType</value>

        [JsonProperty("campaign_type", Required=Required.Always)]
        public CampaignType Type {get; set;}


        /// <summary>
        /// The set of conditions which describe the criteria a customer
        /// must meet to participate in the campaign
        /// </summary>
        /// <value>IEnumerable</value>
        [JsonProperty("campaign_conditions", Required=Required.AllowNull)]
        public IEnumerable<CampaignCondition> Conditions { get; set; }

        /// <summary>
        /// Voucher properties
        /// </summary>
        /// <value></value>
        [JsonProperty("voucher", Required=Required.Always)]
        public Voucher CampaignVoucher {get; set;}
    }
}