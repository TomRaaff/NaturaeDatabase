package naturaedatabase;
import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface BestellingRepository 
	extends CrudRepository<Bestelling, Long>{
	
	List<Bestelling> findByOpleverDatumAfter(@Param("deadlineBestelling") Date deadlineBestelling);

}
