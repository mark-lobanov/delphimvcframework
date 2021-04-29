object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = '[DMVCFramework] MVCActiveRecord Entity Generator'
  ClientHeight = 630
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 207
    Width = 909
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 169
    ExplicitWidth = 215
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 909
    Height = 39
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 863
    object Label1: TLabel
      AlignWithMargins = True
      Left = 543
      Top = 11
      Width = 190
      Height = 17
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Select a FireDAC Connection Definitions'
      Layout = tlCenter
      ExplicitLeft = 497
      ExplicitHeight = 13
    end
    object cboConnectionDefs: TComboBox
      AlignWithMargins = True
      Left = 753
      Top = 11
      Width = 145
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alRight
      TabOrder = 0
      OnChange = cboConnectionDefsChange
      ExplicitLeft = 707
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 909
    Height = 168
    Align = alTop
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 863
    object Label2: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 901
      Height = 13
      Align = alTop
      Caption = 'FireDAC connection parameters'
      ExplicitWidth = 152
    end
    object mmConnectionParams: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 23
      Width = 535
      Height = 141
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      WordWrap = False
      OnChange = mmConnectionParamsChange
      ExplicitWidth = 489
    end
    object Panel6: TPanel
      Left = 542
      Top = 20
      Width = 366
      Height = 147
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel6'
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 496
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 360
        Height = 141
        Align = alClient
        Caption = 'Options'
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object lstSchema: TListBox
          AlignWithMargins = True
          Left = 215
          Top = 23
          Width = 135
          Height = 108
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
          OnDblClick = lstSchemaDblClick
        end
        object lstCatalog: TListBox
          AlignWithMargins = True
          Left = 71
          Top = 23
          Width = 138
          Height = 108
          Align = alLeft
          ItemHeight = 13
          TabOrder = 1
          OnDblClick = lstCatalogDblClick
        end
        object btnRefreshCatalog: TButton
          AlignWithMargins = True
          Left = 10
          Top = 23
          Width = 55
          Height = 108
          Align = alLeft
          Caption = 'Refresh'
          TabOrder = 2
          OnClick = btnRefreshCatalogClick
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 210
    Width = 909
    Height = 420
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    ExplicitWidth = 863
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 907
      Height = 120
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel4'
      ShowCaption = False
      TabOrder = 0
      ExplicitWidth = 861
      DesignSize = (
        907
        120)
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 140
        Top = 4
        Width = 100
        Height = 29
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Select All'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        AlignWithMargins = True
        Left = 245
        Top = 4
        Width = 100
        Height = 29
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Select None'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        AlignWithMargins = True
        Left = 350
        Top = 4
        Width = 100
        Height = 29
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Invert Selection'
        OnClick = SpeedButton3Click
      end
      object btnGenEntities: TButton
        AlignWithMargins = True
        Left = 774
        Top = 82
        Width = 120
        Height = 35
        Anchors = [akRight, akBottom]
        Caption = 'Generate Entities'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnGenEntitiesClick
      end
      object btnGetTables: TButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 120
        Height = 35
        Caption = 'Get Tables'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnGetTablesClick
      end
      object chGenerateMapping: TCheckBox
        AlignWithMargins = True
        Left = 470
        Top = -2
        Width = 262
        Height = 48
        Caption = 
          'Register entities in ActiveRecordMappingRegistry (needed by TMVC' +
          'ActiveRecordController)'
        Checked = True
        State = cbChecked
        TabOrder = 2
        WordWrap = True
      end
      object RadioGroup1: TRadioGroup
        Left = 7
        Top = 47
        Width = 443
        Height = 70
        Caption = 'MVCNameCase'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'LowerCase'
          'UpperCase'
          'CamelCase'
          'PascalCase'
          'SnakeCase'
          'AsIs')
        TabOrder = 3
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 124
      Width = 901
      Height = 292
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 1
      ExplicitTop = 45
      ExplicitWidth = 855
      ExplicitHeight = 371
      object TabSheet1: TTabSheet
        Caption = 'Tables'
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 893
          Height = 264
          Align = alClient
          DataSource = dsrcTablesMapping
          DefaultDrawing = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'GENERATE'
              PickList.Strings = (
                'yes'
                'no')
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TABLE_NAME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASS_NAME'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Generated Code'
        ImageIndex = 1
        object mmOutput: TMemo
          AlignWithMargins = True
          Left = 3
          Top = 44
          Width = 887
          Height = 217
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
          WordWrap = False
          ExplicitWidth = 841
          ExplicitHeight = 296
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 893
          Height = 41
          Align = alTop
          Caption = 'Panel5'
          ShowCaption = False
          TabOrder = 1
          ExplicitWidth = 847
          object btnSaveCode: TButton
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 75
            Height = 33
            Align = alLeft
            Caption = '&Save'
            TabOrder = 0
            OnClick = btnSaveCodeClick
          end
        end
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 256
    Top = 56
  end
  object qry: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evRecsMax, evRowsetSize, evUnidirectional, evAutoFetchAll]
    FetchOptions.Unidirectional = True
    FetchOptions.RowsetSize = 1
    FetchOptions.RecsMax = 1
    FetchOptions.AutoFetchAll = afDisable
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    Left = 304
    Top = 152
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 504
    Top = 496
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 424
    Top = 104
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 784
    Top = 568
  end
  object FileSaveDialog1: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Delphi Unit'
        FileMask = '*.pas'
      end>
    Options = []
    Left = 328
    Top = 416
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 616
    Top = 568
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 784
    Top = 496
  end
  object FDPhysFBDriverLink2: TFDPhysFBDriverLink
    Left = 616
    Top = 408
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 616
    Top = 496
  end
  object FDPhysMySQLDriverLink2: TFDPhysMySQLDriverLink
    Left = 504
    Top = 568
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 504
    Top = 408
  end
  object dsTablesMapping: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'TABLE_NAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CLASS_NAME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'GENERATE'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 96
    Top = 504
    object dsTablesMappingGENERATE: TBooleanField
      DisplayLabel = 'Generate?'
      FieldName = 'GENERATE'
    end
    object dsTablesMappingTABLE_NAME: TStringField
      DisplayLabel = 'Table Name'
      DisplayWidth = 60
      FieldName = 'TABLE_NAME'
      Size = 100
    end
    object dsTablesMappingCLASS_NAME: TStringField
      DisplayLabel = 'Class Name'
      DisplayWidth = 60
      FieldName = 'CLASS_NAME'
      Size = 100
    end
  end
  object dsrcTablesMapping: TDataSource
    DataSet = dsTablesMapping
    Left = 96
    Top = 448
  end
end
