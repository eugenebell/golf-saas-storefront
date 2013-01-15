package golf.saas.storefront

import org.springframework.dao.DataIntegrityViolationException


class ScoreCardController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [scoreCardInstanceList: ScoreCard.list(params), scoreCardInstanceTotal: ScoreCard.count()]
    }

    def create() {
        [scoreCardInstance: new ScoreCard(params)]
    }

    def save() {
        def scoreCardInstance = new ScoreCard(params)
        if (!scoreCardInstance.save(flush: true)) {
            render(view: "create", model: [scoreCardInstance: scoreCardInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), scoreCardInstance.id])
        redirect(action: "show", id: scoreCardInstance.id)
    }

    def show() {
        def scoreCardInstance = ScoreCard.get(params.id)
        if (!scoreCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), params.id])
            redirect(action: "list")
            return
        }
        [scoreCardInstance: scoreCardInstance]
    }

    def edit() {
        def scoreCardInstance = ScoreCard.get(params.id)
        if (!scoreCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), params.id])
            redirect(action: "list")
            return
        }
        [scoreCardInstance: scoreCardInstance]
    }

    def update() {
        def scoreCardInstance = ScoreCard.get(params.id)
        if (!scoreCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version != null) {
            if (scoreCardInstance.version > params.version) {
                scoreCardInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'scoreCard.label', default: 'ScoreCard')] as Object[],
                          "Another user has updated this ScoreCard while you were editing")
                render(view: "edit", model: [scoreCardInstance: scoreCardInstance])
                return
            }
        }

        scoreCardInstance.properties = params

        if (!scoreCardInstance.save(flush: true)) {
            render(view: "edit", model: [scoreCardInstance: scoreCardInstance])
            return
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), scoreCardInstance.id])
        redirect(action: "show", id: scoreCardInstance.id)
    }

    def delete() {
        def scoreCardInstance = ScoreCard.get(params.id)
        if (!scoreCardInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), params.id])
            redirect(action: "list")
            return
        }
        try {
            scoreCardInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'scoreCard.label', default: 'ScoreCard'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
