﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyBanHangTapHoa
{
    public partial class QuanLyHH : Form
    {
        public QuanLyHH()
        {
            InitializeComponent();
        }
        public QuanLyHH(DbAccess db)
        {
            this.Db = db;
        }

        public DbAccess Db { get; set; }

        private void btnQuanLyHangHoa_Click(object sender, EventArgs e)
        {
            var themHH = new ThemHangHoa();
            themHH.ShowDialog();
            if(themHH.hh.CheckHHNotNull())
                DbAccess.
        }
    }
}
