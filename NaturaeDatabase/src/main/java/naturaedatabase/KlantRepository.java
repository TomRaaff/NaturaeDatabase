package naturaedatabase;
import org.springframework.data.repository.CrudRepository;

public interface KlantRepository 
extends CrudRepository<Klant, Long> {
//<Bloem = class, Long = type van het Id>
// CRUD = create read update delete
	
	

}