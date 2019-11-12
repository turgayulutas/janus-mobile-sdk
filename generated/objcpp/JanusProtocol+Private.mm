// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from janus-client.djinni

#import "JanusProtocol+Private.h"
#import "JanusProtocol.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#import "JanusBundle+Private.h"
#import "JanusJanusConf+Private.h"
#import "JanusPlatform+Private.h"
#import "JanusProtocolDelegate+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface JanusProtocolCppProxy : NSObject<JanusProtocol>

- (id)initWithCpp:(const std::shared_ptr<::Janus::Protocol>&)cppRef;

@end

@implementation JanusProtocolCppProxy {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::Janus::Protocol>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::Janus::Protocol>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)name {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->name();
        return ::djinni::String::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)init:(nullable id<JanusJanusConf>)conf
    platform:(nullable JanusPlatform *)platform
    delegate:(nullable id<JanusProtocolDelegate>)delegate {
    try {
        _cppRefHandle.get()->init(::djinni_generated::JanusConf::toCpp(conf),
                                  ::djinni_generated::Platform::toCpp(platform),
                                  ::djinni_generated::ProtocolDelegate::toCpp(delegate));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)dispatch:(nonnull NSString *)command
         payload:(nullable JanusBundle *)payload {
    try {
        _cppRefHandle.get()->dispatch(::djinni::String::toCpp(command),
                                      ::djinni_generated::Bundle::toCpp(payload));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)hangup {
    try {
        _cppRefHandle.get()->hangup();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)close {
    try {
        _cppRefHandle.get()->close();
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)onOffer:(nonnull NSString *)sdp
        context:(nullable JanusBundle *)context {
    try {
        _cppRefHandle.get()->onOffer(::djinni::String::toCpp(sdp),
                                     ::djinni_generated::Bundle::toCpp(context));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)onAnswer:(nonnull NSString *)sdp
         context:(nullable JanusBundle *)context {
    try {
        _cppRefHandle.get()->onAnswer(::djinni::String::toCpp(sdp),
                                      ::djinni_generated::Bundle::toCpp(context));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)onIceCandidate:(nonnull NSString *)mid
                 index:(int32_t)index
                   sdp:(nonnull NSString *)sdp
                    id:(int64_t)id {
    try {
        _cppRefHandle.get()->onIceCandidate(::djinni::String::toCpp(mid),
                                            ::djinni::I32::toCpp(index),
                                            ::djinni::String::toCpp(sdp),
                                            ::djinni::I64::toCpp(id));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (void)onIceCompleted:(int64_t)id {
    try {
        _cppRefHandle.get()->onIceCompleted(::djinni::I64::toCpp(id));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

class Protocol::ObjcProxy final
: public ::Janus::Protocol
, private ::djinni::ObjcProxyBase<ObjcType>
{
    friend class ::djinni_generated::Protocol;
public:
    using ObjcProxyBase::ObjcProxyBase;
    std::string name() override
    {
        @autoreleasepool {
            auto objcpp_result_ = [djinni_private_get_proxied_objc_object() name];
            return ::djinni::String::toCpp(objcpp_result_);
        }
    }
    void init(const std::shared_ptr<::Janus::JanusConf> & c_conf, const std::shared_ptr<::Janus::Platform> & c_platform, const std::shared_ptr<::Janus::ProtocolDelegate> & c_delegate) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() init:(::djinni_generated::JanusConf::fromCpp(c_conf))
                                                  platform:(::djinni_generated::Platform::fromCpp(c_platform))
                                                  delegate:(::djinni_generated::ProtocolDelegate::fromCpp(c_delegate))];
        }
    }
    void dispatch(const std::string & c_command, const std::shared_ptr<::Janus::Bundle> & c_payload) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() dispatch:(::djinni::String::fromCpp(c_command))
                                                       payload:(::djinni_generated::Bundle::fromCpp(c_payload))];
        }
    }
    void hangup() override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() hangup];
        }
    }
    void close() override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() close];
        }
    }
    void onOffer(const std::string & c_sdp, const std::shared_ptr<::Janus::Bundle> & c_context) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onOffer:(::djinni::String::fromCpp(c_sdp))
                                                      context:(::djinni_generated::Bundle::fromCpp(c_context))];
        }
    }
    void onAnswer(const std::string & c_sdp, const std::shared_ptr<::Janus::Bundle> & c_context) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onAnswer:(::djinni::String::fromCpp(c_sdp))
                                                       context:(::djinni_generated::Bundle::fromCpp(c_context))];
        }
    }
    void onIceCandidate(const std::string & c_mid, int32_t c_index, const std::string & c_sdp, int64_t c_id) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onIceCandidate:(::djinni::String::fromCpp(c_mid))
                                                               index:(::djinni::I32::fromCpp(c_index))
                                                                 sdp:(::djinni::String::fromCpp(c_sdp))
                                                                  id:(::djinni::I64::fromCpp(c_id))];
        }
    }
    void onIceCompleted(int64_t c_id) override
    {
        @autoreleasepool {
            [djinni_private_get_proxied_objc_object() onIceCompleted:(::djinni::I64::fromCpp(c_id))];
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto Protocol::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    if ([(id)objc isKindOfClass:[JanusProtocolCppProxy class]]) {
        return ((JanusProtocolCppProxy*)objc)->_cppRefHandle.get();
    }
    return ::djinni::get_objc_proxy<ObjcProxy>(objc);
}

auto Protocol::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    if (auto cppPtr = dynamic_cast<ObjcProxy*>(cpp.get())) {
        return cppPtr->djinni_private_get_proxied_objc_object();
    }
    return ::djinni::get_cpp_proxy<JanusProtocolCppProxy>(cpp);
}

}  // namespace djinni_generated

@end
