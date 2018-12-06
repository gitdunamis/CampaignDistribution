namespace CampaignDistribution.CampaignDistributionDL.Model.Service
{  
    /// <summary>
    /// The Interface that defines a condition for which a customer must meet
    /// to benefit from a campaign
    /// </summary>
    public interface ICampaignConditionService
    {
        void Create(string time, string quantity, string amount);
        void GetAll();
        void GetById(int id);
        void GetByName(string name);
        void Update(int id);
        void Delete(int id);
    }
}
