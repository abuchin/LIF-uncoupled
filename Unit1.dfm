object Form1: TForm1
  Left = 6
  Top = 505
  Width = 1094
  Height = 711
  Caption = 'Direct Stimulation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 820
    Top = 239
    Width = 66
    Height = 16
    Caption = 'Ia LIF, pA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 820
    Top = 119
    Width = 70
    Height = 16
    Caption = 'tau_m, ms'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 820
    Top = 71
    Width = 51
    Height = 16
    Caption = 'VT, mV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 820
    Top = 186
    Width = 83
    Height = 16
    Caption = 'S, cm^2*e-5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 820
    Top = 95
    Width = 71
    Height = 16
    Caption = 'V rest, mV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 820
    Top = 423
    Width = 58
    Height = 16
    Caption = 'time, ms'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 820
    Top = 444
    Width = 42
    Height = 16
    Caption = 'dt, ms'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 820
    Top = 163
    Width = 56
    Height = 16
    Caption = 'neurons'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 820
    Top = 287
    Width = 78
    Height = 16
    Caption = 'sigma/Ia IF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 820
    Top = 47
    Width = 49
    Height = 16
    Caption = 'VL, mV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 820
    Top = 23
    Width = 76
    Height = 16
    Caption = 'Vreset, mV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 820
    Top = 140
    Width = 77
    Height = 16
    Caption = 'C, nF/cm^2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 820
    Top = 468
    Width = 50
    Height = 16
    Caption = 'tau, ms'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 820
    Top = 360
    Width = 86
    Height = 16
    Caption = 'signal/Ia LIF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 820
    Top = 263
    Width = 58
    Height = 16
    Caption = 'Ia IF, pA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 820
    Top = 336
    Width = 78
    Height = 16
    Caption = 'signal/Ia IF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 820
    Top = 311
    Width = 86
    Height = 16
    Caption = 'sigma/Ia LIF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 403
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'IF Potential for N neuron')
    BottomAxis.Title.Caption = 'ms'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -11
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'mV'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    RightAxis.Title.Caption = 'pA'
    RightAxis.Title.Font.Charset = DEFAULT_CHARSET
    RightAxis.Title.Font.Color = clBlack
    RightAxis.Title.Font.Height = -11
    RightAxis.Title.Font.Name = 'Arial'
    RightAxis.Title.Font.Style = [fsBold]
    View3D = False
    TabOrder = 0
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 404
    Top = 0
    Width = 401
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'LIF Potential for N neuron')
    BottomAxis.Title.Caption = 'ms'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -11
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'mV'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    RightAxis.Title.Caption = 'pA'
    RightAxis.Title.Font.Charset = DEFAULT_CHARSET
    RightAxis.Title.Font.Color = clBlack
    RightAxis.Title.Font.Height = -11
    RightAxis.Title.Font.Name = 'Arial'
    RightAxis.Title.Font.Style = [fsBold]
    View3D = False
    TabOrder = 1
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object DDSpinEdit3: TDDSpinEdit
    Left = 940
    Top = 87
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 2
  end
  object DDSpinEdit4: TDDSpinEdit
    Left = 940
    Top = 231
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 3
    Value = 150.000000000000000000
  end
  object DDSpinEdit6: TDDSpinEdit
    Left = 940
    Top = 63
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 4
    Value = 11.600000000000000000
  end
  object DDSpinEdit7: TDDSpinEdit
    Left = 940
    Top = 178
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 5
    Value = 27.500000000000000000
  end
  object Button1: TButton
    Left = 924
    Top = 623
    Width = 57
    Height = 25
    Caption = 'Stop'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 836
    Top = 623
    Width = 57
    Height = 25
    Caption = 'Start'
    TabOrder = 7
    OnClick = Button2Click
  end
  object DDSpinEdit8: TDDSpinEdit
    Left = 940
    Top = 436
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 8
    Value = 0.100000000000000000
  end
  object SpinEdit2: TSpinEdit
    Left = 940
    Top = 415
    Width = 93
    Height = 22
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 9
    Value = 1000
  end
  object DDSpinEdit1: TDDSpinEdit
    Left = 940
    Top = 279
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 0.010000000000000000
    ParentFont = False
    TabOrder = 10
    Value = 0.006600000000000000
  end
  object DDSpinEdit9: TDDSpinEdit
    Left = 940
    Top = 39
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 11
  end
  object SpinEdit1: TSpinEdit
    Left = 940
    Top = 157
    Width = 93
    Height = 22
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 12
    Value = 10000
  end
  object DDSpinEdit10: TDDSpinEdit
    Left = 940
    Top = 15
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 13
  end
  object Chart4: TChart
    Left = 403
    Top = 336
    Width = 402
    Height = 249
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'LIF Frequency')
    BottomAxis.Title.Caption = 'ms'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -11
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'Hz'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    View3D = False
    TabOrder = 14
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 0
    Top = 335
    Width = 403
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'IF Frequency')
    BottomAxis.Title.Caption = 'ms'
    BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
    BottomAxis.Title.Font.Color = clBlack
    BottomAxis.Title.Font.Height = -11
    BottomAxis.Title.Font.Name = 'Arial'
    BottomAxis.Title.Font.Style = [fsBold]
    LeftAxis.Title.Caption = 'Hz'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    TopAxis.Title.Angle = 90
    View3D = False
    TabOrder = 15
    object LineSeries1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object DDSpinEdit2: TDDSpinEdit
    Left = 940
    Top = 132
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 16
    Value = 0.700000000000000000
  end
  object DDSpinEdit5: TDDSpinEdit
    Left = 940
    Top = 111
    Width = 93
    Height = 22
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 17
    Value = 15.000000000000000000
  end
  object RadioGroup1: TRadioGroup
    Left = 813
    Top = 498
    Width = 112
    Height = 71
    Caption = 'Stimulus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'step voltage'
      'colored noise'
      'readfile')
    ParentFont = False
    TabOrder = 18
  end
  object DDSpinEdit11: TDDSpinEdit
    Left = 940
    Top = 460
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 19
    Value = 3.000000000000000000
  end
  object DDSpinEdit12: TDDSpinEdit
    Left = 940
    Top = 352
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 0.010000000000000000
    ParentFont = False
    TabOrder = 20
    Value = 0.660000000000000000
  end
  object Chart5: TChart
    Left = 0
    Top = 250
    Width = 403
    Height = 89
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'INPUT')
    LeftAxis.Title.Caption = 'pA'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    View3D = False
    TabOrder = 21
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart6: TChart
    Left = 404
    Top = 250
    Width = 401
    Height = 89
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -11
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'INPUT')
    LeftAxis.Title.Caption = 'pA'
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clBlack
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.Visible = False
    View3D = False
    TabOrder = 22
    object LineSeries2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object DDSpinEdit13: TDDSpinEdit
    Left = 940
    Top = 255
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 1.000000000000000000
    ParentFont = False
    TabOrder = 23
    Value = 40.000000000000000000
  end
  object DDSpinEdit14: TDDSpinEdit
    Left = 940
    Top = 328
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 0.010000000000000000
    ParentFont = False
    TabOrder = 24
    Value = 0.660000000000000000
  end
  object DDSpinEdit15: TDDSpinEdit
    Left = 940
    Top = 303
    Width = 93
    Height = 26
    StrWidth = 2
    StrDecimals = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Increment = 0.010000000000000000
    ParentFont = False
    TabOrder = 25
    Value = 0.006600000000000000
  end
  object CheckBox1: TCheckBox
    Left = 936
    Top = 504
    Width = 81
    Height = 17
    Caption = 'cross corr'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
    OnClick = CheckBox1Click
  end
end
