
using Newtonsoft.Json;

namespace CampaignDistribution.CampaignDistributionDL.Campaign.Model
{
    [JsonObject]
    public class Voucher
    {
        /// <summary>
        /// Type of the voucher
        /// <para>one of Discount code or Gift<para>
        /// </summary>
        /// <value></value>
        [JsonProperty(PropertyName="type")]
        public string Type { get; set; }

        /// <summary>
        /// Type of discount applied to this voucher
        /// One of Percentage or Amount
        /// </summary>
        /// <value></value>
        [JsonProperty(PropertyName="discount")]
        public VoucherDiscount Discount { get; set; }
        
        /// <summary>
        /// Code configuration for the voucher
        /// <cref>VoucherConfig</cref>
        /// </summary>
        /// <value></value>
        [JsonProperty(PropertyName = "code_config", NullValueHandling = NullValueHandling.Ignore)]
        public VoucherCodeConfig CodeConfig { get; set; }
 
    }
}