using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataUtil
/// </summary>
public class DataUtil
{
    SqlConnection con;
    public DataUtil()
    {
        string strConnect = @"Data Source=ADMIN\SQLEXPRESS;;Initial Catalog=qlkhachsan;Integrated Security=True";
        con = new SqlConnection(strConnect);
    }

    // Lấy ra danh sách  bảng admin
    public List<admins> getAdmins()
    {
        List<admins> li = new List<admins>();
        string strSql = "select*from admins";
        con.Open();
        SqlCommand cmd = new SqlCommand(strSql, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            admins a = new admins();
            a.admin_id = (int)rd["admin_id"];
            a.phone = (string)rd["phone"];
            a.password = (string)rd["password"];
            a.email = (string)rd["email"];
            a.address = (string)rd["address"];
            a.avatar = (string)rd["avatar"];

            li.Add(a);
        }
        con.Close();
        return li;
    }

    //Thêm admin
    public void Themadmin(admins a)
    {
        con.Open();
        String strSql = "insert into admins values(@p,@pa,@e,@ad,@av)";
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("p", a.phone);
        cmd.Parameters.AddWithValue("pa", a.password);
        cmd.Parameters.AddWithValue("e", a.email);
        cmd.Parameters.AddWithValue("ad", a.address);
        cmd.Parameters.AddWithValue("av", a.avatar);

        cmd.ExecuteNonQuery();
        con.Close();
    }

    //Xóa admin
    public void Xoaadmin(int admin_id)
    {
        con.Open();
        String strSql = "delete from admins where admin_id=@admin_id";
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("admin_id", admin_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    //Lấy ra 1 Admin
    public admins Layra1admin(int admin_id)
    {
        List<admins> li = new List<admins>();
        string strSql = "select*from admins where admin_id=@admin_id";
        con.Open();
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("admin_id", admin_id);
        admins a = null;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            a = new admins();
            a.admin_id = (int)rd["admin_id"];
            a.phone = (string)rd["phone"];
            a.password = (string)rd["password"];
            a.email = (string)rd["email"];
            a.address = (string)rd["address"];
            a.avatar = (string)rd["avatar"];

        }
        con.Close();
        return a;
    }

    //Cập nhật admin
    public void Capnhatadmin(admins a)
    {
        con.Open();
        if (a.avatar != null)
        {
            string strSql = "update admins set phone=@p,password=@pa,email=@e,address=@ad,avatar=@av where admin_id=@admin_id";
            SqlCommand cmd = new SqlCommand(strSql, con);
            cmd.Parameters.AddWithValue("p", a.phone);
            cmd.Parameters.AddWithValue("pa", a.password);
            cmd.Parameters.AddWithValue("e", a.email);
            cmd.Parameters.AddWithValue("ad", a.address);
            cmd.Parameters.AddWithValue("av", a.avatar);
            cmd.Parameters.AddWithValue("admin_id", a.admin_id);
            cmd.ExecuteNonQuery();
        }
        else
        {
            string strSql = "update admins set phone=@p,password=@pa,email=@e,address=@ad where admin_id=@admin_id";
            SqlCommand cmd = new SqlCommand(strSql, con);
            cmd.Parameters.AddWithValue("p", a.phone);
            cmd.Parameters.AddWithValue("pa", a.password);
            cmd.Parameters.AddWithValue("e", a.email);
            cmd.Parameters.AddWithValue("ad", a.address);
            cmd.Parameters.AddWithValue("admin_id", a.admin_id);
            cmd.ExecuteNonQuery();
        }

        con.Close();
    }
 

    //Phần loại phòng
    //Lấy ra danh sách loại Phòng ( room_types)
    public List<room_types> getRoom_types()
    {
        List<room_types> li = new List<room_types>();
        string strSql = "select*from room_types";
        con.Open();
        SqlCommand cmd = new SqlCommand(strSql, con);
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            room_types rt = new room_types();
            rt.room_type_id = (int)rd["room_type_id"];
            rt.room_type_name = (string)rd["room_type_name"];

            li.Add(rt);
        }
        con.Close();
        return li;
    }

    //Thêm 1 loại phòng
    public void addroom_types(room_types rt)
    {
        con.Open();
        String strSql = "insert into room_types values(@name)";
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("name", rt.room_type_name);

        cmd.ExecuteNonQuery();
        con.Close();
    }

    //Xóa một loại phòng
    public void deleteRoom_types(int room_type_id)
    {
        con.Open();
        String strSql = "delete from room_types where room_type_id=@room_type_id";
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("room_type_id", room_type_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    //Lấy ra 1 phòng
    public room_types Layra1phong(int room_type_id)
    {
        List<room_types> li = new List<room_types>();
        string strSql = "select*from room_types where room_type_id=@room_type_id";
        con.Open();
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("room_type_id", room_type_id);
        room_types rt = null;
        SqlDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            rt = new room_types();
            rt.room_type_id = (int)rd["room_type_id"];
            rt.room_type_name = (string)rd["room_type_name"];
        }
        con.Close();
        return rt;
    }

    //Cập nhật loại phòng
    public void Capnhatloaiphong(room_types rt)
    {
        con.Open();
        string strSql = "update room_types set room_type_name=@name where room_type_id=@room_type_id";
        SqlCommand cmd = new SqlCommand(strSql, con);
        cmd.Parameters.AddWithValue("name", rt.room_type_name);
        cmd.Parameters.AddWithValue("room_type_id", rt.room_type_id);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}