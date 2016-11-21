package naturaedatabase;
import org.springframework.data.repository.CrudRepository;

public interface KlantRepository 
extends CrudRepository<Klant, Long> {
//<Klant = class, Long = type van de Id>
// CRUD = create read update delete
	
	

}