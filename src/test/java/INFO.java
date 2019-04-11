import sun.applet.Main;

/**
 * Create By dingchao
 * on 2019/4/10 0010
 */
public class INFO {
    public INFO() {
        int nul = 1;
    }

    public INFO e(){
        System.out.println(0);
        return null;
    }
    public static INFO a(){
        System.out.println(1);
        return null;
    }
    public static INFO b(){
        System.out.println(2);
        return null;
    }
    public static INFO c(){
        System.out.println(3);
        return null;
    }
    public static INFO d(){
        System.out.println(4);
        return null;
    }

    public static void main(String[] args) {
        INFO.a().b().c().d();
        //INFO.a().b().c().d().e();//会报空指针异常
        //INFO.a().e().c();//会报空指针异常
    }
}
