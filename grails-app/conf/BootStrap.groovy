import com.onb.registrationsystem.Role
import com.onb.registrationsystem.User
import com.onb.registrationsystem.UserRole

class BootStrap {
    def init = { servletContext ->
    def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
      def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

      def testUser = new User(username: 'me', enabled: true, password: 'password')
      testUser.save(flush: true)

      def studentUser = new User(username: 'student', enabled: true, password: 'student')
      studentUser.save(flush: true)

      UserRole.create testUser, adminRole, true
	UserRole.create studentUser, userRole, true

      assert User.count() == 2
      assert Role.count() == 2
      assert UserRole.count() == 2
    }
    def destroy = {
    }
}
