package naturaedatabase;
import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface SampleBestellingRepository 
	extends CrudRepository<SampleBestelling, Long>{
//	
//	List<SampleBestelling> findByDatumVerlopenAfter(Date datumVerlopen);

}
