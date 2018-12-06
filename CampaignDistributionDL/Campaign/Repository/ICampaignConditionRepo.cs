
namespace CampaignDistribution.CampaignDistributionDL.Campaign.Repository   
{
public interface ICampaignConditionRepo
    {
        void Create(string time, string quantity, string amount);
        void GetAll();
        void GetById(int id);
        void GetByName(string name);
        void Update(int id);

        void Delete(int id);
    }
}