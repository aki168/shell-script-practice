# echo "=== 將目前執行 process 的 PID 依照數字大小排序，取出前 10 名 ==="
# ps | awk '{print $1}' | sort -rn | head -10

# # 變數宣告及刪除其值
pathName=demo.sh
echo '印出所在檔案'${pathName}
unset pathName
echo '路徑刪除'${pathName}

# # 計算
result=`expr 10 + 2` # 要保持空格
echo "結果是:$result"

# # 流程控制
purchasedAmount=900
avaiableAmount=1000

# 記得比較條件需要放在 [] 中，前後要留空白
# -le : lees equal / -lt : lees than
# -ge : greater equal / -gt : greater than
if [ $purchasedAmount -lt $avaiableAmount ];then   
echo "購買成功"
elif [ $purchasedAmount == $avaiableAmount ];then
echo "購買成功，但餘額已歸零。建議儲值"
elif [ $purchasedAmount -ge $avaiableAmount ];then
echo "餘額不足以支付"
fi

# # switch case
fruit='apple'
case $fruit in
  orange*) echo "是橘子!"
            ;;
  apple*) echo "是蘋果!"
            ;;
  banana*) echo "是香蕉!"
            ;;
esac

# # for 迴圈
for loop in 1 2 3;do 
  echo "數字:$loop"
done

# # until 迴圈 
echo "從 0 印出數字直到 6" 
counter=0
until [ $counter -gt 6 ];do
  echo $counter
  counter=`expr $counter + 1`
done

# 函式
function printMyName () {
# Hi, My name is Aki Cheng
  echo "Hi, My name is ${1} ${2}"
  echo "有幾個參數: $# 個" 
  echo "列出所有參數 $*"  
}
printMyName 'Aki' 'Cheng' # 以 '' 以及空格傳入參數

# # 保留字
# 指令	描述	
# $0	目前的檔案檔名	
# $n	n 從 1 開始，代表第幾個參數	
# $#	傳遞到程式或函式目前有幾個參數	
# $*	傳遞到程式或函式所有參數	
# $@	類似 $* 但是在被雙引號包含時有些許不同	
# $?	上一個指令退出狀態或是函式的返回值	
# $$	目前 process PID

echo "$$"
