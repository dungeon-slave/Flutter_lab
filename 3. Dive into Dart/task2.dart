void main(List<String> args) {
    List<int> nums = [-2,1,-3,4,-1,2,1,-5,4];
    print(checkConstraints(nums) ? getLargestSum(nums) : "Wrong nums!");
}

int getLargestSum(List<int> nums) {
    int largestSum = 0;

    for (var i = 0; i < nums.length; i++) {
        int currSum = getMaxSubSum(nums.sublist(i, nums.length));
        if (currSum > largestSum) {
            largestSum = currSum;
        }
    }

    return largestSum;
}

int getMaxSubSum(List<int> nums) {
    int sum = 0;
    int size = 1;

    do {
        int currSum = 0;
        for (var i = 0; i < size; i++) {
            currSum += nums[i];
        }
        if (currSum > sum) {
            sum = currSum;
        }
        size++;
    } while (size <= nums.length);


    return sum;
}

bool checkConstraints(List<int> nums) {
    if (!(nums.length >= 1 && nums.length <= 105)) {
        return false;
    }
    else {
        for (var i = 0; i < nums.length; i++) {
            if (!(nums[i] >= -104 && nums[i] <= 104)) {
                return false;
            }
        }
    }

    return true;
}
