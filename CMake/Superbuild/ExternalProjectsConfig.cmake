##############################################################################
#
# Library:   TubeTK
#
# Copyright 2010 Kitware Inc. 28 Corporate Drive,
# Clifton Park, NY, 12065, USA.
#
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
##############################################################################

# See https://github.com/KitwareMedical/TubeTK/wiki/Dependencies

# Cppcheck version 1.61
set( Cppcheck_URL
  ${github_protocol}://github.com/danmar/cppcheck.git )
set( Cppcheck_HASH_OR_TAG 1.61 )

# Common Toolkit snapshot 2014-01-03
set( CTK_URL ${github_protocol}://github.com/commontk/CTK.git )
set( CTK_HASH_OR_TAG cb53ac3a1906e7a9535e8c7920a6436c5ad23b4b )

# TubeTK Image Viewer snapshot 2015-01-09
set( ImageViewer_URL ${github_protocol}://github.com/KitwareMedical/ImageViewer.git )
set( ImageViewer_HASH_OR_TAG e29dd50d388e3f30e97b78c0c98c8fd31c7b1889 )

# Insight Segmentation and Registration Toolkit
set( ITK_URL ${github_protocol}://github.com/Slicer/ITK.git )
set( ITK_HASH_OR_TAG f5e429abeba93b773ec52b8f012e16de338bcaaf )

# JsonCpp snapshot 2014-04-15 r276
# ${svn_protocol}://svn.code.sf.net/p/jsoncpp/code/trunk/jsoncpp )
set( JsonCpp_URL http://midas3.kitware.com/midas/download/bitstream/366544/JsonCpp_r276.tar.gz )
set( JsonCpp_HASH_OR_TAG 192f0cf2b00798d4f4fb29c99a3aa83c )

# KWStyle snapshot 2012-04-19 04:05:19
set( KWStyle_URL
  ${git_protocol}://github.com/Kitware/KWStyle.git )
set( KWStyle_HASH_OR_TAG 9711cdbd35af37a9abcdd8b1dbd8e2b5a4ac8779 )

# LIBSVM version 3.17 (minimum version 3.1)
set( LIBSVM_URL
  http://www.csie.ntu.edu.tw/~cjlin/libsvm/oldfiles/libsvm-3.17.tar.gz )
set( LIBSVM_HASH_OR_TAG 67f8b597ce85c1f5288d7838e57ea28a )

# Slicer Execution Model snapshot 2014-05-13
set( SlicerExecutionModel_URL
  ${github_protocol}://github.com/Slicer/SlicerExecutionModel.git )
set( SlicerExecutionModel_HASH_OR_TAG a6616b527dc0dced26256f6a303174a98f373f6f )

# Visualization Toolkit (3D Slicer fork) snapshot 2013-08-20 06:54:45
set( VTK_URL ${github_protocol}://github.com/Slicer/VTK.git )
set( VTK_HASH_OR_TAG ea7cdc4e0b399be244e79392c67fed068c33e454 )
