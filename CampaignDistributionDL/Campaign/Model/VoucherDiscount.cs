using Newtonsoft.Json;

namespace CampaignDistribution.CampaignDistributionDL.Campaign.Model
{
    /// <summary>
    /// The type of discount value a voucher can give
    /// </summary>
    [JsonObject("voucher_discout")]
    public class VoucherDiscount
    {
        /// <summary>
        /// One of Percentage or Amount
        /// </summary>
        /// <value></value>
        [JsonProperty("type")]
        public VoucherDiscountType Type { get; set; }
        
        /// <summary>
        /// Actual value of a voucher expressed as either percentage or real number
        /// </summary>
        /// <value></value>
        [JsonProperty("value")]        
        public string value {get; set;}

    }

    public enum VoucherDiscountType 
    {
        [JsonProperty("percent")]
        Percent, 
        [JsonProperty("amount")]
        Amount
    }
}