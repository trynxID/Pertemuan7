using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;
using System.Collections.ObjectModel;

namespace StudentForm
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ObservableCollection<Student> students = new ObservableCollection<Student>();
        public MainWindow()
        {
            InitializeComponent();
            dgStudents.ItemsSource = students;
            
        }
        private void ButtonSave_Click(object sender, RoutedEventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(txtNama.Text) && !string.IsNullOrWhiteSpace(txtAddress.Text) && !string.IsNullOrWhiteSpace(txtContact.Text))
            {
                students.Add(new Student { Name = txtNama.Text, Age = Convert.ToInt32(txtAge.Text), Address = txtAddress.Text, Contact = txtContact.Text });
                MessageBox.Show("Data Berhasil di Input", "Succesful");
                txtNama.Clear();
                txtAge.Text = "0";
                txtAddress.Clear();
                txtContact.Clear();
            }
            else
            {
                MessageBox.Show("Harap Mengisi Seluruh Data!", "Input Data",MessageBoxButton.OK ,MessageBoxImage.Error);
            }
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            txtNama.Clear();
            txtAge.Text="0";
            txtAddress.Clear();
            txtContact.Clear();
        }

        private void buttonSelect_Click(object sender, RoutedEventArgs e)
        {
            if (dgStudents.SelectedItem != null)
            {
                (dgStudents.SelectedItem as Student).Name = txtNama.Text;
                (dgStudents.SelectedItem as Student).Age = Convert.ToInt32(txtAge.Text);
                (dgStudents.SelectedItem as Student).Address = txtAddress.Text;
                (dgStudents.SelectedItem as Student).Contact = txtContact.Text;
            }
        }

        private void buttonDelete_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Apakah anda yakin ingin menghapusnya?", "Delete Data", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.No)
            {
                //Cancel Delete
            }
            else
            {
                students.RemoveAt(dgStudents.SelectedIndex);
            }
        }
    }
    public class Student : INotifyPropertyChanged
    {
        private string name;
        private int age;
        private string address;
        private string contact;
        public string Name
        {
            get { return this.name; }
            set
            {
                if (this.name != value)
                {
                    this.name = value;
                    this.NotifyPropertyChanged("Name");
                }
            }
        }
        public int Age
        {
            get { return this.age; }
            set
            {
                if (this.age != value)
                {
                    this.age = value;
                    this.NotifyPropertyChanged("Age");
                }
            }
        }
        public string Address
        {
            get { return this.address; }
            set
            {
                if (this.address != value)
                {
                    this.address = value;
                    this.NotifyPropertyChanged("Address");
                }
            }
        }
        public string Contact
        {
            get { return this.contact; }
            set
            {
                if (this.contact != value)
                {
                    this.contact = value;
                    this.NotifyPropertyChanged("Contact");
                }
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        public void NotifyPropertyChanged(string propName)
        {
            if (this.PropertyChanged != null)
                this.PropertyChanged(this, new PropertyChangedEventArgs(propName));
        }
    }
}
