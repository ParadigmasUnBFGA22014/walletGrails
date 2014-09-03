package com.wallet



import org.junit.*
import grails.test.mixin.*

@TestFor(WalletController)
@Mock(Wallet)
class WalletControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/wallet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.walletInstanceList.size() == 0
        assert model.walletInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.walletInstance != null
    }

    void testSave() {
        controller.save()

        assert model.walletInstance != null
        assert view == '/wallet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/wallet/show/1'
        assert controller.flash.message != null
        assert Wallet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/wallet/list'

        populateValidParams(params)
        def wallet = new Wallet(params)

        assert wallet.save() != null

        params.id = wallet.id

        def model = controller.show()

        assert model.walletInstance == wallet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/wallet/list'

        populateValidParams(params)
        def wallet = new Wallet(params)

        assert wallet.save() != null

        params.id = wallet.id

        def model = controller.edit()

        assert model.walletInstance == wallet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/wallet/list'

        response.reset()

        populateValidParams(params)
        def wallet = new Wallet(params)

        assert wallet.save() != null

        // test invalid parameters in update
        params.id = wallet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/wallet/edit"
        assert model.walletInstance != null

        wallet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/wallet/show/$wallet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        wallet.clearErrors()

        populateValidParams(params)
        params.id = wallet.id
        params.version = -1
        controller.update()

        assert view == "/wallet/edit"
        assert model.walletInstance != null
        assert model.walletInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/wallet/list'

        response.reset()

        populateValidParams(params)
        def wallet = new Wallet(params)

        assert wallet.save() != null
        assert Wallet.count() == 1

        params.id = wallet.id

        controller.delete()

        assert Wallet.count() == 0
        assert Wallet.get(wallet.id) == null
        assert response.redirectedUrl == '/wallet/list'
    }
}
