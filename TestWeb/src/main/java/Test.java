public class Test {
	public static void main(String[] args) {
		
		int[] arr = {22,2,6,4,1,33,8};
		int tmp = 0;
		System.out.println(arr.toString());
		 int temp = 0;
		    for (int i = 0; i < arr.length - 1; i++) {
		        for (int j = 0; j < arr.length - 1 - i; j++) {
		            if (arr[j] > arr[j + 1]) {
		                temp = arr[j];
		                arr[j] = arr[j + 1];
		                arr[j + 1] = temp;
		            }
		        }
		    }
		
		for(int i=0;i<arr.length;i++) {
			System.out.println(arr[i]);
		}
		
	}
	
}
