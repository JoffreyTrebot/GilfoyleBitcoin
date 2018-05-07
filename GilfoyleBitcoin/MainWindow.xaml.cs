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
using CoinMarketCap;
using System.Net;
using System.Threading;
using System.Text.RegularExpressions;
using System.Timers;

namespace GilfoyleBitcoin
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private double _before=0;
        private double _after;
        private double _valueUser = 0;
        private bool? _toggle;
        public MainWindow()
        {
            InitializeComponent();
            System.Timers.Timer aTimer = new System.Timers.Timer();
            aTimer.Elapsed += new ElapsedEventHandler(Bitcoin);
            aTimer.Interval = 1000;
            aTimer.Enabled = true;
        }


        public void Bitcoin(object sender, ElapsedEventArgs e)
        {
            this._before = this._after;
           

            var uri = String.Format(@"https://blockchain.info/tobtc?currency=USD&value={0}", 1);

            WebClient client = new WebClient();

            client.UseDefaultCredentials = true;

            var data = client.DownloadString(uri);

            var result = 1 / Convert.ToDouble(data.Replace('.', ','));

            
            

            bitcoins.Dispatcher.BeginInvoke(new Action(() =>
            {             
                bitcoins.Content = Math.Round(result, 2);
            }));

            this._after = result;

            toggle.Dispatcher.BeginInvoke(new Action(() =>
            {
                this._toggle = toggle.IsChecked;   
            }));

            if (this._before != 0 && this._toggle != true)
            {
                Sound(this._before);
            }



        }

        public void Sound(double beforeA)
        {
            if(this._valueUser != 0 && this._before != 0)
            {
                double before = beforeA;
                double after = this._after;

                if ((before < this._valueUser && after > this._valueUser) || (before > this._valueUser && after < this._valueUser))
                {
                    System.Media.SoundPlayer player = new System.Media.SoundPlayer(@"C:\Users\trebo\Downloads/NapalmDeath-YouSuffer.wav");
                    player.Play();
                }
            }
            
        }

        private void btn_close_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        
        private void ValueUser_TextChanged(object sender, TextChangedEventArgs e)
        {

            string x = ValueUser.Text;
            int length = x.Length;
            if (ValueUser.Text != "" && length > 3)
            {
                this._valueUser = Convert.ToDouble(ValueUser.Text);
            }
            else
            {
                this._valueUser = 0;
            }
        }

        private void ValueUser_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
