#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'spec.pb'; rescue LoadError; end

module Gauge
  module Messages
    # forward declarations
    class KillProcessRequest < ::ProtocolBuffers::Message; end
    class ExecutionStatusResponse < ::ProtocolBuffers::Message; end
    class ExecutionStartingRequest < ::ProtocolBuffers::Message; end
    class ExecutionEndingRequest < ::ProtocolBuffers::Message; end
    class SpecExecutionStartingRequest < ::ProtocolBuffers::Message; end
    class SpecExecutionEndingRequest < ::ProtocolBuffers::Message; end
    class ScenarioExecutionStartingRequest < ::ProtocolBuffers::Message; end
    class ScenarioExecutionEndingRequest < ::ProtocolBuffers::Message; end
    class StepExecutionStartingRequest < ::ProtocolBuffers::Message; end
    class StepExecutionEndingRequest < ::ProtocolBuffers::Message; end
    class ExecutionInfo < ::ProtocolBuffers::Message; end
    class SpecInfo < ::ProtocolBuffers::Message; end
    class ScenarioInfo < ::ProtocolBuffers::Message; end
    class StepInfo < ::ProtocolBuffers::Message; end
    class ExecuteStepRequest < ::ProtocolBuffers::Message; end
    class StepValidateRequest < ::ProtocolBuffers::Message; end
    class StepValidateResponse < ::ProtocolBuffers::Message; end
    class SuiteExecutionResult < ::ProtocolBuffers::Message; end
    class StepNamesRequest < ::ProtocolBuffers::Message; end
    class StepNamesResponse < ::ProtocolBuffers::Message; end
    class ScenarioDataStoreInitRequest < ::ProtocolBuffers::Message; end
    class SpecDataStoreInitRequest < ::ProtocolBuffers::Message; end
    class SuiteDataStoreInitRequest < ::ProtocolBuffers::Message; end
    class ParameterPosition < ::ProtocolBuffers::Message; end
    class RefactorRequest < ::ProtocolBuffers::Message; end
    class RefactorResponse < ::ProtocolBuffers::Message; end
    class StepNameRequest < ::ProtocolBuffers::Message; end
    class StepNameResponse < ::ProtocolBuffers::Message; end
    class UnsupportedMessageResponse < ::ProtocolBuffers::Message; end
    class Message < ::ProtocolBuffers::Message; end

    class KillProcessRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.KillProcessRequest"

    end

    class ExecutionStatusResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ExecutionStatusResponse"

      required ::Gauge::Messages::ProtoExecutionResult, :executionResult, 1
    end

    class ExecutionStartingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ExecutionStartingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class ExecutionEndingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ExecutionEndingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class SpecExecutionStartingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.SpecExecutionStartingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class SpecExecutionEndingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.SpecExecutionEndingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class ScenarioExecutionStartingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ScenarioExecutionStartingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class ScenarioExecutionEndingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ScenarioExecutionEndingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class StepExecutionStartingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepExecutionStartingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class StepExecutionEndingRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepExecutionEndingRequest"

      optional ::Gauge::Messages::ExecutionInfo, :currentExecutionInfo, 1
    end

    class ExecutionInfo < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ExecutionInfo"

      optional ::Gauge::Messages::SpecInfo, :currentSpec, 1
      optional ::Gauge::Messages::ScenarioInfo, :currentScenario, 2
      optional ::Gauge::Messages::StepInfo, :currentStep, 3
      optional :string, :stacktrace, 4
    end

    class SpecInfo < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.SpecInfo"

      required :string, :name, 1
      required :string, :fileName, 2
      required :bool, :isFailed, 3
      repeated :string, :tags, 4
    end

    class ScenarioInfo < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ScenarioInfo"

      required :string, :name, 1
      required :bool, :isFailed, 2
      repeated :string, :tags, 3
    end

    class StepInfo < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepInfo"

      required ::Gauge::Messages::ExecuteStepRequest, :step, 1
      required :bool, :isFailed, 2
    end

    class ExecuteStepRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ExecuteStepRequest"

      required :string, :actualStepText, 1
      required :string, :parsedStepText, 2
      optional :bool, :scenarioFailing, 3
      repeated ::Gauge::Messages::Parameter, :parameters, 4
    end

    class StepValidateRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepValidateRequest"

      required :string, :stepText, 1
      required :int32, :numberOfParameters, 2
    end

    class StepValidateResponse < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module ErrorType
        include ::ProtocolBuffers::Enum

        set_fully_qualified_name "gauge.messages.StepValidateResponse.ErrorType"

        STEP_IMPLEMENTATION_NOT_FOUND = 0
        DUPLICATE_STEP_IMPLEMENTATION = 1
      end

      set_fully_qualified_name "gauge.messages.StepValidateResponse"

      required :bool, :isValid, 1
      optional :string, :errorMessage, 2
      optional ::Gauge::Messages::StepValidateResponse::ErrorType, :errorType, 3
    end

    class SuiteExecutionResult < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.SuiteExecutionResult"

      required ::Gauge::Messages::ProtoSuiteResult, :suiteResult, 1
    end

    class StepNamesRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepNamesRequest"

    end

    class StepNamesResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepNamesResponse"

      repeated :string, :steps, 1
    end

    class ScenarioDataStoreInitRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ScenarioDataStoreInitRequest"

    end

    class SpecDataStoreInitRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.SpecDataStoreInitRequest"

    end

    class SuiteDataStoreInitRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.SuiteDataStoreInitRequest"

    end

    class ParameterPosition < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ParameterPosition"

      required :int32, :oldPosition, 1
      required :int32, :newPosition, 2
    end

    class RefactorRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.RefactorRequest"

      required ::Gauge::Messages::ProtoStepValue, :oldStepValue, 1
      required ::Gauge::Messages::ProtoStepValue, :newStepValue, 2
      repeated ::Gauge::Messages::ParameterPosition, :paramPositions, 3
    end

    class RefactorResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.RefactorResponse"

      required :bool, :success, 1
      optional :string, :error, 2
      repeated :string, :filesChanged, 3
    end

    class StepNameRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepNameRequest"

      required :string, :stepValue, 1
    end

    class StepNameResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.StepNameResponse"

      required :bool, :isStepPresent, 1
      repeated :string, :stepName, 2
      required :bool, :hasAlias, 3
    end

    class UnsupportedMessageResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.UnsupportedMessageResponse"

      optional :string, :message, 1
    end

    class Message < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module MessageType
        include ::ProtocolBuffers::Enum

        set_fully_qualified_name "gauge.messages.Message.MessageType"

        ExecutionStarting = 0
        SpecExecutionStarting = 1
        SpecExecutionEnding = 2
        ScenarioExecutionStarting = 3
        ScenarioExecutionEnding = 4
        StepExecutionStarting = 5
        StepExecutionEnding = 6
        ExecuteStep = 7
        ExecutionEnding = 8
        StepValidateRequest = 9
        StepValidateResponse = 10
        ExecutionStatusResponse = 11
        StepNamesRequest = 12
        StepNamesResponse = 13
        KillProcessRequest = 14
        SuiteExecutionResult = 15
        ScenarioDataStoreInit = 16
        SpecDataStoreInit = 17
        SuiteDataStoreInit = 18
        StepNameRequest = 19
        StepNameResponse = 20
        RefactorRequest = 21
        RefactorResponse = 22
        UnsupportedMessageResponse = 23
      end

      set_fully_qualified_name "gauge.messages.Message"

      required ::Gauge::Messages::Message::MessageType, :messageType, 1
      required :int64, :messageId, 2
      optional ::Gauge::Messages::ExecutionStartingRequest, :executionStartingRequest, 3
      optional ::Gauge::Messages::SpecExecutionStartingRequest, :specExecutionStartingRequest, 4
      optional ::Gauge::Messages::SpecExecutionEndingRequest, :specExecutionEndingRequest, 5
      optional ::Gauge::Messages::ScenarioExecutionStartingRequest, :scenarioExecutionStartingRequest, 6
      optional ::Gauge::Messages::ScenarioExecutionEndingRequest, :scenarioExecutionEndingRequest, 7
      optional ::Gauge::Messages::StepExecutionStartingRequest, :stepExecutionStartingRequest, 8
      optional ::Gauge::Messages::StepExecutionEndingRequest, :stepExecutionEndingRequest, 9
      optional ::Gauge::Messages::ExecuteStepRequest, :executeStepRequest, 10
      optional ::Gauge::Messages::ExecutionEndingRequest, :executionEndingRequest, 11
      optional ::Gauge::Messages::StepValidateRequest, :stepValidateRequest, 12
      optional ::Gauge::Messages::StepValidateResponse, :stepValidateResponse, 13
      optional ::Gauge::Messages::ExecutionStatusResponse, :executionStatusResponse, 14
      optional ::Gauge::Messages::StepNamesRequest, :stepNamesRequest, 15
      optional ::Gauge::Messages::StepNamesResponse, :stepNamesResponse, 16
      optional ::Gauge::Messages::SuiteExecutionResult, :suiteExecutionResult, 17
      optional ::Gauge::Messages::KillProcessRequest, :killProcessRequest, 18
      optional ::Gauge::Messages::ScenarioDataStoreInitRequest, :scenarioDataStoreInitRequest, 19
      optional ::Gauge::Messages::SpecDataStoreInitRequest, :specDataStoreInitRequest, 20
      optional ::Gauge::Messages::SuiteDataStoreInitRequest, :suiteDataStoreInitRequest, 21
      optional ::Gauge::Messages::StepNameRequest, :stepNameRequest, 22
      optional ::Gauge::Messages::StepNameResponse, :stepNameResponse, 23
      optional ::Gauge::Messages::RefactorRequest, :refactorRequest, 24
      optional ::Gauge::Messages::RefactorResponse, :refactorResponse, 25
      optional ::Gauge::Messages::UnsupportedMessageResponse, :unsupportedMessageResponse, 26
    end

  end
end
