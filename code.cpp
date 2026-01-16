#include <iostream>
#include <vector>
#include <algorithm>

class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {

        vector<vector<int>> result;
        int n = nums.size();

        sort(nums.begin() , nums.end());

        for(int i = 0; i < n; i++){

            if(i > 0 && nums[i] == nums[i - 1]) continue;

            int l = i + 1;
            int r = n - 1;

            while(l < r){

                int sum = nums[i] + nums[l] + nums[r];
                if(sum == 0){

                    result.push_back({nums[i], nums[l], nums[r]});

                    while(l < r && nums[l] == nums[l+1] ) l++;
                    while(l < r && nums[r] == nums[r-1]) r--;

                    l++;
                    r--;
                } 

                else if(sum <0) l++;

                else r--;
            }
        }
        return result;
        
    }
};

int main(){
    vector<int> nums={-1,0,1,2,-1,-4};
    Solution obj;
    vector<vector<int>> ans;
    ans=obj.threeSum(nums);
    for(int i=0;i<ans.size();i++){
        for(int j=0;j<ans[i].size();j++){
            cout<<ans[i][j]<<" ";
        }
        cout<<endl;
    }
}