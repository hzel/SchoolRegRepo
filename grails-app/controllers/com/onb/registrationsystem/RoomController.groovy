package com.onb.registrationsystem

import org.springframework.dao.DataIntegrityViolationException

class RoomController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [roomInstanceList: Room.list(params), roomInstanceTotal: Room.count()]
    }

    def create() {
        [roomInstance: new Room(params)]
    }

    def save() {
        def roomInstance = new Room(params)
        if (!roomInstance.save(flush: true)) {
            render(view: "create", model: [roomInstance: roomInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'room.label', default: 'Room'), roomInstance.id])
        redirect(action: "show", id: roomInstance.id)
    }

    def show() {
        def roomInstance = Room.get(params.id)
        if (!roomInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'room.label', default: 'Room'), params.id])
            redirect(action: "list")
            return
        }

        [roomInstance: roomInstance]
    }

    def edit() {
        def roomInstance = Room.get(params.id)
        if (!roomInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'room.label', default: 'Room'), params.id])
            redirect(action: "list")
            return
        }

        [roomInstance: roomInstance]
    }

    def update() {
        def roomInstance = Room.get(params.id)
        if (!roomInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'room.label', default: 'Room'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (roomInstance.version > version) {
                roomInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'room.label', default: 'Room')] as Object[],
                          "Another user has updated this Room while you were editing")
                render(view: "edit", model: [roomInstance: roomInstance])
                return
            }
        }

        roomInstance.properties = params

        if (!roomInstance.save(flush: true)) {
            render(view: "edit", model: [roomInstance: roomInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'room.label', default: 'Room'), roomInstance.id])
        redirect(action: "show", id: roomInstance.id)
    }

    def delete() {
        def roomInstance = Room.get(params.id)
        if (!roomInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'room.label', default: 'Room'), params.id])
            redirect(action: "list")
            return
        }

        try {
            roomInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'room.label', default: 'Room'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'room.label', default: 'Room'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
