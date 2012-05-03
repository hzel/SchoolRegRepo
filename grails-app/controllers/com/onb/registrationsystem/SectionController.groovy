package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class SectionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sectionInstanceList: Section.list(params), sectionInstanceTotal: Section.count()]
    }

    def create() {
        [sectionInstance: new Section(params)]
    }

    def save() {
        def sectionInstance = new Section(params)
        if (!sectionInstance.save(flush: true)) {
            render(view: "create", model: [sectionInstance: sectionInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'section.label', default: 'Section'), sectionInstance.id])
        redirect(action: "show", id: sectionInstance.id)
    }

    def show() {
        def sectionInstance = Section.get(params.id)
        if (!sectionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'section.label', default: 'Section'), params.id])
            redirect(action: "list")
            return
        }

        [sectionInstance: sectionInstance]
    }

    def edit() {
        def sectionInstance = Section.get(params.id)
        if (!sectionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'section.label', default: 'Section'), params.id])
            redirect(action: "list")
            return
        }

        [sectionInstance: sectionInstance]
    }

    def update() {
        def sectionInstance = Section.get(params.id)
        if (!sectionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'section.label', default: 'Section'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (sectionInstance.version > version) {
                sectionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'section.label', default: 'Section')] as Object[],
                          "Another user has updated this Section while you were editing")
                render(view: "edit", model: [sectionInstance: sectionInstance])
                return
            }
        }

        sectionInstance.properties = params

        if (!sectionInstance.save(flush: true)) {
            render(view: "edit", model: [sectionInstance: sectionInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'section.label', default: 'Section'), sectionInstance.id])
        redirect(action: "show", id: sectionInstance.id)
    }

    def delete() {
        def sectionInstance = Section.get(params.id)
        if (!sectionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'section.label', default: 'Section'), params.id])
            redirect(action: "list")
            return
        }

        try {
            sectionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'section.label', default: 'Section'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'section.label', default: 'Section'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
