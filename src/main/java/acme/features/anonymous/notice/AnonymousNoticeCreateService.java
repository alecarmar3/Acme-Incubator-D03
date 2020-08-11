
package acme.features.anonymous.notice;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.Notice;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractCreateService;

@Service
public class AnonymousNoticeCreateService implements AbstractCreateService<Anonymous, Notice> {

	// Internal state ---------------------------------------------------------

	@Autowired
	private AnonymousNoticeRepository repository;


	@Override
	public boolean authorise(final Request<Notice> request) {
		assert request != null;

		return true;

	}

	@Override
	public void validate(final Request<Notice> request, final Notice entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;
	}

	@Override
	public void bind(final Request<Notice> request, final Notice entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors, "creationDate");
	}

	@Override
	public void unbind(final Request<Notice> request, final Notice entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "headerPicture", "title", "deadline", "body", "webLinks");
	}

	@Override
	public Notice instantiate(final Request<Notice> request) {
		assert request != null;

		Notice result;

		result = new Notice();

		return result;
	}

	@Override
	public void create(final Request<Notice> request, final Notice entity) {
		assert request != null;
		assert entity != null;

		Date creationDate;

		creationDate = new Date(System.currentTimeMillis() - 1);
		entity.setCreationDate(creationDate);

		this.repository.save(entity);
	}

}
