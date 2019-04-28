import java.util.Vector;

/**
 * Create By dingchao
 * on 2019/4/15 0015
 */
public class Test1 {
    public boolean getSymbol(Vector<String> decisionProperty) {
        boolean isFlag = false;
        int length = decisionProperty.size();
        Vector<String> distinctDecProperty = new Vector<String>();
        Vector<Boolean> flag = new Vector<Boolean>();
        int i = 0;
        while (i < length) {
            flag.add(true);
            i++;
        }
        for (int j = 0; j < length; j++) {
            i = j + 1;
            int n = 1;
            while (i < length) {
                if (flag.get(i) == true) {
                    if (decisionProperty.get(j).equals(decisionProperty.get(i))) {
                        flag.set(i, false);
                        n++;
                    } else {
                        i++;
                    }
                } else {
                    i++;
                }
            }
            if (flag.get(j) == true) {
                distinctDecProperty.add(decisionProperty.get(j));
            }
            if (n >= length / 2) {
                isFlag = true;
            }
        }
        if (distinctDecProperty.size() == decisionProperty.size()){
            isFlag = false;
        }
        System.out.println(distinctDecProperty + "  " + decisionProperty);
        return isFlag;
    }

    public static void main(String[] args) {
        Test1 test1 = new Test1();
        Vector<String> vector = new Vector<String>();
        vector.add("病人");
        vector.add("头痛");
        vector.add("胸口痛");
        vector.add("体温");
        vector.add("流感");
        vector.add("a1");
        vector.add("是");
        vector.add("是");
        vector.add("正常");
        vector.add("否");
        vector.add("a2");
        vector.add("是");
        vector.add("是");
        vector.add("很高");
        vector.add("是");
        vector.add("a3");
        vector.add("是");
        vector.add("否");
        vector.add("很高");
        vector.add("正常");
        vector.add("a4");
        vector.add("是");
        vector.add("很高");
        vector.add("否");
        vector.add("否");
        boolean result = test1.getSymbol(vector);
        System.out.println(result);
    }
}
