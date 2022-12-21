package info.platform.model.dao;


import info.platform.model.entity.ProcessFormDO;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProcessFormRepository extends JpaRepository<ProcessFormDO, Integer> {

    ProcessFormDO findByProcessIdAndTaskId(String processDefinitionId, String taskDefinitionId);
}

