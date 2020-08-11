
package acme.entities;

import javax.persistence.Entity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Inquiry extends Research {

	// Serialization identifier -----------------------------------------------

	private static final long serialVersionUID = 1L;

}
