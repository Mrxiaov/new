import java.util.ArrayList;
import java.util.Scanner;

public class StudentManger {
    //主界面
    public static void main(String[] args) {
        ArrayList<Student> array = new ArrayList<Student>();
        while (true){
        System.out.println("--------欢迎来到主系统--------");
        System.out.println("1.添加学生");
        System.out.println("2.删除学生");
        System.out.println("3.修改学生");
        System.out.println("4.查看学生");
        System.out.println("5.退出");
        System.out.println("请输入你的选择：");

        Scanner sc = new Scanner(System.in);
        String line = sc.nextLine();



        switch (line){
            case "1":
               addStudent(array);
                break;
            case "2":
                deleteStudent(array);
                break;
            case "3":
                updateStudent(array);
                break;
            case "4":
                findAllStudent(array);
                break;
            case "5":
                System.out.println("谢谢使用");
                System.exit(0);
        }
        }
    }
    //添加学生
    public static void addStudent(ArrayList<Student> arrayList){
        //键盘录入学生对象所需要的数据，显示提示信息，提示要输入何种信息
        Scanner sc = new Scanner(System.in);
        String sid;

        while (true){
            System.out.println("请输入学生学号：");
            sid = sc.nextLine();

            boolean flag = isUsed(arrayList,sid);
            if (flag){
                System.out.println("学号重复");
            }else {
                break;
            }
        }

        System.out.println("请输入学生姓名");
        String name = sc.nextLine();
        System.out.println("请输入学生年龄");
        String age = sc.nextLine();
        System.out.println("请输入学生地址");
        String address = sc.nextLine();

        //创建学生对象，把键盘录入的数据赋值给学生对象
        Student s = new Student();
        s.setSid(sid);
        s.setName(name);
        s.setAge(age);
        s.setAddress(address);
        //将学生对象添加到集合中
        arrayList.add(s);
        //给出成功的提示
        System.out.println("添加学生成功");
    }

    public static boolean isUsed(ArrayList<Student> arrayList ,String sid){
        boolean flag = false;
        for (int i = 0; i<arrayList.size();i++){
            Student s = arrayList.get(i);
            if (s.getSid().equals(sid)){
                flag = true;
                break;
            }
        }
        return flag;
    }
    //查看学生
    public static void findAllStudent(ArrayList<Student> arrayList){
        if (arrayList.size()==0){
            System.out.println("无信息，请先添加数据");
            return;
        }
        System.out.println("学号\t姓名\t年龄\t地址");
        for (int i=0;i<arrayList.size();i++){
            Student s = arrayList.get(i);
            System.out.println(s.getSid()+"\t"+s.getName()+"\t"+s.getAge()+"岁"+"\t"+s.getAddress());
        }
    }
    //删除学生
    public static void deleteStudent(ArrayList<Student> arrayList){
        Scanner sc = new Scanner(System.in);

        System.out.println("请输入你要删除的学生学号");
        String sid = sc.nextLine();

        int index = -1;

        for(int i= 0;i<arrayList.size();i++){
            Student s = arrayList.get(i);
            if (s.getSid().equals(sid)){
                index = i;
                break;
            }
        }
        if (index == -1){
            System.out.println("该信息不存在!,请重新输入");
        }else {
            arrayList.remove(index);
            System.out.println("删除成功");
        }
    }
    //修改学生
    public static void updateStudent(ArrayList<Student> arrayList){
        Scanner sc = new Scanner(System.in);

        //键盘录入要修改的学生信息
        System.out.println("请输入你要修改的学生学号");
        String sid = sc.nextLine();
        System.out.println("请输入你要修改的学生姓名");
        String name = sc.nextLine();
        System.out.println("请输入你要修改的学生年龄");
        String age = sc.nextLine();
        System.out.println("请输入你要修改的学生地址");
        String address = sc.nextLine();

        //创建学生对象
        Student s = new Student();
        s.setAddress(address);
        s.setAge(age);
        s.setName(name);
        s.setSid(sid);

        //遍历集合修改对应的学生信息
        for (int i=0; i<arrayList.size();i++){
            Student student =arrayList.get(i);
            if (student.getSid().equals(sid)){
                arrayList.set(i,s);
                break;
            }
        }
        //给出提示
        System.out.println("修改成功！");
    }
}

