/*M///////////////////////////////////////////////////////////////////////////////////////
//
//  IMPORTANT: READ BEFORE DOWNLOADING, COPYING, INSTALLING OR USING.
//
//  By downloading, copying, installing or using the software you agree to this license.
//  If you do not agree to this license, do not download, install,
//  copy or use the software.
//
//
//                           License Agreement
//                For Open Source Computer Vision Library
//
// Copyright (C) 2000-2008, Intel Corporation, all rights reserved.
// Copyright (C) 2009, Willow Garage Inc., all rights reserved.
// Third party copyrights are property of their respective owners.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//   * Redistribution's of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//
//   * Redistribution's in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//
//   * The name of the copyright holders may not be used to endorse or promote products
//     derived from this software without specific prior written permission.
//
// This software is provided by the copyright holders and contributors "as is" and
// any express or implied warranties, including, but not limited to, the implied
// warranties of merchantability and fitness for a particular purpose are disclaimed.
// In no event shall the Intel Corporation or contributors be liable for any direct,
// indirect, incidental, special, exemplary, or consequential damages
// (including, but not limited to, procurement of substitute goods or services;
// loss of use, data, or profits; or business interruption) however caused
// and on any theory of liability, whether in contract, strict liability,
// or tort (including negligence or otherwise) arising in any way out of
// the use of this software, even if advised of the possibility of such damage.
//
//M*/

#if !defined CUDA_DISABLER

#include "opencv2/core/cuda/common.hpp"
#include "opencv2/core/cuda/vec_traits.hpp"
#include "opencv2/core/cuda/vec_math.hpp"
#include "opencv2/core/cuda/saturate_cast.hpp"
#include "opencv2/core/cuda/border_interpolate.hpp"

namespace cv { namespace cuda { namespace device
{
    namespace imgproc
    {
        //simplified version of std::pair
        template <typename t1, typename t2>
        class pair
        {
            public:

            typedef t1 first_type;
            typedef t2 second_type;
            
            __host__ __device__ pair()
            {

            }

            __host__ __device__ pair(const t1& x, const t2& y) : first(x), second(y)
            {

            }

            template <typename u1, typename u2>
            __host__ __device__ pair(const pair<u1, u2> & p) : first(p.first), second(p.second)
            {

            }


            first_type first;
            second_type second;
        };

        template <typename t1, typename t2> __host __device__ inline pair<t1, t2> make_pair(t1 x, t2 y)
        {
            return ( pair<t1, t2>(x, y) );
        }

    } // namespace imgproc
}}} // namespace cv { namespace cuda { namespace cudev {


namespace cv { namespace cuda{

    void test(InputArray images)
    {
        auto p = device::imgproc::make_pair(0, 0);
    }
}}


#endif /* CUDA_DISABLER */
