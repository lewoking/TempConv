#Persistent ; �ýű���������
OnClipboardChange("ClipChanged")
loop,3
{
  clipboard := "�Կ���"
  msgbox, ��%a_index%�β�����ɣ�
}
return
ClipChanged(clip_type) {    
    ToolTip  copy: "%clipboard%".
    IniRead, OutputVar, .\MacroCreator.ini, Options,%clipboard% 
    if ( InStr(OutputVar,"err")>0)
      {
      Sleep 1000
      ToolTip
      return
      }
   else 
     {
    MsgBox, The value is %OutputVar%.ture
    Sleep 1000
    ToolTip  ; �رչ�����ʾ.
    Sleep 1000
   clipboard :=  OutputVar  ; �ڼ������д���������.
   Sleep 1000
  MsgBox,sleep
    }
}

#x::ExitApp  ; �趨�ȼ�����ֹ��ǰ�ű