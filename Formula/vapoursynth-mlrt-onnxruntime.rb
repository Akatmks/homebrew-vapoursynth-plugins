class VapoursynthMlrtOnnxruntime < Formula
  homepage "https://github.com/AmusementClub/vs-mlrt"
  license "GPL-3.0-only"
  head "https://github.com/AmusementClub/vs-mlrt.git"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "vapoursynth"
  depends_on "onnxruntime"
  depends_on "onnx"
  depends_on "protobuf"

  def install
    Dir.chdir "vsort" do
      system "cmake", "-S", ".", "-B", "build", "-LA", *std_cmake_args, "-DCMAKE_CXX_STANDARD=20", "-DENABLE_CORMEL=ON"
      system "cmake", "--build", "build"
      system "cmake", "--install", "build"
    end
  end
end
