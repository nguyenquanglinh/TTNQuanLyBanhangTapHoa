﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanHangTapHoa
{
    public class DbAccess
    {
        SqlConnection connection = new SqlConnection();
        string strConnString = "Data Source =" + "DESKTOP-VLM31NH\\SQLEXPRESS ;Database = QuanLyBanHangTapHoa; Integrated Security=SSPI;";
        #region hanghoa
        public void createConn()
        {
            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.ConnectionString = strConnString;
                    connection.Open();
                }
            }
            catch
            {

            }
        }
        public void GetDataTableHangHoa(DataGridView dataGridView1)
        {
            try
            {
                string query = "select * from HangHoa";
                SqlDataAdapter dataadapter = new SqlDataAdapter(query, connection);
                DataSet ds = new DataSet();
                dataadapter.Fill(ds, "data");
                dataGridView1.DataSource = ds;
                dataGridView1.DataMember = "data";
            }
            catch
            {
            }
        }

        public DataTable readDatathroughtAdapter(string query)
        {
            DataTable ds = new DataTable();
            try
            {
                if (connection.State == ConnectionState.Closed)
                {
                    createConn();
                }
                SqlDataAdapter dataadapter = new SqlDataAdapter(query, connection);

                dataadapter.Fill(ds);

            }
            catch
            {
            }
            return ds;
        }

        public bool ThemHH(HangHoa ch)
        {
            if (ch == null) return false;
            try
            {
                //MaHH], [TenHH], [MaLoai
                string sql = "insert into " + "HangHoa(MaHH, TenHH, MaLoai) "
            + "values(@MaHH, @TenHH, @MaLoai)";
                using (SqlCommand insertCommand = new SqlCommand(sql, connection))
                {
                    insertCommand.Parameters.AddWithValue("@MaHH", ch.MaHH);
                    insertCommand.Parameters.AddWithValue("@TenHH", ch.TenHH);
                    insertCommand.Parameters.AddWithValue("@MaLoai", ch.MaLoai);
                    if (insertCommand.ExecuteNonQuery() == 1)
                    {
                        return true;
                    }
                }
            }
            catch
            {
                MessageBox.Show("lỗi phát sinh khi thêm hàng hóa.\nThử lại","Cảnh báo",MessageBoxButtons.OK);
            }
            return false;

        }

        public bool SuaHH(HangHoa ch, string id)
        {
            if (ch == null) return false;
            try
            {
                //var s = Convert.ToDateTime(ch.NgayVao);
                //var x = s.Day + "/" + s.Month + "/" + s.Year;
                //var r = Convert.ToDateTime(ch.NamSinh);
                //var y = r.Day + "/" + r.Month + "/" + r.Year;
                var sql = "update HangHoa set MaHH ='" +
                      @ch.MaHH +
                      "', TenHH='" + @ch.TenHH +
                      "', MaLoai='" + @ch.MaLoai +
                      "' where soCMNDChuHo='" + id + "'";
                using (SqlCommand updateCommand = new SqlCommand(sql, connection))
                {
                    if (updateCommand.ExecuteNonQuery() == 1)
                    {
                        return true;
                    }
                    return false;
                }
            }
            catch
            {
                return false;
            }


        }

        public bool XoaHH(string cmnd)
        {
            try
            {
                String sql = "delete HH where MaHH='" + cmnd + "'";
                using (SqlCommand insertCommand = new SqlCommand(sql, connection))
                {
                    if (insertCommand.ExecuteNonQuery() == 1)
                    {
                        return true;
                    }
                }
            }
            catch
            {

            }
            return false;
        }


        #endregion

        public void GetDataTableLoaiHangHoa(DataGridView dataGridView1)
        {
            try
            {
                string query = "select * from LoaiHH";
                SqlDataAdapter dataadapter = new SqlDataAdapter(query, connection);
                DataSet ds = new DataSet();
                dataadapter.Fill(ds, "data");
                dataGridView1.DataSource = ds;
                dataGridView1.DataMember = "data";
            }
            catch
            {
            }
        }
        public bool ThemLoaiHH(LoaiHH ch)
        {
            if (ch == null) return false;
            try
            {
                //MaHH], [TenHH], [MaLoai
                string sql = "insert into " + "LoaiHH(MaLoai, TenLoai,) "
            + "values(@MaHH, @TenHH, @MaLoai)";
                using (SqlCommand insertCommand = new SqlCommand(sql, connection))
                {
                    insertCommand.Parameters.AddWithValue("@MaLoai", ch.MaLoai);
                    insertCommand.Parameters.AddWithValue("@TenLoai", ch.TenLoai);
                    if (insertCommand.ExecuteNonQuery() == 1)
                    {
                        return true;
                    }
                }
            }
            catch
            {
                MessageBox.Show("lỗi phát sinh khi thêm loại hàng hóa.\nThử lại", "Cảnh báo", MessageBoxButtons.OK);
            }
            return false;

        }
        public bool SuaLoaiHH(LoaiHH ch, string id)
        {
            if (ch == null) return false;
            try
            {
                //var s = Convert.ToDateTime(ch.NgayVao);
                //var x = s.Day + "/" + s.Month + "/" + s.Year;
                //var r = Convert.ToDateTime(ch.NamSinh);
                //var y = r.Day + "/" + r.Month + "/" + r.Year;
                var sql = "update LoaiHH set MaLoai ='" +
                      @ch.MaLoai +
                      "', TenHH='" + @ch.TenLoai +
                      "' where soCMNDChuHo='" + id + "'";
                using (SqlCommand updateCommand = new SqlCommand(sql, connection))
                {
                    if (updateCommand.ExecuteNonQuery() == 1)
                    {
                        return true;
                    }
                    return false;
                }
            }
            catch
            {
                return false;
            }


        }
        public bool XoaLoaiHH(string cmnd)
        {
            try
            {
                String sql = "delete LoaiHH where MaLoai='" + cmnd + "'";
                using (SqlCommand insertCommand = new SqlCommand(sql, connection))
                {
                    if (insertCommand.ExecuteNonQuery() == 1)
                    {
                        return true;
                    }
                }
            }
            catch
            {

            }
            return false;
        }
    }
}
