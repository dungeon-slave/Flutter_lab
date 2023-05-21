void main(List<String> args) {

}

List<int> getIncreasingSubsequence(List<int> sequence)
{
    List<int> subSequence = [];

    return subSequence;
}

bool checkConstraints(List<int> nums)
{
    if (nums.length >= 1 && nums.length <= 2500) 
    {
        for (var i = 0; i < nums.length; i++) {
            if (!(nums[i] >= -104 && nums[i] <= 104)) {
                return false;
            }
        }
        return true;
    }
    else
    {
        return false;
    }
}
