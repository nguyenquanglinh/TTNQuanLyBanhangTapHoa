﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QuanLyBanHangTapHoa.QLNV
{
    public partial class FormQLNV : Form
    {
        public FormQLNV()
        {
            InitializeComponent();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            this.Hide();
            FormThemNV themnv = new FormThemNV();
            themnv.ShowDialog();
        }

        private void btnsua_Click(object sender, EventArgs e)
        {
            this.Hide();
            FormSuaNV  suanv = new FormSuaNV();
            suanv.ShowDialog();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            this.Hide();
            FormXoaNV xoanv = new FormXoaNV();
            xoanv.ShowDialog();
        }

        private void FormQLNV_Load(object sender, EventArgs e)
        {
           
            SqlConnection conn = new SqlConnection(DbAccess.strConnString);
            SqlCommand cmd = new SqlCommand("select * from NhanVien", conn);
            try
            {
                conn.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                BindingSource source = new BindingSource();
                source.DataSource = sdr;
                dataGridView1.DataSource = source;
                conn.Close();
            }
            catch
            {
                MessageBox.Show("Lỗi");
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
