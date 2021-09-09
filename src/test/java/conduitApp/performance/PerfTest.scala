package conduitApp.performance



import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._


import scala.concurrent.duration._
import scala.language.postfixOps
import scala.concurrent.duration._

class PerfTest extends Simulation {

  val protocol = karateProtocol(
  )


  val createArticle = scenario("create and delete article").exec(karateFeature("classpath:conduitApp/performance/Department.feature"))

  setUp(
    createArticle.inject(
    atOnceUsers(200)


  ).protocols(protocol)
  )

}