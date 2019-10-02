package com.anrisu.sparkapps

import com.anrisu.sparkutilities.sparkCustomLogger
import org.apache.spark.sql.SparkSession


object sqlRunner {

  def main(args: Array[String]): Unit = {

    if (args.length < 1) {
      System.err.println(
        s"""
           |Usage: Spark SQL Runner <sql query database.table>
        """.stripMargin)
      System.exit(1)
    }

    val sqlQuery = args(0)

    val whl = "hdfs://localhost:9000/user/hive/warehouse"

    val spark = SparkSession.builder()
      .master("local")
      .appName("sparksqlrunner")
      .config("spark.sql.warehouse.location", whl)
      .config("hive.metastore.uris","thrift://localhost:9083")
      .enableHiveSupport()
      .getOrCreate()

    sparkCustomLogger.setStreamingLogLevels()

    spark.catalog.listDatabases().show()

    val df = spark.sql(sqlQuery)

    df.printSchema()

    df.show(5, false)

    spark.stop()

  }

}