unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, StdCtrls, DDSpinEdit, ExtCtrls, TeeProcs,
  Chart,Math, Spin, unit2;

type
  mas=array [1..100000] of double;
  matrix= array [1..100000, 1..3] of double;

  TForm1 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    DDSpinEdit3: TDDSpinEdit;
    DDSpinEdit4: TDDSpinEdit;
    DDSpinEdit6: TDDSpinEdit;
    DDSpinEdit7: TDDSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    DDSpinEdit8: TDDSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit2: TSpinEdit;
    Label10: TLabel;
    DDSpinEdit1: TDDSpinEdit;
    DDSpinEdit9: TDDSpinEdit;
    Label11: TLabel;
    SpinEdit1: TSpinEdit;
    DDSpinEdit10: TDDSpinEdit;
    Label12: TLabel;
    Chart4: TChart;
    Series4: TLineSeries;
    Chart3: TChart;
    LineSeries1: TLineSeries;
    Series1: TLineSeries;
    Series2: TLineSeries;
    DDSpinEdit2: TDDSpinEdit;
    Label1: TLabel;
    DDSpinEdit5: TDDSpinEdit;
    RadioGroup1: TRadioGroup;
    DDSpinEdit11: TDDSpinEdit;
    Label13: TLabel;
    Label14: TLabel;
    DDSpinEdit12: TDDSpinEdit;
    Chart5: TChart;
    Series3: TLineSeries;
    Chart6: TChart;
    LineSeries2: TLineSeries;
    DDSpinEdit13: TDDSpinEdit;
    Label15: TLabel;
    DDSpinEdit14: TDDSpinEdit;
    Label16: TLabel;
    DDSpinEdit15: TDDSpinEdit;
    Label17: TLabel;
    CheckBox1: TCheckBox;
    Series5: TLineSeries;
    Series6: TLineSeries;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  t_end:integer;
implementation


{$R *.dfm}
procedure  ReadExpData(var nE,tt:mas; t_end, dt:Double);
{
  Reading of experimental data as arrays: tE[0..200] -- time moments;
  E[0..N] -- values.
  Interpolation (linear) is applied to fill the array 'Vexp'.
}
var
     j,Max_j,nt_end,nt              :integer;
     k                     :double;
     E,tE                  :array[0..10000] of double;
     kkk                   :TextFile;
begin
 nt_end:=10*trunc(t_end);
 assignfile(kkk,'Fig 1b Mainenen  (noise).dat');  reset(kkk);
  j:=-1;
  repeat  j:=j+1;                                {reading}
    readln(kkk,tE[j],E[j]);
  until (eof(kkk));
  Max_j:=j;

 close(kkk);

  { Filling array 'Vmod' }

  nt:=-1;
  dt:=0.0001;
  repeat  nt:=nt+1;                    {creating new time mass}
    tt[nt]:=nt*dt;
    nE[nt]:=0;
  until  nt>=nt_end;



for nt:=0 to nt_end do begin                  {linear interpolation}
           for j:=0 to Max_j do  begin
if (tE[j+1]>tt[nt]*1000) and (tt[nt]*1000>tE[j]) then      begin
                      //if tt[nt]*1000>=tE[j+1] then  j:=j+1;
                      if nE[nt]=0 then  begin
                        // Form1.Series8.AddXY(tt[nt]*1000, (tE[j+1]-tE[j]));
                         k:=(E[j+1]-E[j])/(tE[j+1]-tE[j]);
                         nE[nt]:=k*tt[nt]*1000+E[j]-k*tE[j];    {pA & ms}
                                        end;
                                                 end;
                                 end;
                       end;
end;




procedure TForm1.Button2Click(Sender: TObject);
var
  C, gL, tau_m, VT, S, Vrest, Ia_IF, Ia_LIF, dt,
  nu_if, nu_lif,t, sigma_LIF, sigma_IF, VL,Vreset,noise,
  n_if, n_lif, IFpot,
  LIFpot, signal_IF, signal_LIF,noise_signal_IF,
  noise_signal_LIF, Tau, signal, corr_IF, corr_LIF,f_if, g_if, f_lif, g_lif,
  fg_if, fg_LIF,temp_V, IF_av_fr, LIF_av_fr, IF_av_q, LIF_av_q: double;
  N,i,j,delay: integer;
  V_IF, V_LIF: Matrix;
  aaa,bbb,ccc,ddd,eee,fff,hhh,sss,qqq,rrr,lll,nnn : Textfile;
  fr_IF, fr_LIF, q_IF, q_LIF, Value, time:mas;
