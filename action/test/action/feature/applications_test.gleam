import gleeunit/should
import action/applications.{NextStep}
import action/applications/form

pub fn next_ready_test() {
  applications.step_initial
  |> applications.next([form.Answer("ready", form.BoolAnswer(True))])
  |> should.equal(NextStep(applications.step_ready))
}

pub fn next_not_ready_test() {
  applications.step_initial
  |> applications.next([form.Answer("ready", form.BoolAnswer(False))])
  |> should.equal(NextStep(applications.step_not_ready))
}
