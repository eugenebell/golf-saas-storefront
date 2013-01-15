package golf.saas.storefront

import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException


class GolferController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [golferInstanceList: Golfer.list(params), golferInstanceTotal: Golfer.count()]
    }

    def create() {
        [golferInstance: new Golfer(params)]
    }

    def save() {
        def golferInstance = new Golfer(params)
        if (!golferInstance.save(flush: true)) {
            render(view: "create", model: [golferInstance: golferInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'golfer.label', default: 'Golfer'), golferInstance.id])
        redirect(action: "show", id: golferInstance.id)
    }
	
    def show() {
        def golferInstance = Golfer.get(params.id)
        if (!golferInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfer.label', default: 'Golfer'), params.id])
            redirect(action: "list")
            return
        }

        [golferInstance: golferInstance]
    }
	
    def edit() {
        def golferInstance = Golfer.get(params.id)
        if (!golferInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfer.label', default: 'Golfer'), params.id])
            redirect(action: "list")
            return
        }

        [golferInstance: golferInstance]
    }
	
    def update() {
        def golferInstance = Golfer.get(params.id)
        if (!golferInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfer.label', default: 'Golfer'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (golferInstance.version > version) {
                golferInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'golfer.label', default: 'Golfer')] as Object[],
                          "Another user has updated this Golfer while you were editing")
                render(view: "edit", model: [golferInstance: golferInstance])
                return
            }
        }

        golferInstance.properties = params

        if (!golferInstance.save(flush: true)) {
            render(view: "edit", model: [golferInstance: golferInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'golfer.label', default: 'Golfer'), golferInstance.id])
        redirect(action: "show", id: golferInstance.id)
    }
	
    def delete() {
        def golferInstance = Golfer.get(params.id)
        if (!golferInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfer.label', default: 'Golfer'), params.id])
            redirect(action: "list")
            return
        }

        try {
            golferInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'golfer.label', default: 'Golfer'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'golfer.label', default: 'Golfer'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
