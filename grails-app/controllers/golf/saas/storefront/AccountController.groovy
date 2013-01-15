package golf.saas.storefront

import golf.saas.security.SecurityRole
import golf.saas.security.SecurityUserSecurityRole
import grails.plugins.springsecurity.Secured

import org.springframework.dao.DataIntegrityViolationException

class AccountController {

	def springSecurityService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def getLastRound() {
		def user = springSecurityService.currentUser		
	}
	
	def register = {
	}
	
	def registerSilver = {
	}
	
	def registerGold = {
	}
	
	def login = {
		if(session.account) {
			redirect(uri:'/welcome')
		}
	}
	
	def handleLogin = {
		if (springSecurityService.isLoggedIn()) {
			redirect(uri:'/welcome')
		}
		else {
			redirect action: 'auth', params: params
		}
	}
	
	def handleBronzeRegistration = {
		def account = new Account( params )
		if(params.password != params.confirm) {
			flash.message = "The two passwords you entered don't match!"
			redirect(action:register)
		} else {
			account.setEnabled(true)			
			def golferInstance = new Golfer()
			def player = new Player()
			player.setPlayerName(account.getFirstName() + " " + account.getLastName())
			golferInstance.setPlayer(player)
			account.setGolfer(golferInstance)
			if(!account.save(flush: true)) {
				flash.account = account
				redirect(action:register)
			} else {
				def userRole = SecurityRole.findByAuthority('ROLE_USER') ?: new SecurityRole(authority: 'ROLE_USER').save(failOnError: true)
				SecurityUserSecurityRole.create(account, userRole)
				redirect(uri:'/login')
			}
		}
	}
	
	def handleSilverRegistration = {
		def account = new Account( params )
		if(params.password != params.confirm) {
			flash.message = "The two passwords you entered don't match!"
			redirect(action:register)
		} else {
			account.setEnabled(true)
			def golferSocietyInstance = new GolfSociety()
			golferSocietyInstance.setSocietyName(params.societyName)
			account.setGolfSociety(golferSocietyInstance)
			if(!account.save(flush: true)) {
				flash.account = account
				redirect(action:register)
			} else {
				def userRole = SecurityRole.findByAuthority('ROLE_USER') ?: new SecurityRole(authority: 'ROLE_USER').save(failOnError: true)
				SecurityUserSecurityRole.create(account, userRole)
				redirect(uri:'/login')
			}
		}
	}
	
	def handleGoldRegistration = {
		def account = new Account( params )
		if(params.password != params.confirm) {
			flash.message = "The two passwords you entered don't match!"
			redirect(action:register)
		} else {
			account.setEnabled(true)
			def golfClubInstance = new GolfClub()	
			golfClubInstance.setGolfClubName(params.golfClubName)
			account.setGolfClub(golfClubInstance)
			if(!account.save(flush: true)) {
				flash.account = account
				redirect(action:register)
			} else {
				def userRole = SecurityRole.findByAuthority('ROLE_USER') ?: new SecurityRole(authority: 'ROLE_USER').save(failOnError: true)
				SecurityUserSecurityRole.create(account, userRole)
				redirect(uri:'/login')
			}
		}
	}
	
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [accountInstanceList: Account.list(params), accountInstanceTotal: Account.count()]
    }
	
    def create() {
        [accountInstance: new Account(params)]
    }

    def save() {
        def accountInstance = new Account(params)
        if (!accountInstance.save(flush: true)) {
            render(view: "create", model: [accountInstance: accountInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
        redirect(action: "show", id: accountInstance.id)
    }
	
    def show() {
        def accountInstance = Account.get(params.id)
        if (!accountInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(action: "list")
            return
        }

        [accountInstance: accountInstance]
    }
	
    def edit() {
        def accountInstance = Account.get(springSecurityService?.principal?.id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(view: "welcome")
            return
        }
		accountInstance.setPassword("")
		accountInstance.setConfirm("")
        [accountInstance: accountInstance]
    }
	
    def update() {
        def accountInstance = Account.get(params.id)
        if (!accountInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (accountInstance.version > version) {
                accountInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'account.label', default: 'Account')] as Object[],
                          "Another user has updated this Account while you were editing")
                render(view: "edit", model: [accountInstance: accountInstance])
                return
            }
        }

        accountInstance.properties = params

        if (!accountInstance.save(flush: true)) {
            render(view: "edit", model: [accountInstance: accountInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
        redirect(action: "show", id: accountInstance.id)
    }
	
    def delete() {
        def accountInstance = Account.get(params.id)
        if (!accountInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(action: "list")
            return
        }

        try {
            accountInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'account.label', default: 'Account'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
