class CriterionRequest < ActiveRecord::Base

  self.table_name = "criterions_requests"
  
  belongs_to :criterion
  belongs_to :request
  

end
