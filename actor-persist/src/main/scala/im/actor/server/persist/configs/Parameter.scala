package im.actor.server.persist.configs

import slick.driver.PostgresDriver.api._

import im.actor.server.models

class ParameterTable(tag: Tag) extends Table[models.configs.Parameter](tag, "config_parameters") {
  def userId = column[Int]("user_id", O.PrimaryKey)

  def key = column[String]("key", O.PrimaryKey)

  def value = column[Option[String]]("value")

  def * = (userId, key, value) <> (models.configs.Parameter.tupled, models.configs.Parameter.unapply)
}

object Parameter {
  val parameters = TableQuery[ParameterTable]

  def createOrUpdate(parameter: models.configs.Parameter) =
    parameters.insertOrUpdate(parameter)

  def find(userId: Int) =
    parameters.filter(_.userId === userId).result
}