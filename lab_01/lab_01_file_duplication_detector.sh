#!/bin/bash

# 설명:
# 이 스크립트는 $1로 전달받은 디렉토리 경로의 파일들을 읽어 가장 많이 중복된 파일들의 이름을 출력한다. 
# 예를들어 image1, image2, image3가 중복되고 image4, image5가 중복될 경우 stdout 출력은 다음과 같을 것이다
# image1
# image2
# image3
#
# 중복파일 여부를 확인하는데에 md5sum 명령어가 사용될 수 있다.
# md5sum 명령어는 파일들의 MD5 체크섬 값을 출력하며, 내용이 동일한 파일은 같은 체크섬 값을 가질 것이다.
#
# Arguments:
#   $1: 중복여부를 체크할 파일들이 존재하는 디렉터리 경로
#
# Expected Output:
#   가장 많이 중복된 파일들의 이름이 \n (new line)으로 구분되어 stdout으로 출력된다
#
# Example Usage:
#   ./lab_01_file_duplication_detector.sh resources/detecting_duplicate_files


usage()
{
    local script_name=$(basename "$0")
    cat << END
Usage: $script_name [PATH]
Description: Check the files inside the [PATH] and print out list of filenames that is most frequently duplicated. Output file lists are separated by "\n"
Example usage:
    $script_name resources/detecting_duplicate_files
END

}

if [ "$#" -eq 0 ]; then
usage
exit 1
fi


directory=$1

##### YOUR CODE START #####  

##### YOUR CODE END #####