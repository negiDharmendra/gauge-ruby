# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: runner.proto for package 'gauge.messages'

require 'grpc'
require 'runner_pb'

module Gauge
  module Messages
    module Runner
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'gauge.messages.Runner'

        # ValidateStep is a RPC to validate a given step.
        #
        # Accepts a StepValidateRequest message and returns a StepValidateResponse message
        rpc :ValidateStep, StepValidateRequest, StepValidateResponse
        # SuiteDataStoreInit is a RPC to initialize the suite level data store.
        #
        # Accepts a Empty message and returns a ExecutionStatusResponse message
        rpc :SuiteDataStoreInit, Empty, ExecutionStatusResponse
        # ExecutionStarting is a RPC to tell runner to execute Suite level hooks.
        #
        # Accepts a ExecutionStartingRequest message and returns a ExecutionStatusResponse message
        rpc :ExecutionStarting, ExecutionStartingRequest, ExecutionStatusResponse
        # SpecDataStoreInit is a RPC to initialize the spec level data store.
        #
        # Accepts a Empty message and returns a ExecutionStatusResponse message
        rpc :SpecDataStoreInit, Empty, ExecutionStatusResponse
        # SpecExecutionStarting is a RPC to tell runner to execute spec level hooks.
        #
        # Accepts a SpecExecutionStartingRequest message and returns a ExecutionStatusResponse message
        rpc :SpecExecutionStarting, SpecExecutionStartingRequest, ExecutionStatusResponse
        # ScenarioDataStoreInit is a RPC to initialize the scenario level data store.
        #
        # Accepts a Empty message and returns a ExecutionStatusResponse message
        rpc :ScenarioDataStoreInit, Empty, ExecutionStatusResponse
        # ScenarioExecutionStarting is a RPC to tell runner to execute scenario level hooks.
        #
        # Accepts a ScenarioExecutionStartingRequest message and returns a ExecutionStatusResponse message
        rpc :ScenarioExecutionStarting, ScenarioExecutionStartingRequest, ExecutionStatusResponse
        # StepExecutionStarting is a RPC to tell runner to execute step level hooks.
        #
        # Accepts a StepExecutionStartingRequest message and returns a ExecutionStatusResponse message
        rpc :StepExecutionStarting, StepExecutionStartingRequest, ExecutionStatusResponse
        # ExecuteStep is a RPC to tell runner to execute a step .
        #
        # Accepts a ExecuteStepRequest message and returns a ExecutionStatusResponse message
        rpc :ExecuteStep, ExecuteStepRequest, ExecutionStatusResponse
        # StepExecutionEnding is a RPC to tell runner to execute step level hooks.
        #
        # Accepts a StepExecutionEndingRequest message and returns a ExecutionStatusResponse message
        rpc :StepExecutionEnding, StepExecutionEndingRequest, ExecutionStatusResponse
        # ScenarioExecutionEnding is a RPC to tell runner to execute Scenario level hooks.
        #
        # Accepts a ScenarioExecutionEndingRequest message and returns a ExecutionStatusResponse message
        rpc :ScenarioExecutionEnding, ScenarioExecutionEndingRequest, ExecutionStatusResponse
        # SpecExecutionEnding is a RPC to tell runner to execute spec level hooks.
        #
        # Accepts a SpecExecutionEndingRequest message and returns a ExecutionStatusResponse message
        rpc :SpecExecutionEnding, SpecExecutionEndingRequest, ExecutionStatusResponse
        # ExecutionEnding is a RPC to tell runner to execute suite level hooks.
        #
        # Accepts a ExecutionEndingRequest message and returns a ExecutionStatusResponse message
        rpc :ExecutionEnding, ExecutionEndingRequest, ExecutionStatusResponse
        # GetStepNames is a RPC to get all the available steps from the runner.
        #
        # Accepts a StepNamesRequest message and returns a StepNamesResponse
        rpc :GetStepNames, StepNamesRequest, StepNamesResponse
        # CacheFile is a RPC to tell runner to load/reload/unload a implementation file.
        #
        # Accepts a CacheFileRequest message and returns a Empty message
        rpc :CacheFile, CacheFileRequest, Empty
        # GetStepPositions is a RPC to get all availabe steps in file.
        #
        # Accepts a StepPositionsRequest message and returns a StepPositionsResponse message
        rpc :GetStepPositions, StepPositionsRequest, StepPositionsResponse
        # GetImplementationFiles is a RPC get all the existing implementaiton files.
        #
        # Accepts a Empty and returns a ImplementationFileListResponse message.
        rpc :GetImplementationFiles, Empty, ImplementationFileListResponse
        # ValidateStep is a RPC to to ask ruuner to add a given implementation to given file.
        #
        # Accepts a StubImplementationCodeRequest and returns a FileDiff message.
        rpc :ImplementStub, StubImplementationCodeRequest, FileDiff
        # GetStepName is a RPC to get information about the given step.
        #
        # Accepts a StepNameRequest message and returns a StepNameResponse message.
        rpc :GetStepName, StepNameRequest, StepNameResponse
        # GetGlobPatterns is a RPC to get the file path pattern which needs to be cached.
        #
        # Accepts a Empty message and returns a ImplementationFileGlobPatternResponse message.
        rpc :GetGlobPatterns, Empty, ImplementationFileGlobPatternResponse
        # Refactor is a RPC to refactor a given step in implementation file.
        #
        # Accepts a RefactorRequest message and returns a RefactorResponse message.
        rpc :Refactor, RefactorRequest, RefactorResponse
        # KillProcess is a RPC tell runnner to stop grpc server and kill the runner process.
        #
        # Accepts a KillProcessRequest message and returns a Empty message.
        rpc :KillProcess, KillProcessRequest, Empty
      end

      Stub = Service.rpc_stub_class
    end
  end
end