begin


assignfile(ccc,'Potential1_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (ccc);
assignfile(hhh,'Potential2_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (hhh);
assignfile(sss,'Potential3_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (sss);
assignfile(qqq,'Potential4_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (qqq);
assignfile(rrr,'Potential5_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (rrr);
assignfile(lll,'Potential6_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (lll);
assignfile(nnn,'Potential7_150pA_275cm^2,10e-6_tau_0.0015s_VT_11.6.dat'); rewrite (nnn);

assignfile(nnn,'1s_LIFIN.dat'); rewrite (nnn);
assignfile(aaa,'1s_LIFOUT.dat'); rewrite (aaa);
assignfile(ddd,'2s_LIFIN.dat'); rewrite (ddd);
assignfile(bbb,'2s_LIFOUT.dat'); rewrite (bbb);
assignfile(eee,'3s_LIFIN.dat'); rewrite (eee);
assignfile(fff,'3s_LIFOUT.dat'); rewrite (fff);


Form1.Series1.Clear;
Form1.Series2.Clear;
Form1.LineSeries1.Clear;
Form1.Series4.Clear;
Form1.Series3.Clear;
Form1.LineSeries2.Clear;
Form1.Series5.Clear;
Form1.Series6.Clear;

tau_m:=Form1.DDSpinEdit5.Value;           //ms
C:=Form1.DDSpinEdit2.Value/1000;          //mF/cm&2
VT:=Form1.DDSpinEdit6.Value;              //mV
gL:=C/tau_m;                              //mS/cm^2
VL:=Form1.DDSpinEdit9.Value;              //mV
S:=Form1.DDSpinEdit7.Value/100000;      //cm^2
Vrest:=Form1.DDSpinEdit3.Value;           //mV
Ia_LIF:=Form1.DDSpinEdit4.Value;              //pA
Ia_IF:=Form1.DDSpinEdit13.Value;              //pA
t_end:=Form1.SpinEdit2.Value;             //ms
dt:=Form1.DDSpinEdit8.Value;              //ms
N:=Form1.SpinEdit1.Value;                 //number of neurons

sigma_IF:=Form1.DDSpinEdit1.Value*Form1.DDSpinEdit13.Value;
sigma_LIF:=Form1.DDSpinEdit15.Value*Form1.DDSpinEdit4.Value;

Vreset:=Form1.DDSpinEdit10.Value;         //mV
Tau:=Form1.DDSpinEdit11.Value;            //ms
noise_signal_LIF:=Form1.DDSpinEdit12.Value;
noise_signal_IF:=Form1.DDSpinEdit14.Value;
n_if:=0; n_lif:=0;
IFpot:=0;
LIFpot:=0;
signal_IF:=0;
signal_LIF:=0;
signal:=0;
IF_av_fr:=0;
LIF_av_fr:=0;
IF_av_q:=0;
LIF_av_q:=0;
delay:=Form2.Spinedit1.value;

for i:=1 to N do begin
    for j:=1 to 2 do begin V_IF[i,j]:=0; V_LIF[i,j]:=0; end;
                 end;

i:=0;
repeat i:=i+1;                            //initial conditions
V_IF[i,1]:=Vrest;
V_LIF[i,1]:=Vrest;
until i=N;
i:=0; j:=-1;

if Form1.RadioGroup1.ItemIndex=2 then ReadExpData( Value,time,t_end, dt);

REPEAT j:=j+1; t:=j*dt;
//writeln(ccc,t:10:3);
if Form1.RadioGroup1.ItemIndex=1 then begin
signal:=signal - dt/Tau*signal + sqrt(2*dt/Tau)*randG(0,1);

signal_LIF:=signal*noise_signal_LIF*Form1.DDSpinEdit4.Value;
signal_IF:=signal*noise_signal_IF*Form1.DDSpinEdit13.Value;

              Ia_LIF:=Form1.DDSpinEdit4.Value + signal_LIF;                //complex signal
              Ia_IF:=Form1.DDSpinEdit13.Value + signal_IF;                //complex signal
                                      end;

if Form1.RadioGroup1.ItemIndex=2 then begin
Ia_LIF:=Value[j];
Ia_IF:=Value[j];
                                      end;
 repeat i:=i+1;
   noise:=gL*sqrt(2*tau_m/dt)*randG(0,1);       //the same noise for each IF and LIF neuron

V_IF[i,2]:=(Ia_IF/1e9/S )*dt/C + sigma_IF*noise*dt/C + V_IF[i,1];

if i=N then begin
if V_IF[N,2]>VT then begin                           //spike stick
                     temp_V:=V_IF[N,2];
                     V_IF[N,2]:=100;  // mV
                    // writeln(rrr,t:10:2,' ', V_if[N,2]:10:3);
                     Form1.Series1.AddXY(t, V_IF[N,2]);
                     V_IF[N,2]:=temp_V; temp_V:=0;
                     end else begin Form1.Series1.AddXY(t, V_IF[N,2]);
                                   // writeln(rrr,t:10:2,' ', V_if[N,2]:10:3);
                              end;
            end;
if V_IF[i,2]>VT then  begin V_IF[i,2]:=Vreset;
                            n_if:=n_if+1;
                      end;
    V_IF[i,1]:=V_IF[i,2];

            // if t>900 then Ia_LIF:=0;
V_LIF[i,2]:=(Ia_LIF/1e9/S*dt + sigma_LIF*noise*dt + C*V_LIF[i,1])/(C + gL*dt);
if i=N then begin
if V_LIF[N,2]>VT then begin                           //spike stick
                     temp_V:=V_LIF[N,2];
                     V_LIF[N,2]:=100;  // mV
                     Form1.Series2.AddXY(t, V_LIF[N,2]);
                     //writeln(ccc,t:10:2,' ', V_LIF[N,2]:10:3);
                     V_LIF[N,2]:=temp_V; temp_V:=0;
                     end else begin Form1.Series2.AddXY(t, V_LIF[N,2]);
                     //writeln(ccc,t:10:2,' ', V_LIF[N,2]:10:3);
                              end;

            end;
if V_LIF[i,2]>VT then begin V_LIF[i,2]:=Vreset;
                            n_lif:=n_lif+1;
                      end;
    V_LIF[i,1]:=V_LIF[i,2];
 until i=N;
// Form1.Series5.AddXY(t,abs(V_IF[N,2]-V_IF[N-1,2]));
// Form1.Series6.AddXY(t,abs(V_LIF[N,2]-V_LIF[N-1,2]));

//IFpot:=IFpot/N;
//LIFpot:=LIFpot/N;
nu_lif:=n_lif/0.1*1000/N;                          //Hz
nu_if:=n_if/0.1*1000/N;                            //Hz

Form1.LineSeries1.AddXY(t, nu_if);               //ms, Hz
Form1.Series4.AddXY(t, nu_lif);                  //ms, Hz
Form1.Series3.AddXY(t,Ia_IF);
Form1.LineSeries2.AddXY(t,Ia_LIF);

writeln(ccc,t:10:3, ' ',nu_lif:10:3);
writeln(sss,t:10:3, ' ',Ia_lif:10:3);

writeln(qqq,t:10:3, ' ',nu_if:10:3);
writeln(lll,t:10:3, ' ',Ia_if:10:3);

//if t<1000 then begin

               end;

if  t<2000 then begin
writeln(sss,Ia_IF:10:3);
writeln(qqq,nu_if:10:3);
writeln(ddd,Ia_LIF :10:3);
writeln(bbb,nu_lif:10:3);
                end;

if t<3000 then begin
writeln(rrr,Ia_IF:10:3);
writeln(lll,nu_if:10:3);
writeln(eee,Ia_LIF :10:3);
writeln(fff,nu_lif:10:3);
               end;

//writeln(aaa,nu_lif:10:3);
//writeln(bbb,Ia_LIF:10:3);
//writeln(ccc,nu_if:10:3);
//writeln(ddd,Ia_IF:10:3);


n_if:=0; n_lif:=0; i:=0;

//IF_av_fr, LIF_av_fr, IF_av_q, LIF_av_q

fr_IF[j]:=nu_if;//sin(t);
if Form2.RadioButton1.Checked then q_IF[j]:=Ia_IF else q_IF[j]:=nu_if;//cos(t);
if t<=t_end/2 then begin
IF_av_fr:=IF_av_fr + nu_if;//+ sin(t);
if Form2.RadioButton1.Checked then IF_av_q:=IF_av_q + Ia_IF
                              else IF_av_q:=IF_av_q + nu_if;                 //cos(t);
                   end;

fr_LIF[j]:=nu_lif;//sin(t);
if Form2.RadioButton1.Checked then q_LIF[j]:=Ia_LIF else q_LIF[j]:=nu_lif;//cos(t);
if t<=t_end/2 then begin
LIF_av_fr:=LIF_av_fr + nu_lif;//sin(t);
if Form2.RadioButton1.Checked then LIF_av_q:=LIF_av_q + Ia_LIF
                              else LIF_av_q:=LIF_av_q+nu_lif;
                                                                //Cos(t);
                   end;

application.ProcessMessages;

UNTIL t>=t_end;

if (Form1.CheckBox1.Checked=true) then begin
IF_av_fr:=IF_av_fr/j/2;
LIF_av_fr:=LIF_av_fr/j/2;
IF_av_q:=IF_av_q/j/2;
LIF_av_q:=LIF_av_q/j/2;

j:=-1; i:=1; f_if:=0; f_lif:=0; g_if:=0; g_lif:=0;
fg_if:=0; fg_lif:=0; //delay:=delay*10;


Form2.Series1.Clear;
Form2.Series2.Clear;
repeat i:=i-1;                                 //delay change
REPEAT j:=j+1; t:=j*dt;                        //integration
f_if:=f_if + fr_IF[j]*fr_IF[j]*dt;             //freq
f_lif:=f_lif + fr_LIF[j]*fr_LIF[j]*dt;         //freq
g_if:=g_if + q_IF[j]*q_IF[j]*dt;               //input
g_lif:=g_lif + q_LIF[j]*q_LIF[j]*dt;           //input
fg_if:=fg_if + fr_IF[j+i+delay*10]*q_IF[j]*dt;     // delay in ms
fg_lif:=fg_lif + fr_LIF[j+i+delay*10]*q_LIF[j]*dt;  // delay in ms
until t>=t_end/2;
corr_IF:=(1/t/2*fg_if - IF_av_fr*IF_av_q)/sqrt(1/t/2*f_if - IF_av_fr*IF_av_fr)
/sqrt(1/t/2*g_if - IF_av_q*IF_av_q);
corr_LIF:=(1/t/2*fg_lif - LIF_av_fr*LIF_av_q)/sqrt(1/t/2*f_lif - LIF_av_fr*LIF_av_fr)
/sqrt(1/t/2*g_lif - LIF_av_q*LIF_av_q);
Form2.Series1.AddXY(delay+i/10,corr_IF );
Form2.Series2.AddXY(delay+i/10,corr_LIF );
j:=-1; f_if:=0; f_lif:=0; g_if:=0; g_lif:=0;
fg_if:=0; fg_lif:=0;
application.ProcessMessages;
until (delay+i/10)<=0;

                                   end;
{
closefile(ccc);
closefile(hhh);
closefile(sss);
closefile(qqq);
closefile(rrr);
closefile(lll);
closefile(nnn);

{closefile(aaa);
closefile(ddd);
closefile(bbb);
closefile(eee);
closefile(fff);
}
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
t_end:=0;
end;


procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if Form1.CheckBox1.Checked=true then Form2.Visible:=true
                                else Form2.Visible:=False;
end;

end.
