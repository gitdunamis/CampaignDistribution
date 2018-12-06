
using CampaignDistribution.CampaignDistributionDL.Campaign.Repository;
using CampaignDistribution.CampaignDistributionDL.Model.Service;

namespace CampaignDistribution.CampaignDistributionDL.Campaign.Service
{
    public class CampaignConditonService : ICampaignConditionService
    {
        public ICampaignConditionRepo Repo { get ; set; }

        public CampaignConditonService(ICampaignConditionRepo repo)
        {
            this.Repo = repo;
        }
        public void Create(string time, string quantity, string amount)
        {
            Repo.Create(time, quantity, amount);
        }

        public void Delete(int id)
        {
            Repo.Delete(id);
        }

        public void GetAll()
        {
            Repo.GetAll();
        }

        public void GetById(int id)
        {
            Repo.GetById(id);
        }

        public void GetByName(string name)
        {
            Repo.GetByName(name);
        }

        public void Update(int id)
        {
            Repo.Update(id);
        }
    }
}