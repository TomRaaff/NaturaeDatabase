package naturaedatabase;
import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface BestellingRepository 
	extends CrudRepository<Bestelling, Long>{
	
	// List<Bestelling> findByOpleverDatumAfter(@Param("tweeWekenVoorOpleverdatum") Date tweeWekenVoorOpleverdatum);
	List<Bestelling> findByOpleverDatumBeforeAndKlaar(@Param("wekenVoorOpleverdatum") Date wekenVoorOpleverdatum, @Param("klaar") boolean klaar);
}
