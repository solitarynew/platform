package info.platform.model.dao;

import info.platform.model.entity.FormDO;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FormRepository extends JpaRepository<FormDO, Integer> {

}
