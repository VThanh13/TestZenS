import 'dart:io';
void main() {
  minimaxsum();
}

minimaxsum(){
  var input = stdin.readLineSync();
  var array_string = input?.split(' ');
  if(array_string != null){
    List <int> array = array_string.map(int.parse).toList();
    int sum = 0;
    int min = array[0];
    int max = array[0];
    for(int i =0;i<5;i++){
      sum +=array[i];
      if(min > array[i]){
        min = array[i];
      }
      if(max < array[i]){
        max =  array[i];
      }

    }
    String sumMin = (sum - max).toString();
    String sumMax = (sum - min).toString();
    print(sumMin +" "+ sumMax);
  }

}

