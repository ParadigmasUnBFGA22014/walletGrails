package com.wallet



import org.junit.*
import grails.test.mixin.*

@TestFor(StatisticalController)
@Mock(Statistical)
class StatisticalControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/statistical/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.statisticalInstanceList.size() == 0
        assert model.statisticalInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.statisticalInstance != null
    }

    void testSave() {
        controller.save()

        assert model.statisticalInstance != null
        assert view == '/statistical/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/statistical/show/1'
        assert controller.flash.message != null
        assert Statistical.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/statistical/list'

        populateValidParams(params)
        def statistical = new Statistical(params)

        assert statistical.save() != null

        params.id = statistical.id

        def model = controller.show()

        assert model.statisticalInstance == statistical
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/statistical/list'

        populateValidParams(params)
        def statistical = new Statistical(params)

        assert statistical.save() != null

        params.id = statistical.id

        def model = controller.edit()

        assert model.statisticalInstance == statistical
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/statistical/list'

        response.reset()

        populateValidParams(params)
        def statistical = new Statistical(params)

        assert statistical.save() != null

        // test invalid parameters in update
        params.id = statistical.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/statistical/edit"
        assert model.statisticalInstance != null

        statistical.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/statistical/show/$statistical.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        statistical.clearErrors()

        populateValidParams(params)
        params.id = statistical.id
        params.version = -1
        controller.update()

        assert view == "/statistical/edit"
        assert model.statisticalInstance != null
        assert model.statisticalInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/statistical/list'

        response.reset()

        populateValidParams(params)
        def statistical = new Statistical(params)

        assert statistical.save() != null
        assert Statistical.count() == 1

        params.id = statistical.id

        controller.delete()

        assert Statistical.count() == 0
        assert Statistical.get(statistical.id) == null
        assert response.redirectedUrl == '/statistical/list'
    }
}
