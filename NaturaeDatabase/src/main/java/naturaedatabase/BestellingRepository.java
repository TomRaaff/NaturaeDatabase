package naturaedatabase;
import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface BestellingRepository 
	extends CrudRepository<Bestelling, Long>{
	
	List<Bestelling> findByOpleverDatumBeforeAndKlaar(@Param("wekenVoorOpleverdatum") Date wekenVoorOpleverdatum, @Param("klaar") boolean klaar);
	List<Bestelling> findByOpleverDatumBeforeAndOpleverDatumAfter(Date eindeMaand, Date beginMaand);
}



// deleted from query: @Param("eindeMaand") 
// AndAfter