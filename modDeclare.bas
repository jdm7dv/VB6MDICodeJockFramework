Attribute VB_Name = "modDeclare"
Option Explicit


Public Declare Function GetDesktopWindow Lib "user32" () As Long
Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, _
    ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, _
    ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Public Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" _
    (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Const SE_ERR_NOASSOC = 31 'û�й����ĳ���


Public Type gtypCommandBarID
    'CommandBars��ID����
    
    Sys As Long
    
    SysExit As Long
    SysReLogin As Long
    SysModifyPassword As Long
    
    SysPrint As Long
    SysPrintPreview As Long
    SysOutToExcel As Long
    SysOutToWord As Long
    SysOutToText As Long
    
    SysSearch As Long
    SysSearch1Label As Long
    SysSearch2TextBox As Long
    SysSearch3Button As Long
    SysSearch4ListBoxCaption As Long
    SysSearch4ListBoxFormID As Long
    SysSearch5Go As Long
    
    
    TestWindow As Long
    
    TestWindowFirst As Long
    TestWindowSecond As Long
    TestWindowThird As Long
    TestWindowThour As Long
    
    Help As Long
    HelpAbout As Long
    HelpDocument As Long
    
    
    Wnd As Long
    
    WndResetLayout As Long
    
    WndThemeCommandBars As Long
    WndThemeCommandBarsOffice2000 As Long
    WndThemeCommandBarsOfficeXp As Long
    WndThemeCommandBarsOffice2003 As Long
    WndThemeCommandBarsWinXP As Long
    WndThemeCommandBarsWhidbey As Long
    WndThemeCommandBarsResource As Long
    WndThemeCommandBarsRibbon As Long
    WndThemeCommandBarsVS2008 As Long
    WndThemeCommandBarsVS6 As Long
    WndThemeCommandBarsVS2010 As Long
    
    WndThemeTaskPanel As Long
    WndThemeTaskPanelOffice2000 As Long
    WndThemeTaskPanelOffice2003 As Long
    WndThemeTaskPanelNativeWinXP As Long
    WndThemeTaskPanelOffice2000Plain As Long
    WndThemeTaskPanelOfficeXPPlain As Long
    WndThemeTaskPanelOffice2003Plain As Long
    WndThemeTaskPanelNativeWinXPPlain As Long
    WndThemeTaskPanelToolbox As Long
    WndThemeTaskPanelToolboxWhidbey As Long
    WndThemeTaskPanelListView As Long
    WndThemeTaskPanelListViewOfficeXP As Long
    WndThemeTaskPanelListViewOffice2003 As Long
    WndThemeTaskPanelShortcutBarOffice2003 As Long
    WndThemeTaskPanelResource As Long
    WndThemeTaskPanelVisualStudio2010 As Long
    
    WndThemeSkin As Long
    WndThemeSkinCodejock As Long
    WndThemeSkinOffice2007 As Long
    WndThemeSkinOffice2010 As Long
    WndThemeSkinVista As Long
    WndThemeSkinWinXPRoyale As Long
    WndThemeSkinWinXPLuna As Long
    WndThemeSkinZune As Long
    WndThemeSkinSet As Long
    
    WndSon As Long
    WndSonVbCascade As Long
    WndSonVbTileHorizontal As Long
    WndSonVbTileVertical As Long
    WndSonVbArrangeIcons As Long
    WndSonVbAllMin As Long
    WndSonVbAllBack As Long
    WndSonCloseAll As Long
    WndSonCloseCurrent As Long
    WndSonCloseLeft As Long
    WndSonCloseRight As Long
    WndSonCloseOther As Long
    
    
    Other As Long
    
    OtherPane As Long
    OtherPaneIDFirst As Long
    OtherPaneIDSecond As Long
    OtherPaneMenuTitle As Long
    OtherPaneMenuPopu As Long
    OtherPaneMenuPopuExpand As Long
    OtherPaneMenuPopuAutoFold As Long
    OtherPaneMenuPopuFold As Long
    
    OtherSave As Long               'ע��������ֵ������
    OtherSaveAppName As String
    OtherSaveRegistryKey As String
    OtherSaveCommandBarsSection As String
    OtherSaveDockingPaneSection As String
    OtherSaveWidth As Long
    OtherSaveHeight As Long
    OtherSaveSettings As String
    OtherSaveSkinPath As String
    OtherSaveSkinIni As String
    OtherSaveSkinID As String
    OtherSaveUserLast As String     'Key����-����½�����û���
    OtherSaveUserList As String     'Key����-��½�����û����б�
    
    
    OtherTabWorkspacePopup As Long
    
    StatusBarPane As Long               '״̬�����
    StatusBarPaneProgress As Long       '״̬���н�����
    StatusBarPaneProgressText As Long   '״̬���н��Ȱٷ�ֵ
    StatusBarPaneUserInfo As Long       '״̬�����û���Ϣ
    StatusBarPaneTime As Long           '״̬��ʱ��
    
    FolderStyles As String  '����Style�ļ���·��
    FolderBin As String     '����Bin�ļ���·��
    FolderNet As String     '���繲���ļ���·��
    FolderData As String    '����Data�ļ���·��
    
    FileLog As String       '��־�ļ�ȫ·��
    FileAppName As String   'App����չ����ȫ��
    FileAppNet As String    '����Appȫ·��
    FileAppLoc As String    '����Appȫ·��
    FileSetupNet As String  '���簲װ��ȫ·��
    FileSetupLoc As String  '���ذ�װ�����ȫ·��
    
    SkinPath As String      '������Դ�ļ���
    SkinIni As String       '���������ļ���
    
    UserLoginName As String '�û���½��
    UserNickname As String  '�û��ǳ�
    UserPassword As String  '�û�����
    UserDepartment As String    '�û����ڲ���
    UserLoginIP As String       '�û���½����IP
    UserComputerName As String  '�û���½��������
    
    CnSource As String      '�������ݿ���������ƻ�IP��ַ
    CnUserID As String      '�������ݿ��û���
    CnPassword As String    '�������ݿ�����
    CnDatabase As String    '���ӵ����ݿ���
    CnString As String      '���ݿ������ַ���ȫ��
    
End Type

Public Type gtypValueAndErr '���ڷ��ز���ֵ�Ĺ��̣�˳�㷵���쳣����
    Result As Boolean
    ErrNum As Long
End Type

Public Enum genmFileOpenType    '���ļ���ʽ
    udAppend    '��˳���ͷ��ʣ����ַ�׷�ӵ��ļ�
    udBinary    '�Զ����Ʒ���
    udInput     '��˳���ͷ��ʣ����ļ������ַ�
    udOutput    '��˳���ͷ��ʣ����ļ�����ַ�
    udRandom    '�������ʽ
End Enum

Public Enum genmFileWriteType   'д���ļ���ʽ
    udPut       '��Get����.For Binary��Random.
    udWrite     '��Input����
    udPrint     '��Line Input �� Input����
End Enum

Public gID As gtypCommandBarID   'ȫ��CommandBars��ID����
Public gMDI As MDIForm          'ȫ������������


