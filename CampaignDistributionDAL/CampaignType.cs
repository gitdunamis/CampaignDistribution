
namespace CampaignDistribution.CampaignDistributionDAL
{
    /// <summary>
    /// The types of Campaigns 
    /// </summary>
    public enum CampaignType
    {
        /// <summary>
        /// This type of campaign contains vouchers with the same code
        /// </summary>
        StandAlone, 

        /// <summary>
        /// This type of campaign contains vouchers with different code
        /// </summary>
        UniqueCode, 

        /// <summary>
        /// This type of campaign does not need a voucher
        /// </summary>
        CartLevel
    }
}