package golf.saas.storefront

import org.springframework.dao.DataIntegrityViolationException

class GolfCourseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [golfCourseInstanceList: GolfCourse.list(params), golfCourseInstanceTotal: GolfCourse.count()]
    }

    def create() {
        [golfCourseInstance: new GolfCourse(params)]
    }

    def save() {
        def golfCourseInstance = new GolfCourse(params)
        if (!golfCourseInstance.save(flush: true)) {
            render(view: "create", model: [golfCourseInstance: golfCourseInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), golfCourseInstance.id])
        redirect(action: "show", id: golfCourseInstance.id)
    }

    def show() {
        def golfCourseInstance = GolfCourse.get(params.id)
        if (!golfCourseInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), params.id])
            redirect(action: "list")
            return
        }

        [golfCourseInstance: golfCourseInstance]
    }

    def edit() {
        def golfCourseInstance = GolfCourse.get(params.id)
        if (!golfCourseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), params.id])
            redirect(action: "list")
            return
        }

        [golfCourseInstance: golfCourseInstance]
    }

    def update() {
        def golfCourseInstance = GolfCourse.get(params.id)
        if (!golfCourseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (golfCourseInstance.version > version) {
                golfCourseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'golfCourse.label', default: 'GolfCourse')] as Object[],
                          "Another user has updated this GolfCourse while you were editing")
                render(view: "edit", model: [golfCourseInstance: golfCourseInstance])
                return
            }
        }

        golfCourseInstance.properties = params

        if (!golfCourseInstance.save(flush: true)) {
            render(view: "edit", model: [golfCourseInstance: golfCourseInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), golfCourseInstance.id])
        redirect(action: "show", id: golfCourseInstance.id)
    }

    def delete() {
        def golfCourseInstance = GolfCourse.get(params.id)
        if (!golfCourseInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), params.id])
            redirect(action: "list")
            return
        }

        try {
            golfCourseInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'golfCourse.label', default: 'GolfCourse'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
