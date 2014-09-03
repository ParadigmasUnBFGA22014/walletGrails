package com.wallet

import org.springframework.dao.DataIntegrityViolationException

class WalletController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [walletInstanceList: Wallet.list(params), walletInstanceTotal: Wallet.count()]
    }

    def create() {
        [walletInstance: new Wallet(params)]
    }

    def save() {
        def walletInstance = new Wallet(params)
        if (!walletInstance.save(flush: true)) {
            render(view: "create", model: [walletInstance: walletInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'wallet.label', default: 'Wallet'), walletInstance.id])
        redirect(action: "show", id: walletInstance.id)
    }

    def show(Long id) {
        def walletInstance = Wallet.get(id)
        if (!walletInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wallet.label', default: 'Wallet'), id])
            redirect(action: "list")
            return
        }

        [walletInstance: walletInstance]
    }

    def edit(Long id) {
        def walletInstance = Wallet.get(id)
        if (!walletInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wallet.label', default: 'Wallet'), id])
            redirect(action: "list")
            return
        }

        [walletInstance: walletInstance]
    }

    def update(Long id, Long version) {
        def walletInstance = Wallet.get(id)
        if (!walletInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wallet.label', default: 'Wallet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (walletInstance.version > version) {
                walletInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'wallet.label', default: 'Wallet')] as Object[],
                          "Another user has updated this Wallet while you were editing")
                render(view: "edit", model: [walletInstance: walletInstance])
                return
            }
        }

        walletInstance.properties = params

        if (!walletInstance.save(flush: true)) {
            render(view: "edit", model: [walletInstance: walletInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'wallet.label', default: 'Wallet'), walletInstance.id])
        redirect(action: "show", id: walletInstance.id)
    }

    def delete(Long id) {
        def walletInstance = Wallet.get(id)
        if (!walletInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wallet.label', default: 'Wallet'), id])
            redirect(action: "list")
            return
        }

        try {
            walletInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'wallet.label', default: 'Wallet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'wallet.label', default: 'Wallet'), id])
            redirect(action: "show", id: id)
        }
    }
}
