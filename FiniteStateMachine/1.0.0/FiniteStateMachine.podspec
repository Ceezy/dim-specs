Pod::Spec.new do |s|
    s.name             = "FiniteStateMachine"
    s.version          = "1.0.0"
    s.summary          = "Finite state machine."
    s.homepage         = "https://github.com/Ceezy/FiniteStateMachine"
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { "Ceezy Chen" => "ceezychen@gmail.com" }
    s.source           = { :git => "https://github.com/Ceezy/FiniteStateMachine.git", :tag => s.version }
#    s.social_media_url = ''

    s.platform     = :ios, '8.0'

    s.public_header_files = 'Classes/*.h'
    s.source_files = 'Classes/*.{h,m}'

    s.requires_arc = false

    s.subspec 'ds' do |ss|
        ss.source_files = 'ds/*.{h,c}'
        ss.public_header_files = 'ds/*.h'
    end

    s.subspec 'fsm' do |ss|
        ss.source_files = 'fsm/*.{h,c}'
        ss.public_header_files = 'fsm/*.h'
	ss.dependency 'FiniteStateMachine/ds'
    end
end
