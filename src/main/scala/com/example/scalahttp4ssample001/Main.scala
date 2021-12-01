package com.example.scalahttp4ssample001

import cats.effect.{ExitCode, IO, IOApp}

object Main extends IOApp {
  def run(args: List[String]) =
    Scalahttp4ssample001Server.stream[IO].compile.drain.as(ExitCode.Success)
}
