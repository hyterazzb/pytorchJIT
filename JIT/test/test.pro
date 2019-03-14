QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0



SOURCES += \
        main.cpp


INCLUDEPATH +=C:/libtorch/include/torch/csrc/api/include/torch
INCLUDEPATH +=C:/libtorch/include/torch
INCLUDEPATH +=C:/libtorch/include
INCLUDEPATH +=C:/libtorch/include/torch/csrc/api/include


LIBS+=C:/libtorch/lib/c10.lib
LIBS+=C:/libtorch/lib/caffe2.lib
LIBS+=C:/libtorch/lib/caffe2_module_test_dynamic.lib
LIBS+=C:/libtorch/lib/clog.lib
LIBS+=C:/libtorch/lib/cpuinfo.lib
LIBS+=C:/libtorch/lib/libprotobuf.lib
LIBS+=C:/libtorch/lib/libprotobuf-lite.lib
LIBS+=C:/libtorch/lib/libprotoc.lib
LIBS+=C:/libtorch/lib/onnx.lib
LIBS+=C:/libtorch/lib/onnx_proto.lib
LIBS+=C:/libtorch/lib/onnxifi_dummy.lib
LIBS+=C:/libtorch/lib/onnxifi_loader.lib
LIBS+=C:/libtorch/lib/torch.lib


INCLUDEPATH +=C:/opencv/build/include
INCLUDEPATH +=C:/opencv/build/include/opencv2

LIBS+=C:/opencv/build/x64/vc15/lib/opencv_world400.lib


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
