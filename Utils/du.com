�DU.COM ver 7.6 4/2/81* . �"� |�2�*  "�"�"/"["c"�"{"�"�""r:���o"�Ä* . � "��"��U
DISK UTILITY ver 7.6
Universal Version

Type ? for help
Type X to exit
 �\!� ~���G��y##��>!y���2��+>�2�2�1  �2�>2��! "���E��:��·	~����;#���2��+��
�-��
�=���<ʆ�>ʢ�#���?ʔ�A��C���D��F�6
�G�$	�H��L�e�M��Nʧ�P��Qʸ�Rʋ�S�$	�T�$	�U���Vʈ�W���X�  �Z��/ʾ�2��U? ���2��U+++ Out of memory +++
 ����UDisk Information:
Tracks:		 *�#�)�U
Sec/trk:	 *��)�U
Grpsize:	 :�<o& �)�U (sectors per group)
Tot grps:	 *��)�U
Dir entries:	 *�#�)�U
Sys tracks:	 *��)������ :�O�̀�2����z���*�#|����"�*��!yz���"�|�����:������{� ��z��� �� ��:��2��͸{��#
@:��0�>x��0��E����#�����O����������� OÀ�k�~  ����;����#�AO�y2��  :��ʤ|���^#V#�"�! ~#fo�\*���g �*�|�2�͆	�������*�"�! "�*�#�!�!DM���BK: =�����*���g*������G��!� �x���� ������ :��):��) ͸�{��9BK�>-�> 2���*�#}��V|���{����Eʆz��o{��I��͎�9�͎����*����	�K|���~��>  >(��~��K#��>.��:���~��~��> ��>)����U    ++FREE++         :��2���>:��K~�#� ��~����/*��:���@�!� ����>2���:��ʹ�!�� ������2��U++NO "<" SAVE COMMAND ISSUED
 ��~#��ɯ2����E��!y6À	��SG~�<x����>G���#~��#�;� �2��U= AT  :�����À	~�<�#~�<��͸�>{�����:���f*�}����G�2�*���*���g��͆	!� ~#"���:���͸�{�!� �E��~��À	:���q�2��U++Can't dump, no sector read.
 �2��UUse G command following F,
or R or S following T
 ��~�;�|�� � Ø�yBK�ʘ�;ʘ#�y�`i}���K�K:��A���~�}���K}���K{���#}�°�E��:��H�	��P~�� ���~��>.�{�� 	#}����P����E���{������{����~�;�0	��4	��v��T�G	�S�c	�G��	�����*��5����g��>2�À	��z����*��5�������2�͆	�v�*��*��5�*��<�*�+:�G}�2�:�G�!«	"����*��2�:���2��-��	�o& "����	͸�*��5����"��2���
�g�����2���vbk:�)=�
:��o�*���  �"
�*��*�	��#���>2�\ �͘
͘
\ �� <�x
2��U++FILE NOT FOUND
 ��=2��o& )))))�   ��>D2�Û~�.��
���
�;��
��#
~���;�#�.���#> ��
� ~���
�;��
͸z����Gz���
�*���*���g���À	 ~���;�͸z����*�+|��:*�|��3*�"�*��:+"�*�"��z����
��*�#�*��5��p*�#�*��5�i  �"�! "�����|��*��*��5ڨ�UG= *�DM�>:�:��>,��U T= *��)�U, S= *��)�U, PS= *��)����~���#�y#  �-����y#BK����,����H�M�A��~���;���;���:������2��U++Can't read - not positioned
Position by:
	Track then Sector, or
	Group
 ��9��><���>>��:���x�y�����
�$��0��������	�2
 	�|��){�0�����> �>*���E��~��m������p�#~��V#��͸�z�{���ƀ_ �ɯ2��U++BAD DISPLACEMENT (NOT 0-7F)
 ��  ~�#��~�����;��,��-��>�#�0���:���A���G����0�))))�o���#  ~�����;��,��-�#�0���:���0�bk)))�o|� g�����U
: !y ��O�����t�ʁ�ʁ�ʹ�ʛ� �7w#�j��7+>*��7w�>
�!yɯ���+y�ʕ~��7ͦ�7�2ͦÜ����	� ���� $6��!y ~��7�#��>^�>U��+>�>
��`��_�����  ��������  �������O�	�> �:����S� �*��*�
�?:���  y��?> 2��K� �K:�<2�:���W��������  ������  ���*��5����"��BK��  ����*��"�*��5�`iҟ:��¹+ù*���  :��¯g:��¹& i"�DM�  �ɯ2��U++not within tracks 0- �*��)��U++
 �����  >2���  ��7�2��U++READ failed, sector may be invalid++
 ��:���n�2��U++CANNOT WRITE UNLESS READ ISSUED
 �3��  �ʒ�2��U++WRITE failed++
 ���UOperands in brackets [...] are optional
Numeric values: 'n' are decimal, 'x' hex

+[n]   step in [n] sectors;
-[n]   step out [n] sectors
#      print disk parameters for curr drive.
=xxx   search for ASCII xxx from curr sector.
       Caution: upper/lower case matters.
       Use <xx> for hex:
       To find "IN 0" use: =<db><0>     or
       "(tab)H,0(CR)(LF)" use: =<9>H,0<D><A>
<      save current sector into mem. buff.
>      restore saved sector
?      give help
A[ff,tt] ASCII dump

(Type any char. to continue)

C      Change:
       CHaddr,byte,byte... (hex)
  or   CAaddr,data...  (Ascii)
       <xx> Allowed for imbedded hex.
  or   CHfrom-thru,byte  e.g. ch0-7f,e5
  or   CAfrom-thru,byte
D[ff,tt] Dump (hex+ASCII)
Fn.t   Find file
Gnn    CP/M Allocation Group nn
H[ff,tt]       hex dump
L      Log in drive
Lx     Log in drive x
M[nn]  Map [from group nn]

(Type any char. to continue)

N      New disk
P      Toggle printer switch
Q      Quiet mode (no msgs)
R      Read current sector
Snn    Sector nn
Tnn    Track nn
Unn    Set User nn for Find command (CP/M-2 only)
V[nn]  View [nn] ASCII sectors
W      Write current sector
X      Exit program
Z[nn]  Sleep [nn tenths]
/[nn]  Repeat [nn (decimal) times]

(Type any char. to continue)

Cancel a function with C or Ctl-C.
Suspend output with S or Ctl-S.
Separate commands with ";".
       Example: g0
       +;d;z#20;/
       would step in, dump, sleep 2 sec, 
       and repeat until control-c typed.
All "nn" usage except "/", "T", and "S" are
        HEX.  Use #nn for decimal.

See DU.DOC for complete examples.

 �y��#�x��}/o|/g#ɷ|g}o��0�+�}�o|�g����BKx��L!  �YT]x��Y�O���:���n���ä* . :  ^#�"��^#�"��~#2�~#2�^#�"��^#�"��^�"�!�~�:�w�*���
"��"���w�   ��                                                      