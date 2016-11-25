package naturaedatabase;
import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface SampleBestellingRepository 
	extends CrudRepository<SampleBestelling, Long>{
	
	List<SampleBestelling> findByEindDatumContractBefore(@Param("datumVerlopen") Date datumVerlopen);

}
