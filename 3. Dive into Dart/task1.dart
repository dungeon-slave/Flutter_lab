void main(List<String> args) {
    int numCourses = 5;
    List<List<int>> prerequisites = [[1,0], [2,1], [4,3], [5,4], [3,2]];
    bool result = checkConstraints(numCourses, prerequisites) ? checkFeasibility(numCourses, prerequisites) : false;
    
    print(result);
}

//Feasibility - выполнимость, осуществимость
bool checkFeasibility(int numCourses, List<List<int>> prerequisites) { 
    while (numCourses > 1) {
        if(getPrerequisiteIndex([numCourses - 1, numCourses - 2], prerequisites) == -1) {
            return false;  
        }
        numCourses--;
    }

    return true;
}

int getPrerequisiteIndex(List<int> currPrerequisite, List<List<int>> prerequisites)
{
    int index = -1;
    int repeatCount = 0;

    for (var i = 0; i < prerequisites.length; i++) {
        if (prerequisites[i][0] == currPrerequisite[0] && 
        prerequisites[i][1] == currPrerequisite[1]) {
            index = repeatCount == 0 ? i : -1;
        }
    }

    return index;
}

bool checkConstraints(int numCourses, List<List<int>> prerequisites) {
    if (!((numCourses >= 1 && numCourses <= 2000) || 
    (prerequisites.length >= 0 && prerequisites.length <= 5000))) {
        return false;
    }
    else {
        for (var i = 0; i < prerequisites.length; i++) {
            if (!(prerequisites[i].length == 2 && 
            (prerequisites[i][0] >= 0 && prerequisites[i][0] <= numCourses) && (prerequisites[i][1] >= 0 && prerequisites[i][1] <= numCourses))) {
                return false;
            }
        }
    }

    return true;
}
