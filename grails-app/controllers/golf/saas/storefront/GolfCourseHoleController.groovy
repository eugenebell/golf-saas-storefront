package golf.saas.storefront

import org.springframework.dao.DataIntegrityViolationException


class GolfCourseHoleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [golfCourseHoleInstanceList: GolfCourseHole.list(params), golfCourseHoleInstanceTotal: GolfCourseHole.count()]
    }

    def create() {
        [golfCourseHoleInstance: new GolfCourseHole(params)]
    }

    def save() {
        def golfCourseHoleInstance = new GolfCourseHole(params)
        if (!golfCourseHoleInstance.save(flush: true)) {
            render(view: "create", model: [golfCourseHoleInstance: golfCourseHoleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), golfCourseHoleInstance.id])
        redirect(action: "show", id: golfCourseHoleInstance.id)
    }

    def show() {
        def golfCourseHoleInstance = GolfCourseHole.get(params.id)
        if (!golfCourseHoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), params.id])
            redirect(action: "list")
            return
        }

        [golfCourseHoleInstance: golfCourseHoleInstance]
    }

    def edit() {
        def golfCourseHoleInstance = GolfCourseHole.get(params.id)
        if (!golfCourseHoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), params.id])
            redirect(action: "list")
            return
        }

        [golfCourseHoleInstance: golfCourseHoleInstance]
    }

    def update() {
        def golfCourseHoleInstance = GolfCourseHole.get(params.id)
        if (!golfCourseHoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version != null) {
            if (golfCourseHoleInstance.version > params.version) {
                golfCourseHoleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'golfCourseHole.label', default: 'GolfCourseHole')] as Object[],
                          "Another user has updated this GolfCourseHole while you were editing")
                render(view: "edit", model: [golfCourseHoleInstance: golfCourseHoleInstance])
                return
            }
        }

        golfCourseHoleInstance.properties = params

        if (!golfCourseHoleInstance.save(flush: true)) {
            render(view: "edit", model: [golfCourseHoleInstance: golfCourseHoleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), golfCourseHoleInstance.id])
        redirect(action: "show", id: golfCourseHoleInstance.id)
    }

    def delete() {
        def golfCourseHoleInstance = GolfCourseHole.get(params.id)
        if (!golfCourseHoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), params.id])
            redirect(action: "list")
            return
        }

        try {
            golfCourseHoleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'golfCourseHole.label', default: 'GolfCourseHole'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
