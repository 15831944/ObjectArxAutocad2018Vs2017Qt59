(defun c:zoomo() (command "zoom" "o" pause) )
;(defun c:dd()   (command "dim" ) )
(defun c:ddf()  (command "dimlinear" ) )
(defun c:ddfa() (command "dimaligned" ) )

(defun c:zrec( / varLY varS )

  (setq varLY(getvar "clayer") )
  (setvar "CMDECHO" 0 )
  (command "-layer" "on" "�ο���" "" )
  (command "clayer" "�ο���")

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "CMDECHO" 1 )
     (setvar "clayer" varLY )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )
;
  (command "rectang" pause pause );
  (setq varS (  ssget "l" ) )
  (command "AUTOCONSTRAIN" (ssget )  "" )
  (command "BCONSTRUCTION" varS "" "C" ) 
  
  (normalReturn_this)

)

(defun c:zarc()
  (command "arc" pause
	   "e"   pause
	   "d" 
	   )
)

(defun c:aaq(/ varS)
	(setq varS(ssget ":E"))
	(if (/= varS nil)(progn
		(command "AUTOCONSTRAIN" varS "" )
	))
)

(defun c:szr(/ varS)                                    ;ѡ��ߴ���
  (command "pselect" "" )                               ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons -4 "<or") 
  (cons 8 "�ο���" ) 
  (cons 8 "�ο���" )
  (cons 8 "��ʱͼ��" )
  (cons -4 "or>") ) ) )                                 ;ѡ�񼯺�  
  (command "pselect" varS "" )                          ;ѡ��
)

(defun c:szs(/ varS)                                    ;ѡ��ߴ���
  (command "pselect" "" )                               ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "�ߴ���" ) ) ) )     ;ѡ�񼯺�  
  (command "pselect" varS "" )                          ;ѡ��
)

(defun c:szd(/ varS)                                  ;ѡ������
  (command "pselect" "" )                             ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "����" ) ) ) )     ;ѡ�񼯺�  
  (command "pselect" varS "" )                        ;ѡ��
)

(defun c:szz(/ varS)                                  ;ѡ��0
  (command "pselect" "" )                             ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "0" ) ) ) )        ;ѡ�񼯺�  
  (command "pselect" varS "" )                        ;ѡ��
)

(defun c:szdp(/ varS)                                  ;ѡ��Defpoints
  (command "pselect" "" )                              ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "Defpoints" ) ) ) ) ;ѡ�񼯺�  
  (command "pselect" varS "" )                         ;ѡ��
)

(defun c:szc(/ varS)                                   ;ѡ��������
  (command "pselect" "" )                              ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "������" ) ) ) )    ;ѡ�񼯺�  
  (command "pselect" varS "" )                         ;ѡ��
)

(defun c:szf(/ varS)                                   ;ѡ��ϸʵ��
  (command "pselect" "" )                              ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "ϸʵ��" ) ) ) )    ;ѡ�񼯺�  
  (command "pselect" varS "" )                         ;ѡ��
)

(defun c:szt(/ varS)                                    ;ѡ���ʵ��
  (command "pselect" "" )                               ;ȡ��ȫ��ѡ��
  (setq varS (ssget  (list (cons 8 "��ʵ��*" ) ) ) )     ;ѡ�񼯺�  
  (command "pselect" varS "" )                          ;ѡ��
)

;(defun c:test111(/ varS)
;  (command "pselect" "" )     ;ȡ��ȫ��ѡ��
;  (setq varS (ssget "A") )    ;ѡ�񼯺�
;  (command "pselect" varS "" );ѡ��
;)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zx���λ����(/ varLY  )
  (setq varLY(getvar "clayer") )
  (setvar "CMDECHO" 0 )
  (command "-layer" "on" "ϸʵ��" "" )
  (command "clayer" "ϸʵ��")

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "CMDECHO" 1 )
     (setvar "clayer" varLY )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (command "insert" "@���λ����.111133" pause "1" "1" "0"   )
  (normalReturn_this)

)
;@ɲ������λ����.111133
(defun c:zxɲ������λ����(/ varLY  )
  (setq varLY(getvar "clayer") )
  (setvar "CMDECHO" 0 )
  (command "-layer" "on" "ϸʵ��" "" )
  (command "clayer" "ϸʵ��")

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "CMDECHO" 1 )
     (setvar "clayer" varLY )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (command "insert" "@ɲ������λ����.111133" pause "1" "1" "0"   )
  (normalReturn_this)

)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(list (cons -4   "<or") (cons 8 "�ο���") (cons 8 "�ο���")  (cons 8 "��ʱͼ��") (cons -4 "or>") )
(defun c:zdo(/ varS)
  (c:zgdns) ;��������Լ��
  ;����0���Defpointsͼ��
  (setq varS(ssget "A" (list
			 (cons -4 "<and")
			 (cons 8  "~Defpoints")
			 (cons 8  "~0")
			 (cons -4 "and>")
			)
           )
  )
  (if (/= varS nil)
    (progn
      (command "hideobjects" varS "")
    )
   )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:vvvvvvattsyngriducsicon()
(setvar "CMDECHO" 0 );
;SYSVARMONITORϵͳ����������
;(command "ATTSYNC" "n" "@���λ����.111133" );���¿鶨��
;(command "ATTSYNC" "n" "@ɲ������λ����.111133" );���¿鶨��
(command "ATTSYNC" "n" "��߿�2(G3000)" );���¿鶨��
(c:ZCENTERMARKSTYLE);���������߱�ע��ʽ
(command "grid" "l" "y" );��������
(command "ucsicon" "on" );��ʾucs
(command "ucsicon" "or" );ucs��ʾ��ԭ��
(command "-layer" "c" "211" "0" "" );��0����ɫ��Ϊ"211"
(command "-layer" "c" "t" "185,70,173" "Defpoints" "" );����Defpoints��ɫ
(command "-layer" "tr" "45" "Defpoints" "" );����Defpoints͸����
(command "SNAPMODE" 0 );�ر�դ��׽
(setvar "OSMODE" 16381 );
(setvar "AUTOSNAP" 31);
(setvar "orthomode" 0);
(setvar "BLIPMODE" 0);
(c:zdn);�л���ע��ʽ
(command "dimlayer" "�ߴ���" );��עͼ��
(command "textstyle" "@Standard" );������ʽ
(c:zt);�л�ͼ��
(command "-layer"
     "off" "�ο���"
     "off" "�ο���"
     "off" "��ʱͼ��"
     ""
     )
(command "regenall")
(setvar "CMDECHO" 1 );

)

(defun c:zps(/ varV)
  (setq varV(getvar "pickstyle"))
  (if (/= varV 0)
    (progn (setvar "pickstyle" 0) )
    (progn (setvar "pickstyle" 1) )
    )
)
(defun c:zgs() (c:zps) )

(defun c:zshowallobject()
  (command "layon" )
	(command "unisolateobjects" )
)

 (defun c:zhinsert(/ varS)
 	(setq varS(ssget "A" (list (cons 0 "INSERT"))))
	(if (/= varS nil )(progn
		(command "hideobjects" varS "")
	) )
 )

(defun c:zhideinsert(/ varS)(c:zhinsert))

(defun c:zbylayer(/ varS)
   (setq varS( ssget ":E" ) );select object
   (if (/= varS nil)(progn
   ;(command "change" varS "" "p" "la" "Defpoints" "" )       ;�л�ͼ�㵽Defpoints
   ;(command "change" varS "" "p" "c"  "bylayer" "" ) ;ת��ͼ����ɫ��bylayer
   ;(command "change" varS "" "p" "lt" "bylayer" "" ) ;ת��ͼ�����͵�bylayer
   ;(command "change" varS "" "p" "lw" "bylayer" "" ) ;ת��ͼ���ȵ�bylayer
   (command "setbylayer" varS "" "Y" "N" )
   ));if
)

(defun c:zbyblock(/ varS)
   (setq varS( ssget ":E" ) );select object
   (if (/= varS nil)(progn
   (command "change" varS "" "p" "la" "0" "" )       ;�л�ͼ�㵽0
   (command "change" varS "" "p" "c"  "byblock" "" ) ;ת��ͼ����ɫ��bylayer
   (command "change" varS "" "p" "lt" "byblock" "" ) ;ת��ͼ�����͵�bylayer
   (command "change" varS "" "p" "lw" "byblock" "" ) ;ת��ͼ���ȵ�bylayer
   ));Defpoints
)
;
(defun c:ZCENTERMARKSTYLE()
  (command "CENTEREXE" 3 )             ;���������쳤��
  (command "CENTERLAYER" "������" )    ;������ͼ��
  (command "CENTERLTSCALE" 1 )         ;���������ͱ���
  (command "CENTERLTYPE" "BYLAYER" )   ;����������
)

;����
(defun c:zqc()
  (command "copyclip")
)
;���
(defun c:zqv()
  (command "pasteclip")
)
;��������ͼ��
(defun c:zlockall()
  (setvar "CMDECHO" 0)
  (command "-layer" "lo" "0,�����߲�,���߲�,ϸʵ�߲�,��ʵ�߲�,�ߴ��߲�,�����߲�,���ز�,Defpoints,ͼ��2,�ߴ���,��ʵ��,ͼ��1,BIAOZHU,��ע,ϸʵ��,������,����,����ӡ,BZ,˫�㻮��,TEXT,�ο���,ͼֽ����,��ʱͼ��,��ʵ��_�ǻ�е�ӹ�,��ʵ��_�ּӹ�,�ο���,_MarkInformation" "" )
  (setvar "CMDECHO" 1)
)
;�ⶳ����ͼ��
(defun c:zunlockall()
  (setvar "CMDECHO" 0)
  (command "-layer" "u" "0,�����߲�,���߲�,ϸʵ�߲�,��ʵ�߲�,�ߴ��߲�,�����߲�,���ز�,Defpoints,ͼ��2,�ߴ���,��ʵ��,ͼ��1,BIAOZHU,��ע,ϸʵ��,������,����,����ӡ,BZ,˫�㻮��,TEXT,�ο���,ͼֽ����,��ʱͼ��,��ʵ��_�ǻ�е�ӹ�,��ʵ��_�ּӹ�,�ο���,_MarkInformation" "" )
  (setvar "CMDECHO" 1)
)

;�ֽ�� , ɾ��Լ�� , �޸�ͼ�㵽�ο��� , ɾ�����еĵ� ɾ��Defpoints����
(defun c:zexplode( / varSName varSObject varS varS1  varI varSName1 varSObject1 varJ varSSNameList )
  ( setq varS nil )
  ( setq varI 0 )
  (setq varS( ssget ":E" ) );select object
  (if (/= varS nil)
  (progn

	  (setvar "CMDECHO" 0)
	  (command "DELCONSTRAINT" varS "")               ;ɾ��Լ��
          (command "change" varS "" "p" "la" "�ο���" "") ;�л�ͼ�㵽�ο���
          (command "change" varS "" "p" "c" "bylayer" "") ;ת��ͼ����ɫ��bylayer
          (command "change" varS "" "p" "lt" "bylayer" "");ת��ͼ�����͵�bylayer
          (command "change" varS "" "p" "lw" "bylayer" "");ת��ͼ���ȵ�bylayer
	  (setvar "CMDECHO" 1)

      (repeat (sslength varS)
	  (setq varSName (ssname varS varI) )
	  (setq varSObject (entget varSName ))
	  (setq varI(+ varI 1) );;
	  (if (= (cdr (assoc 0 varSObject )) "INSERT" )
	  (progn
	  (command "explode" varSName  "" )
          (setq varS1(ssget "p"));ѡ��ֽ��Ķ���
	  (if  (/= varS1 nil)
	  (progn
	  (setvar "CMDECHO" 0)
	  (setq varSSNameList () )

          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	  ( setq varJ 0 )
	  (repeat (sslength varS1)
	    (setq varSName1 (ssname varS1 varJ) )
	    (setq varSObject1 (entget varSName1 ))
	    (setq varJ(+ varJ 1) );;
	    (if (or (= (cdr (assoc 0 varSObject1 )) "POINT" )
		    (= (cdr (assoc 8 varSObject1 )) "Defpoints" )
		)
	      (progn
	      (setq varSSNameList(append varSSNameList (list varSName1) ) )
	      (command "erase" varSName1 "" )
	      );progn
	    );if
	  )
	  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	  ( setq varJ 0 )
	  (repeat (length varSSNameList)
	    (setq  varS1(ssdel (nth varJ varSSNameList ) varS1 ) )
	    (setq varJ(+ varJ 1) );;
	  )
	  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	  (if (/= varS1 nil)
	  (progn
	  (command "DELCONSTRAINT" varS1 "")               ;ɾ��Լ��
          (command "change" varS1 "" "p" "la" "�ο���" "") ;�л�ͼ�㵽�ο���
          (command "change" varS1 "" "p" "c" "bylayer" "") ;ת��ͼ����ɫ��bylayer
          (command "change" varS1 "" "p" "lt" "bylayer" "");ת��ͼ�����͵�bylayer
          (command "change" varS1 "" "p" "lw" "bylayer" "");ת��ͼ���ȵ�bylayer
	  ))

	  (setvar "CMDECHO" 1)
	  );progn
	  );if
	  );progn
	  );if
     );repeat
  );progn
  );if
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zsd()
  (command "dcdisplay" pause )
  )
(defun c:zsg()
  (command "ConstraintBar" pause )
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zw()
  (command "CLEANSCREENON" )
  )

(defun c:zwo()
  (command "CLEANSCREENOFF" )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zbreak()
  (command "break" pause "f" pause )
  )

(defun c:zpbreak()
  (command "break" pause "f" pause "@" )
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zbbo(/ varS)
	(setq varS(ssget "A" (list (cons 8 "��ʵ��"))))
	(if (/= varS nil )(progn
		(command "hideobjects" varS "")
	) )

    (command "-layer" "on" "��ʵ��"   "")
    (command "-layer" "off" "0"   "")
    (command "-layer" "off" "�ο���"   "")
    (command "-layer" "off" "��ʱͼ��"   "")
    (command "-layer" "off" "Defpoints"   "")
    (setvar "clayer" "��ʵ��")

)

(defun c:zebo(/ varS)
	(command "-layer" "on" "�ο���"   "")
    (command "-layer" "on" "��ʱͼ��"   "")
    (command "-layer" "on" "Defpoints"   "")
    (command "-layer" "on" "0"   "")
    (command "unisolateobjects" )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zbo( /
	*error*
	varCLayer
	varS
	)

(setq  varCLayer (getvar "clayer") )
(defun *error* ( msg )
	  	;(command "-layer" "on" "�ο���" "")
        	(setvar "clayer"  varCLayer )
        	(command "unisolateobjects" )
        	(princ "Zzz:error: ")
        	(princ msg)
        	(princ "\n")
        	(princ)
	  )

	(setq varS(ssget "A" (list (cons 8 "��ʵ��"))))
	(if (/= varS nil )(progn
		(command "hideobjects" varS "")
	) )

  	(setvar "clayer" "��ʵ��")

    (command "-layer" "off" "0"   "")
    (command "-layer" "off" "�ο���"   "")
    (command "-layer" "off" "��ʱͼ��"   "")
    (command "-layer" "off" "Defpoints"   "")

    (command "regen")
    (command "boundary"  pause "" )
    (setvar "clayer" "��ʵ��")

    (command "-layer" "on" "�ο���"   "")
    (command "-layer" "on" "��ʱͼ��"   "")
    (command "-layer" "on" "Defpoints"   "")
    (command "-layer" "on" "0"   "")
    (setvar "clayer"  varCLayer )
    (command "unisolateobjects" )

)
(defun c:zx() (command "line") )
(defun c:zxx() (command "point") )
(defun c:zxc() (c:zpline) )
;;"GEOMCONSTRAINT"
;;"DIMCONSTRAINT"
(defun c:zfgh() (command "GEOMCONSTRAINT" "H" pause ) )    ;ˮƽ
(defun c:zfgv() (command "GEOMCONSTRAINT" "v" pause ) )    ;��ֱ
(defun c:zfgp() (command "GEOMCONSTRAINT" "P" pause ) )    ;��ֱ
(defun c:zfgpa() (command "GEOMCONSTRAINT" "Pa" pause ) )  ;ƽ��
(defun c:zfgt() (command "GEOMCONSTRAINT" "t" pause ) )    ;����
(defun c:zfgsm() (command "GEOMCONSTRAINT" "sm" pause ) )  ;ƽ��
(defun c:zfgc() (command "GEOMCONSTRAINT" "c" pause ) )    ;�غ�
(defun c:zfgcon() (command "GEOMCONSTRAINT" "con" pause ) );ͬ��
(defun c:zfgcol() (command "GEOMCONSTRAINT" "col" pause ) );����
(defun c:zfgs() (command "GEOMCONSTRAINT" "s" pause ) )    ;�Գ�
(defun c:zfge() (command "GEOMCONSTRAINT" "e" pause ) )    ;���
(defun c:zfgf() (command "GEOMCONSTRAINT" "f" pause ) )    ;�̶�

(defun c:gg() (command "DIMCONSTRAINT" "l" pause ) )
(defun c:gge() (command "GEOMCONSTRAINT" "e" pause ) )    ;���
(defun c:gga() (command "DIMCONSTRAINT" "a" pause ) )
(defun c:ggaa() (command "DIMCONSTRAINT" "an" pause ) )
(defun c:ggr() (command "DIMCONSTRAINT" "r" pause ) )
(defun c:ggd() (command "DIMCONSTRAINT" "d" pause ) )
(defun c:ggt() (command "GEOMCONSTRAINT" "t" pause ) )
(defun c:ggc() (command "GEOMCONSTRAINT" "c" pause ) )
(defun c:ggf() (command "GEOMCONSTRAINT" "f" pause ) )
(defun c:ggcf() (command "GEOMCONSTRAINT" "col" pause ) )
(defun c:ggcc() (command "GEOMCONSTRAINT" "con" pause ) )

(defun c:zfdl() (command "DIMCONSTRAINT" "l" pause ) )     ;����
(defun c:zfdh() (command "DIMCONSTRAINT" "h" pause ) )     ;ˮƽ
(defun c:zfdv() (command "DIMCONSTRAINT" "v" pause ) )     ;��ֱ
(defun c:zfda() (command "DIMCONSTRAINT" "a" pause ) )     ;����
(defun c:zgg()  (command "DIMCONSTRAINT" "a" "2l" pause ) );�߼��
(defun c:zff()  (command "DIMCONSTRAINT" "a" "o"  pause ) );����
(defun c:zfdan()(command "DIMCONSTRAINT" "an" pause ) )    ;�Ƕ�
(defun c:zfdr() (command "DIMCONSTRAINT" "r" pause ) )     ;�뾶
(defun c:zfdd() (command "DIMCONSTRAINT" "d" pause ) )     ;ֱ��

(defun c:zfghˮƽ() (command "GEOMCONSTRAINT" "H" pause ) )    ;ˮƽ
(defun c:zfgv��ֱ() (command "GEOMCONSTRAINT" "v" pause ) )    ;��ֱ
(defun c:zfgp��ֱ() (command "GEOMCONSTRAINT" "P" pause ) )    ;��ֱ
(defun c:zfgpaƽ��() (command "GEOMCONSTRAINT" "Pa" pause ) )  ;ƽ��
(defun c:zfgt����() (command "GEOMCONSTRAINT" "t" pause ) )    ;����
(defun c:zfgsmƽ��() (command "GEOMCONSTRAINT" "sm" pause ) )  ;ƽ��
(defun c:zfgc�غ�() (command "GEOMCONSTRAINT" "c" pause ) )    ;�غ�
(defun c:zfgconͬ��() (command "GEOMCONSTRAINT" "con" pause ) );ͬ��
(defun c:zfgcol����() (command "GEOMCONSTRAINT" "col" pause ) );����
(defun c:zfgs�Գ�() (command "GEOMCONSTRAINT" "s" pause ) )    ;�Գ�
(defun c:zfge���() (command "GEOMCONSTRAINT" "e" pause ) )    ;���
(defun c:zfgf�̶�() (command "GEOMCONSTRAINT" "f" pause ) )    ;�̶�

(defun c:zfdl����() (command "DIMCONSTRAINT" "l" pause ) )     ;����
(defun c:zfdhˮƽ() (command "DIMCONSTRAINT" "h" pause ) )     ;ˮƽ
(defun c:zfdv��ֱ() (command "DIMCONSTRAINT" "v" pause ) )     ;��ֱ
(defun c:zfda����() (command "DIMCONSTRAINT" "a" pause ) )     ;����
(defun c:zgg�߼��()  (command "DIMCONSTRAINT" "a" "2l" pause ) );�߼��
(defun c:zff����()  (command "DIMCONSTRAINT" "a" "o"  pause ) );����
(defun c:zfdan�Ƕ�()(command "DIMCONSTRAINT" "an" pause ) )    ;�Ƕ�
(defun c:zfdr�뾶() (command "DIMCONSTRAINT" "r" pause ) )     ;�뾶
(defun c:zfddֱ��() (command "DIMCONSTRAINT" "d" pause ) )     ;ֱ��
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;����ֱ��
(defun c:zzc()
  (setvar "TRIMMODE" 1 ) ;;;
  (setvar "FILLETRAD" 0 );;;
  (command "fillet" pause );
 )
;;��������Բ��
(defun c:zzf()
  (command "fillet" "r" pause )
  (setvar "TRIMMODE" 0 );
  (command "fillet"    );
)
;;��������Բ��
(defun c:zzff(/ varR0 varR )
  (command "fillet" "r" pause )
  (setvar "TRIMMODE" 1 );
  (command "fillet"    );
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zmc()
  (command "centermark" pause)
  )
(defun c:zml()
   (command "centerline" pause)
  )

(defun c:zsa( / varV )
  ( setq varV (getvar "pickadd") )
  (if (/= varV 2)
    (progn (setvar "pickadd" 2) )
    (progn (setvar "pickadd" 0) )
  )
)

;;;;
;pickadd
;;;;
(defun c:zpa()
  (command "pickadd" 2 )
)

(defun c:zpaoff()
  (command "pickadd" 0 )
)

(defun get_all_layer_name(/ varL )
   ( setq varL "�ߴ���,0,�����߲�,���߲�,ϸʵ�߲�,��ʵ�߲�,�ߴ��߲�,�����߲�,���ز�,Defpoints,ͼ��2,��ʵ��,ͼ��1,BIAOZHU,��ע,ϸʵ��,������,����,����ӡ,BZ,˫�㻮��,TEXT,�ο���,ͼֽ����,��ʱͼ��,��ʵ��_�ǻ�е�ӹ�,��ʵ��_�ּӹ�,�ο���" )
   )

;
(defun c:cc1( / varSelect varColor )
  (setq varSelect(ssget ":E" ) )
  ;(command "change" )
  (if (/= varSelect nil)(progn
  (setq varColor (getvar "cecolor") )
  (command "change" varSelect "" "p" "c" "t" "222,78,12"  "" )))
)
;
(defun c:cc2( / varSelect varColor )
  (setq varSelect(ssget ":E" ) )
  ;(command "change" )
  (if (/= varSelect nil)(progn
  (setq varColor (getvar "cecolor") )
  (command "change" varSelect "" "p" "c" "t" "142,240,56"  "" )))
)
;
(defun c:cc3( / varSelect varColor )
  (setq varSelect(ssget ":E" ) )
  ;(command "change" )
  (if (/= varSelect nil)(progn
  (setq varColor (getvar "cecolor") )
  (command "change" varSelect "" "p" "c" "t" "13,200,255"  "" )))
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zgdns();��������Լ��
  (command "DCDISPLAY" "all" "" "H" )
  (command "CONSTRAINTBAR" "all" "" "H" )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun ____z_my_error(S)
  ( princ "\nmy error\n")
  (princ (strcat "\n ERROR :  " S) )
  ____z_load_state()
  ;( princ "\nmy error\n")
)

(defun ____z_save_state()
  ;����oldֵ
  (setq ____zg_osmode (getvar "OSMODE") )
  (setq ____zg_autosnap (getvar "AUTOSNAP") )
  (setq ____zg_blipmode (getvar "BLIPMODE") )
  (setq ____zg_cmdecho (getvar "CMDECHO") )
  (setq ____zg_error *error* )
  ;�洢��ֵ
  (setvar "OSMODE" 0 )    ;;16317
  (setvar "AUTOSNAP" 0 )  ;;63
  (setvar "CMDECHO" 0)
  (setvar "BLIPMODE" 0)
  (setq *error* ____z_my_error )

)


(defun zsave()
  (setvar "OSMODE" 0 )    ;;16317
  (setvar "AUTOSNAP" 0 )  ;;63
  (setvar "CMDECHO" 0 )
  (setvar "BLIPMODE" 0 )

)

(defun c:zload()
  (setvar "OSMODE" 16317 )    ;;16317
  (setvar "AUTOSNAP" 63 )     ;;63
  (setvar "CMDECHO" 1 )
  (setvar "BLIPMODE" 0 )

)

(defun ____z_load_state()
  ( princ "\nload\n")
  (setvar "OSMODE" ____zg_osmode )    ;;16317
  (setvar "AUTOSNAP" ____zg_autosnap )  ;;63
  (setvar "CMDECHO" ____zg_cmdecho )
  (setvar "BLIPMODE" ____zg_blipmode)
  (setq *error* ____zg_error )
  ( princ "\nload\n")
)

(defun c:ztest()
  ( ____z_save_state )
  ( princ "\naAA\n")
  ( command "line" pause )
  ( ____z_load_state )
  ( princ "\nrBB\n")
)

;;;����ԳƵ�
(defun c:_____z2p(  )

      (command "_.clayer" "�ο���")
      (command "point" pause)
      (command "point" pause)
      (command "GEOMCONSTRAINT" "S" "2p" pause)
)

(defun c:z2p ( /
              ;functionStart_this
              ;normalReturn_this
              *error*
              ;functionRun_this
              ;functionClearEnvironment
              varCmdEcho
              varOSMode
              varAutoSNAP
              varSNAPMode
              varBLIPMode
              varCLayer
              )

  ;cmdecho
  ;OSMODE
  ;SNAPMODE
  ;AUTOSNAP
  ;BLIPMODE


   (defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )

   (functionStart_this)

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )

   (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     (setvar "SNAPMODE"  0 )
     (setvar "AUTOSNAP"  0 )
     (setvar "osmode"    0 )
     (setvar "BLIPMODE"  0 )

   )

    (defun functionRun_this( /
                     varPoint0
                     varPoint1
                     )

      (functionClearEnvironment)

      (command "_.clayer" "�ο���")
      (setq varPoint0(getpoint "ָ����һ����:\n") )
      (command "point" varPoint0)
      (setq varPoint1(getpoint "ָ���ڶ�����:\n") )
      (command "point" varPoint1)
      (command "GEOMCONSTRAINT" "s" "2p"  varPoint0 varPoint1 pause)

    )

    (functionRun_this)
    (normalReturn_this)

    (princ)

);;;;;;;;;;;;;;;;;

;;tk
(defun zp0()
       (list
	 (float (car _0_zzp__))
	 (float (cadr _0_zzp__))
	 ;(float (caddr __zzp__))
       )
)

(defun c:czp0()
       (setq _0_zzp__ (getpoint "ָ��(0)�㣺") )
)

(defun zp1()
       (list
	 (float (car _1_zzp__))
	 (float (cadr _1_zzp__))
	 ;(float (caddr __zzp__))
       )
)

(defun c:czp1()
       (setq _1_zzp__ (getpoint "ָ��(1)�㣺") )
)


;;;;;;;;;;;;;;;;;;;;;;

(defun c:zr()  (command "-layer" "on" "�ο���" "" ) ( command "clayer" "�ο���"));;;     �л���ͼ��ο���
(defun c:zs()  (command "-layer" "on" "�ߴ���" "" ) ( command "clayer" "�ߴ���"));;;     �л���ͼ��ߴ���
(defun c:zt()  (command "-layer" "on" "��ʵ��" "" ) ( command "clayer" "��ʵ��"));;;     �л���ͼ���ʵ��
(defun c:ztd() (command "-layer" "on" "˫�㻮��" "" ) (command "clayer" "˫�㻮��"));;;  �л���ͼ��˫�㻮��
(defun c:zf()  (command "-layer" "on" "ϸʵ��" "" ) ( command "clayer" "ϸʵ��"));;;     �л���ͼ��ϸʵ��
(defun c:zd()  (command "-layer" "on" "����" "" ) ( command "clayer" "����"));;;       �л���ͼ������         dotted line
(defun c:zc()  (command "-layer" "on" "������" "" ) ( command "clayer" "������"));;;     �л���ͼ��������
(defun c:zl()  (command "-layer" "on" "ͼֽ����" "" ) ( command "clayer" "ͼֽ����"));;;   �л���ͼ��ͼֽ����
(defun c:zor() (command "-layer" "on" "��ʱͼ��" "" ) (command "clayer" "��ʱͼ��"));;;  �л�����ʱͼ��
(defun c:zpr() (command "-layer" "on" "�ο���" "" ) (command "clayer" "�ο���"));;;    �л�����ʱͼ��
(defun c:zz()  (command "-layer" "on" "0" "" ) ( command "clayer" "0") );;;          �л���0��
(defun c:ztn() (command "-layer" "on" "��ʵ��_�ǻ�е�ӹ�" "" ) (command "clayer" "��ʵ��_�ǻ�е�ӹ�"));;;  �л�����ʵ��_�ǻ��ӹ�

(defun c:zpon()(command "PICKSTYLE" "1"));;;     ����ѡ��
(defun c:zpoff()(command "PICKSTYLE" "0"));;;    �ر���ѡ��

(defun c:cztn( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "��ʵ��_�ǻ�е�ӹ�" "c" "BYLAYER" "" ))
(defun c:czr( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "�ο���" "c" "BYLAYER" "" ))
(defun c:czs( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "�ߴ���" "c" "BYLAYER" "" ))
(defun c:czt( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "��ʵ��" "c" "BYLAYER" "" ))
(defun c:cztd( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "˫�㻮��" "c" "BYLAYER" "" ))
(defun c:czf( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "ϸʵ��" "c" "BYLAYER" "" ))
(defun c:czd( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "����" "c" "BYLAYER" "" ))
(defun c:czc( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "������" "c" "BYLAYER" "" ))
(defun c:czl( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "ͼֽ����" "c" "BYLAYER" "" ))
(defun c:czor( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "��ʱͼ��" "c" "BYLAYER" "" ))
(defun c:czz( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "0" "c" "BYLAYER" "" ))

(defun c:zdhal()  (command "dimstyle" "R" "һ��_Ĭ�Ϲ���L") );�л���ע��ʽΪһ��_Ĭ�Ϲ���L
(defun c:zdha()  (command "dimstyle" "R" "һ��_Ĭ�Ϲ���") );�л���ע��ʽΪһ��_Ĭ�Ϲ���
(defun c:zdn()  (command "dimstyle"  "R" "Ĭ�Ϲ���") );�л���ע��ʽΪĬ�Ϲ���
(defun c:zdl()  (command "dimstyle"  "R" "���޹���") );�л���ע��ʽΪ���޹���
(defun c:zds()  (command "dimstyle"  "R" "�Գƹ���") );�л���ע��ʽΪ�Գƹ���
(defun c:zdv()  (command "dimstyle"  "R" "�ӿ�_Ĭ�Ϲ���") );�л���ע��ʽΪ�ӿ�_Ĭ�Ϲ���
(defun c:zdlo() (command "dimstyle"  "R" "���޹���_0P1") );�л���ע��ʽΪ���޹���_0P1
(defun c:zdle() (command "dimstyle"  "R" "���޹���_0P8") );�л���ע��ʽΪ���޹���_0P8
(defun c:zdlt() (command "dimstyle"  "R" "���޹���_0P3") );�л���ע��ʽΪ���޹���_0P3
(defun c:zdls() (command "dimstyle"  "R" "���޹���_0P2") );�л���ע��ʽΪ���޹���_0P2
(defun c:zdsf() (command "dimstyle"  "R" "�Գƹ���_0P15") );�л���ע��ʽΪ �Գƹ���_0P15
(defun c:zdst() (command "dimstyle"  "R" "�Գƹ���_0P12") );�л���ע��ʽΪ �Գƹ���_0P12

(defun c:czdhaL( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "һ��_Ĭ�Ϲ���L")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdha( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "һ��_Ĭ�Ϲ���")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdn( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "Ĭ�Ϲ���")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdl( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "���޹���")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czds( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "�Գƹ���")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdv( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "�ӿ�_Ĭ�Ϲ���")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdlo( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "���޹���_0P1")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdlt( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "���޹���_0P3")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdls( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "���޹���_0P2")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdle( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "���޹���_0P8")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdsf( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "�Գƹ���_0P15")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )
(defun c:czdst( / varS )(setq varS( ssget ":E" ))(command "dimstyle" "R" "�Գƹ���_0P12")(command "dimstyle" "A" varS "" )(command "dimstyle" "R" "Ĭ�Ϲ���" ) )

;(getvar "cmleaderstyle")
(defun c:zmldp( /
	       *error*
	       varCLayer
	       )

  (setq  varCLayer   (getvar "clayer") )

  (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "clayer" "�ߴ���" )
  (setvar "cmleaderstyle" "����Point" )
  (command "mleader" pause)
  (normalReturn_this)

)

(defun c:zmldn( /
	       *error*
	       varCLayer
	       )

  (setq  varCLayer   (getvar "clayer") )

  (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "clayer" "�ߴ���" )
  (setvar "cmleaderstyle" "���߱�ע" )
  (command "mleader" pause)
  (normalReturn_this)

)

(defun c:zmld( /
	       *error*
	       varCLayer
	       )

  (setq  varCLayer   (getvar "clayer") )

  (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "clayer" "�ߴ���" )
  (setvar "cmleaderstyle" "�޼�ͷ����" )
  (command "mleader" pause)
  (normalReturn_this)

)

(defun c:zmlds(/
	       *error*
	       varCLayer)

(setq  varCLayer   (getvar "clayer") )

  (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (princ "\n")

    )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "clayer" "�ߴ���" )

  (setvar "cmleaderstyle" "Standard" )
  (command "mleader" pause)
  (normalReturn_this)

)

(defun div2(x)(/ x 2.0));;;                      ����2.0
(defun z2(x)(/ x 2.0));;;                        ����2.0

;;;����
(defun c:zqs( / *error* )

(defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  ;;;���ߴ������ڶ���
(defun c_zsu( / varS )

  (command "hatchtoback" )
  (command "texttofront" "a")

)

  ;;;����ʵ�����ڶ���
  (defun c_ztu( / varS )

  (setq varS(ssget "A" (list (cons 8 "��ʵ��*"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "F" )
  )

  ;(setq varS(ssget "A" (list (cons 8 "��ʵ��_�ǻ�е�ӹ�"))))
  ;(if(/= varS nil)
  ;	(command "DRAWORDER" varS "" "F" )
  ;)

)

  (setvar "cmdecho" 0)

  (c_ztu)
  (c_zsu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (command "-layer"  "p" "n" "�ο���" ""  )
  (command "-layer"  "p" "n" "�ο���" ""  )
  (command "-layer"  "p" "n" "��ʱͼ��" ""  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (command "qsave")
  (setvar "cmdecho" 1)
)

(defun c:zopen()
  (command "-layer"  "p" "p" "�ο���" ""  )
  (command "-layer"  "p" "p" "�ο���" ""  )
  (command "-layer"  "p" "p" "��ʱͼ��" ""  )
)

;;���ߴ������ڶ���
(defun c:zsu( / varS )

  (setq varS(ssget "A" (list (cons 8 "�ߴ���"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "F" )
  )

)

;;����ʵ����Ϊ����
(defun c:ztu( / varS )

  (setq varS(ssget "A" (list (cons 8 "��ʵ��"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "F" )
  )

  (setq varS(ssget "A" (list (cons 8 "��ʵ��_�ǻ�е�ӹ�"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "F" )
  )

)

;;����ʵ����Ϊ����
(defun c:dztu( / varS )

  (setq varS(ssget "A" (list (cons 8 "��ʵ��"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "B" )
  )

  (setq varS(ssget "A" (list (cons 8 "��ʵ��_�ǻ�е�ӹ�"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "B" )
  )

)

;;����ʱͼ����Ϊ����
(defun c:zoru( / varS )
  (setq varS(ssget "A" (list (cons 8 "��ʱͼ��"))))
  (if(/= varS nil)
  	(command "DRAWORDER" varS "" "F" )
  )
)

;;���ο�����Ϊ�ײ�
;(defun c:zrd( / varS )
;  (setq varS(ssget "A" (list (cons 8 "�ο���"))))
;  (if(/= varS nil)
;  	(command "DRAWORDER" varS "" "b" )
;  )
;)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;����ͼ����С
;��֤ �� �� / �� �� = 1.414
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(;;;���볤����
 defun pagesize(x y / fx fy fz);;;pagesize
  (setq fx(float x))
  (setq fy(float y))
  (setq fz(/ fx fy))
  (if (<= fz 1.414)
    (progn
      (princ "!w:")
      (princ (* fy 1.414))
      (princ ",h:")
      (princ fy)
    );;;if
    (progn
      (princ "w:")
      (princ fx)
      (princ ",!h:")
      (princ (/ fx 1.414))
    );;;else
  );;;pass if
  (princ)
  ;;;pass pagesize
)


;|concentric circles|;
;��ͬ��Բ
(defun privatezcc (/
	      point_0			;Բ��|;
	      point_temp		;�û������|;
	      point_temp_1		;��point_0ΪԲ��(point_temp_1,point_temp)Ϊֱ����Բ|;
	     )
  (setq point_0 (getpoint "����Բ��:"))
  (if (/= point_0 nil)
    (progn
      (setq point_temp '(1,1,1))
      (while (/= point_temp nil)
	(progn
	  (setq point_temp (getpoint "Բ��һ��:"))
	  (if (/= point_temp nil)
	    (progn
	      (setq point_temp_1
		     (list
		       (- (* 2.0 (car point_0))
			  (car point_temp)
		       )
		       (- (* 2.0 (cadr point_0))
			  (cadr point_temp)
		       )
		       (- (* 2.0 (caddr point_0))
			  (caddr point_temp)
		       )
		     )
	      )
	      (command "circle" "2p" point_temp_1 point_temp)
	    )
	  )
	)
      )
    )
  )
  (princ)
)

(
defun c:zcc()  
 (command "arxzcc")
;  (if (/= nil arxzcc ) 
;  (progn
;    (command "arxzcc")
;  )
;  (progn
;    (privatezcc)
;  )
; )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;draw bound
(defun c:zdb ( /
   argWidth
	 argHeight
	 argPointTopLeft
	 varRate
   varCmdEcho
   varOSMode
   varAutoSNAP
   varSNAPMode
   varBLIPMode
   *error*
   varCLayer
	      )

   (defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )

   (functionStart_this)

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )

   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     (setvar "SNAPMODE"  0 )
     (setvar "AUTOSNAP"  0 )
     (setvar "osmode"    0 )
     (setvar "BLIPMODE"  0 )

   )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (defun zDrawBoundInner (varPointTopLeft	      varWidth
			  varHeight	/	      varIndex
			  varOffset	varP0	      varP1
			  ABCDEFlist
			 )

;;;��������
    (defun pointAdd (a b)
      (list (+ (float (car a)) (float (car b)))
	    (+ (float (cadr a)) (float (cadr b)))
	    (+ (float (caddr a)) (float (caddr b)))
      )
    )

;;;���ƽ�������
    (defun functionDrawString (beginPoint endPoint drawString)
      (command "_.mtext"  beginPoint "S"	"����ABCDEF"
	       "J"	  "mc"	     "C"	"n"	   endPoint
	       drawString ""
	      )
      (princ)
    )
;;;����ͼ��
    (command "_.clayer" "ͼֽ����")
;;;������߿�
    (defun drawOuterBound (varPTL varW varH / varP1 varP2 varP3)
      (setq varP1 (pointAdd varPTL (list varW 0.0 0.0)))
      (setq varP2 (pointAdd varPTL (list varW (- 0.0 varH) 0.0)))
      (setq varP3 (pointAdd varPTL (list 0.0 (- 0.0 varH) 0.0)))
      (command "_.line" varPTL varP1 varP2 varP3 "C")
      (princ "������߿����:")
      (princ "\r")
    )
    (drawOuterBound varPointTopLeft varWidth varHeight)
;;;����ͼ��
    (command "_.clayer" "��ʵ��")
;;;�����ڱ߿�
    (defun drawInnerBound (varPTL1 varW1 varH1 / varP11 varP21 varP31)
      (setq varP11 (pointAdd varPTL1 (list varW1 0.0 0.0)))
      (setq varP21 (pointAdd varPTL1 (list varW1 (- 0.0 varH1) 0.0)))
      (setq varP31 (pointAdd varPTL1 (list 0.0 (- 0.0 varH1) 0.0)))
      (command "_.line" varPTL1 varP11 varP21 varP31 "C")
      (princ "�����ڱ߿����:")
      (princ "\r")
    )
    (drawInnerBound
      (pointAdd varPointTopLeft (list 20.0 -20.0 0.0))
      (- varWidth 40.0)
      (- varHeight 40.0)
    )
;;;����ƫ����
    (setq varOffset (/ (- varHeight 40.0) 6.0))
;;;����ͼ��
    (command "_.clayer" "ͼֽ����")
;;;�������ֱ߿���
    (setq varIndex 0)
    (setq varP0 (pointAdd varPointTopLeft (list 0.0 -20.0 0.0)))
    (setq varP1	(pointAdd varPointTopLeft
			  (list (- varWidth 20.0) -20.0 0.0)
		)
    )
    (repeat 5
      (progn
	(setq varIndex (- varIndex 1))
	(command "_.line"
		 (pointAdd varP0 (list 0 (* varIndex varOffset) 0))
		 "@20,0"
		 ""
	)
	(command "_.line"
		 (pointAdd varP1 (list 0 (* varIndex varOffset) 0))
		 "@20,0"
		 ""
	)
      )
    )
;;;

;;;����ͼ��
    (command "_.clayer" "ͼֽ����")
;;;����ƫ����
    (setq varIndex 1)
    (setq ABCDEFlist (list "?" "A" "B" "C" "D" "E" "F" "!"))
    (setq varOffset (* -1.0 varOffset))
    (setq
      varP0 (pointAdd varPointTopLeft
		      (list (- varWidth 20.0) (- -20.0 varOffset) 0.0)
	    )
    )
    (setq varP1	(pointAdd varPointTopLeft
			  (list varWidth -20.0 0.0)
		)
    )
;;;��������
    (repeat 6
      (progn
	(functionDrawString
	  (pointAdd varP0 (list 0 (* varIndex varOffset) 0))
	  (pointAdd varP1 (list 0 (* varIndex varOffset) 0))
	  (nth varIndex ABCDEFlist)
	)
	(setq varIndex (+ 1 varIndex))
      )
    )

  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;�������
  (setq argPointTopLeft (getpoint "������Ͻǵĵ�:"))
  (setq argWidth (getdist "������εĿ�:"))
  (setq argHeight (getdist "������εĳ�:"))

  (setq argWidth (+ 40.0 argWidth))
  (setq argHeight (+ 40.0 argHeight))

;;;����ͼ��
  (setq varRate (/ (float argWidth) (float argHeight)))

					;OSMODE����׽
					;AUTOSNAP׷��
  (functionClearEnvironment)

  (if (< varRate 1.414)
    (zDrawBoundInner
      argPointTopLeft
      (* argHeight 1.414)
      argHeight
    )
    (zDrawBoundInner
      argPointTopLeft
      argWidth
      (/ argWidth 1.414)
    )
  )

  (normalReturn_this)

  (princ)

);end of zdb

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;draw bound
(defun c:zdb1 ( /
   argWidth
   argHeight
   argPointTopLeft
   varRate
   varCmdEcho
   varOSMode
   varAutoSNAP
   varSNAPMode
   varBLIPMode
   *error*
   varCLayer
        )

   (defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )

   (functionStart_this)

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )

   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     (setvar "SNAPMODE"  0 )
     (setvar "AUTOSNAP"  0 )
     (setvar "osmode"    0 )
     (setvar "BLIPMODE"  0 )

   )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (defun zDrawBoundInner (varPointTopLeft
        varWidth
        varHeight  /
        varIndex
        varOffset
        varP0
        varP1
        ABCDEFlist
       )

;;;��������
    (defun pointAdd (a b)
      (list (+ (float (car a)) (float (car b)))
      (+ (float (cadr a)) (float (cadr b)))
      (+ (float (caddr a)) (float (caddr b)))
      )
    )

;;;���ƽ�������
    (defun functionDrawString (beginPoint endPoint drawString)
      (command "_.mtext"  beginPoint "S"  "����ABCDEF"
         "J"    "mc"       "C"  "n"    endPoint
         drawString ""
        )
      (princ)
    )
;;;����ͼ��
    (command "_.clayer" "ͼֽ����")
;;;������߿�
    (defun drawOuterBound (varPTL varW varH / varP1 varP2 varP3)
      (setq varP1 (pointAdd varPTL (list varW 0.0 0.0)))
      (setq varP2 (pointAdd varPTL (list varW (- 0.0 varH) 0.0)))
      (setq varP3 (pointAdd varPTL (list 0.0 (- 0.0 varH) 0.0)))
      (command "_.line" varPTL varP1 varP2 varP3 "C")
      (princ "������߿����:")
      (princ "\r")
    )
    (drawOuterBound varPointTopLeft varWidth varHeight)
;;;����ͼ��
    (command "_.clayer" "��ʵ��")
;;;�����ڱ߿�
    (defun drawInnerBound (varPTL1 varW1 varH1 / varP11 varP21 varP31)
      (setq varP11 (pointAdd varPTL1 (list varW1 0.0 0.0)))
      (setq varP21 (pointAdd varPTL1 (list varW1 (- 0.0 varH1) 0.0)))
      (setq varP31 (pointAdd varPTL1 (list 0.0 (- 0.0 varH1) 0.0)))
      (command "_.line" varPTL1 varP11 varP21 varP31 "C")
      (princ "�����ڱ߿����:")
      (princ "\r")
    )
    (drawInnerBound
      (pointAdd varPointTopLeft (list 20.0 -20.0 0.0))
      (- varWidth 40.0)
      (- varHeight 40.0)
    )
;;;����ƫ����
    (setq varOffset (/ (- varHeight 40.0) 6.0))
;;;����ͼ��
    (command "_.clayer" "ͼֽ����")
;;;�������ֱ߿���
    (setq varIndex 0)
    (setq varP0 (pointAdd varPointTopLeft (list 0.0 -20.0 0.0)))
    (setq varP1 (pointAdd varPointTopLeft
        (list (- varWidth 20.0) -20.0 0.0)
    )
    )
    (repeat 5
      (progn
  (setq varIndex (- varIndex 1))
  (command "_.line"
     (pointAdd varP0 (list 0 (* varIndex varOffset) 0))
     "@20,0"
     ""
  )
  (command "_.line"
     (pointAdd varP1 (list 0 (* varIndex varOffset) 0))
     "@20,0"
     ""
  )
      )
    )
;;;

;;;����ͼ��
    (command "_.clayer" "ͼֽ����")
;;;����ƫ����
    (setq varIndex 1)
    (setq ABCDEFlist (list "?" "A" "B" "C" "D" "E" "F" "!"))
    (setq varOffset (* -1.0 varOffset))
    (setq
      varP0 (pointAdd varPointTopLeft
          (list (- varWidth 20.0) (- -20.0 varOffset) 0.0)
      )
    )
    (setq varP1 (pointAdd varPointTopLeft
        (list varWidth -20.0 0.0)
    )
    )
;;;��������
    (repeat 6
      (progn
  (functionDrawString
    (pointAdd varP0 (list 0 (* varIndex varOffset) 0))
    (pointAdd varP1 (list 0 (* varIndex varOffset) 0))
    (nth varIndex ABCDEFlist)
  )
  (setq varIndex (+ 1 varIndex))
      )
    )

  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;�������
  (setq argPointTopLeft (getpoint "������Ͻǵĵ�:"))
  (setq argWidth (getdist "������εĿ�:"))
  (setq argHeight (getdist "������εĳ�:"))

  (setq argWidth (+ 40.0 argWidth))
  (setq argHeight (+ 40.0 argHeight))

;;;����ͼ��
  (setq varRate (/ (float argHeight) (float argWidth)  ) )

          ;OSMODE����׽
          ;AUTOSNAP׷��
  (functionClearEnvironment)

  (if (> varRate 1.414 )
    (zDrawBoundInner
      argPointTopLeft
      (/ argHeight 1.414 );width
      argHeight           ;height
    )
    (zDrawBoundInner
      argPointTopLeft
      argWidth            ;width
      (* argWidth 1.414 )  ;height
    )
  )

  (normalReturn_this)

  (princ)

);end of zdb1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;drawRoundRect
;;zdrr
(defun c:zdrr(/
		     varPointStart
		     varWidth
		     varHeight
		     varR
		     varRI
		     varPointC1
		     varPointC2
         varCmdEcho
         varOSMode
         varAutoSNAP
         varSNAPMode
         varBLIPMode
         *error*
         varCLayer
		     )

(defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )

   (functionStart_this)

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )

   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     (setvar "SNAPMODE"  0 )
     (setvar "AUTOSNAP"  0 )
     (setvar "osmode"    0 )
     (setvar "BLIPMODE"  0 )

   )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

(setq varPointStart(getpoint "��㣺" ))
(setq varWidth(getdist "��"))
(setq varHeight(getdist "�ߣ�"))

  (defun pointAdd (a b)
      (list (+ (float (car a)) (float (car b)))
	    (+ (float (cadr a)) (float (cadr b)))
	    (+ (float (caddr a)) (float (caddr b)))
      )
    )

  (setq varR (/ varWidth 2.0))
  (setq varRI(/ varWidth -2.0))
  (setq varPointC1(pointAdd varPointStart (list 0.0 varRI 0.0)))
  (setq varPointC2(pointAdd varPointStart (list 0.0 (- varR varHeight) 0.0)))


  (functionClearEnvironment)
  ;;;���ƾ���

   (command "arc"
	   varPointStart
	   "C" varPointC1
	   "A" 90
   )

  (command "line"
	   (pointAdd varPointC1 (list varRI 0 0))
	   (pointAdd varPointC2 (list varRI 0 0))
	   ""
   )

  (command "arc"
	   (pointAdd varPointC2 (list varRI 0 0))
	   "C" varPointC2
	   "A" 90
  )

  (command "arc"
	   (pointAdd varPointC2 (list 0 varRI 0))
	   "C" varPointC2
	   "A" 90
  )

   (command "line"
	   (pointAdd varPointC1 (list varR 0 0))
	   (pointAdd varPointC2 (list varR 0 0))
	   ""
   )


  (command "arc"
	   (pointAdd varPointC1 (list varR 0 0))
	   "C" varPointC1
	   "A" 90
  )

  (normalReturn_this)

)
;;;;;;;;;;;;;;;;;;;;;;

(defun c:zru( / varSelect )
	(setq varSelect( ssget "A" (list (cons -4   "<or") (cons 8 "�ο���") (cons 8 "�ο���")  (cons 8 "��ʱͼ��") (cons -4 "or>") )  ) )
	( if(/= nil varSelect )
	(command "DRAWORDER" varSelect "" "F" )
	)
)

(defun c:zrd( / varSelect )
	(setq varSelect( ssget "A" (list (cons -4   "<or") (cons 8 "�ο���") (cons 8 "�ο���")  (cons 8 "��ʱͼ��") (cons -4 "or>") )  ) )
	( if(/= nil varSelect )
	(command "DRAWORDER" varSelect "" "B" )
	)
)

;;;;;;;;;;;;;;;;;;;;;;
(defun c:zhlr ( /
              ;functionStart_this
              ;normalReturn_this
              *error*
              ;functionRun_this
              ;functionClearEnvironment
              varCmdEcho
              varOSMode
              varAutoSNAP
              varSNAPMode
              varBLIPMode
              varCLayer
	            varPoint0
              )

  ;cmdecho
  ;OSMODE
  ;SNAPMODE
  ;AUTOSNAP
  ;BLIPMODE

   (defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )

   (functionStart_this)

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )

   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     (setvar "SNAPMODE"  0 )
     (setvar "AUTOSNAP"  0 )
     (setvar "osmode"    0 )
     (setvar "BLIPMODE"  0 )

   )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

    (defun functionRun_this( /
	             varPoint2
               varPoint1
	             ;varSelect
                     )


      (c:zru);;;;
      ;(setq varSelect nil)
      (command "_.clayer" "�ο���")
      (setq varPoint0(getpoint "ָ����һ����:\n") )

      (functionClearEnvironment)
      (setq varPoint1 (list (+(car varPoint0 ) 5.351) (cadr varPoint0 ) (caddr varPoint0 ) ) )
      (setq varPoint2 (list (-(car varPoint0 ) 5.351) (cadr varPoint0 ) (caddr varPoint0 ) ) )

      ;(command "point" varPoint2)
      ;(setq varSelect (ssget "L") )

      ;(command "point" varPoint1)
      ;(ssadd (ssname (ssget "L") 0) varSelect )


      (command "_.clayer" "�ο���" )
      (command "line" varPoint2 varPoint1 "" )

      ;(setq varSelect (ssname (ssget "L") 0)  )
      ;(command "select" varSelect "" )
      ;(command "AUTOCONSTRAIN" varSelect  ""  )

      (command "GEOMCONSTRAINT" "H" varPoint0 )

    )

    (functionRun_this)
    (normalReturn_this)
    (command "DIMCONSTRAINT" "V" varPoint0 pause)

    (princ)

);;;;;;;;;;;;;;;;;


(defun c:zvlr ( /
              ;functionStart_this
              ;normalReturn_this
              *error*
              ;functionRun_this
              ;functionClearEnvironment
              varCmdEcho
              varOSMode
              varAutoSNAP
              varSNAPMode
              varBLIPMode
              varCLayer
	      varPoint0
              )

  ;cmdecho
  ;OSMODE
  ;SNAPMODE
  ;AUTOSNAP
  ;BLIPMODE


   (defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )

   (functionStart_this)

   (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )



   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     (setvar "SNAPMODE"  0 )
     (setvar "AUTOSNAP"  0 )
     (setvar "osmode"    0 )
     (setvar "BLIPMODE"  0 )

   )

    (defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

    (defun functionRun_this( /
	             varPoint2
               varPoint1
	             ;varSelect
	             ;varLineObj
                     )
      (c:zru);;;;
      (setq varSelect nil)
      (command "_.clayer" "�ο���")
      (setq varPoint0(getpoint "ָ����һ����:\n") )


      (functionClearEnvironment)
      (setq varPoint1 (list (car varPoint0 )  (+ (cadr varPoint0 ) 5.351 ) (caddr varPoint0 ) ) )
      (setq varPoint2 (list (car varPoint0 )  (- (cadr varPoint0 ) 5.351 ) (caddr varPoint0 ) ) )


      ;(command "point" (list (car varPoint0 )  (+ (cadr varPoint0 ) 5.0 ) (caddr varPoint0 ) ) )
      ;(setq varSelect (ssget "L") )

      ;(command "point" (list (car varPoint0 )  (- (cadr varPoint0 ) 5.0 ) (caddr varPoint0 ) ) )
      ;(ssadd (ssname (ssget "L") 0) varSelect )


      (command "_.clayer" "�ο���" )
      (command "line" varPoint2 varPoint1 "" )
      ;(setq varLineObj (ssget "L") )
      ;(setq varSelect (ssname varLineObj 0)  )

      ;(command "select" varSelect "" )
      ;(command "AUTOCONSTRAIN" varSelect  ""  )

      (command "GEOMCONSTRAINT" "V" varPoint0 )
    )

    (functionRun_this)
    (normalReturn_this)
    (command "DIMCONSTRAINT" "H" varPoint0 pause)

    (princ)

);;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;

(defun c:zron( / *error*  )

(defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (command "-layer"
	   "on" "�ο���"
	   "on" "�ο���"
	   "on" "��ʱͼ��"
	   ""
	   )
  (setvar "cmdecho" 1)

  )

(defun c:zroff( / *error* )

(defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (c:zs)
  (command "-layer"
	   "off" "�ο���"
	   "off" "�ο���"
	   "off" "��ʱͼ��"
	   ""
	   )
  (setvar "cmdecho" 1)

  )

(defun c:zpline()
  ;PLINEGEN �������Χ�ƶ�ά����ߵĶ�����������ͼ��
��;PLINETYPE ָ�� AutoCAD �Ƿ�ʹ���Ż��Ķ�ά�����
��;PLINEWID �洢����ߵ�ȱʡ���
  (command "PLINEWID" 0)
  (command "pline" pause "w" 0 0 "h" 0 0 pause )
  )

(defun c:zton( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

    (setvar "cmdecho" 0)
    (command "-layer" "on" "��ʵ��*" "" )
    (setvar "cmdecho" 1)
)

(defun c:ztoff( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

    (setvar "cmdecho" 0)
    (c:zor)
    (command "-layer" "off" "��ʵ��*" "" )
    (setvar "cmdecho" 1)
)

(defun c:zson( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

    (setvar "cmdecho" 0)
    (command "-layer" "on" "�ߴ���" "" )
    (setvar "cmdecho" 1)
)

(defun c:zsoff( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

    (setvar "cmdecho" 0)
    (c:zor)
    (command "-layer" "off" "�ߴ���" "" )
    (setvar "cmdecho" 1)
)

(defun c:zronly( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (c:zor)
    (command "-layer"
"off" "_MarkInformation"
"off" "0"
"off" "�����߲�"
"off" "���߲�"
"off" "ϸʵ�߲�"
"off" "��ʵ�߲�"
"off" "�ߴ��߲�"
"off" "�����߲�"
"off" "���ز�"
"off" "Defpoints"
"off" "ͼ��2"
"off" "��ʵ��"
"off" "ͼ��1"
"off" "BIAOZHU"
"off" "��ע"
"off" "ϸʵ��"
"off" "������"
"off" "����"
"off" "����ӡ"
"off" "BZ"
"off" "˫�㻮��"
"off" "TEXT"
"on" "�ο���"
"off" "ͼֽ����"
"on" "��ʱͼ��"
"off" "��ʵ��_�ǻ�е�ӹ�"
"off" "��ʵ��_�ּӹ�"
"on" "�ο���"
"off" "�ߴ���"
""
  )
  (setvar "clayer" "�ο���")
  (setvar "cmdecho" 1)
)

(defun c:ztonly( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (c:zt)
    (command "-layer"
"off" "_MarkInformation"
"off" "0"
"off" "�����߲�"
"off" "���߲�"
"off" "ϸʵ�߲�"
"off" "��ʵ�߲�"
"off" "�ߴ��߲�"
"off" "�����߲�"
"off" "���ز�"
"off" "Defpoints"
"off" "ͼ��2"
"on" "��ʵ��"
"off" "ͼ��1"
"off" "BIAOZHU"
"off" "��ע"
"off" "ϸʵ��"
"off" "������"
"off" "����"
"off" "����ӡ"
"off" "BZ"
"off" "˫�㻮��"
"off" "TEXT"
"off" "�ο���"
"off" "ͼֽ����"
"off" "��ʱͼ��"
"on" "��ʵ��_�ǻ�е�ӹ�"
"on" "��ʵ��_�ּӹ�"
"off" "�ο���"
"off" "�ߴ���"
""
  )

  (setvar "cmdecho" 1)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun c:zpoint(/
	*error*
		varCLayer
		varAutoSNAP
		varSNAPMode
		varCmdEcho
		varOSMode
		varBLIPMode
	 )

   (defun functionStart_this()
     (setq  varCLayer   (getvar "clayer") )
     (setq  varAutoSNAP (getvar "AUTOSNAP") )
     (setq  varSNAPMode (getvar "SNAPMODE") )
     (setq  varCmdEcho  (getvar "cmdecho") )
     (setq  varOSMode   (getvar "osmode") )
     (setq  varBLIPMode (getvar "BLIPMODE") )
     (princ "\n")

   )
  (functionStart_this)

  (defun normalReturn_this()

     (princ "normal return")
     (setvar "clayer"   varCLayer )
     (setvar "BLIPMODE" varBLIPMode )
     (setvar "cmdecho"  varCmdEcho )
     (setvar "osmode"   varOSMode )
     (setvar "SNAPMODE" varSNAPMode )
     (setvar "AUTOSNAP" varAutoSNAP )
     (princ "\n")

    )



   (defun functionClearEnvironment()

     (setvar "cmdecho"   0 )
     ;(setvar "SNAPMODE"  0 )
     ;(setvar "AUTOSNAP"  0 )
     ;(setvar "osmode"    0 )
     ;(setvar "BLIPMODE"  0 )

   )

(defun *error* ( msg )
        (normalReturn_this)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (c:zpr)
  (command "point" pause  )
  (functionClearEnvironment)
  (normalReturn_this)
  ;(command "GEOMCONSTRAINT" "F" pause )

  )
;;;;;;;;;;;;;;;;;;;;;;

(defun c:zhonly( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (c:zf)
    (command "-layer"
"off" "_MarkInformation"
"off" "0"
"off" "�����߲�"
"off" "���߲�"
"off" "ϸʵ�߲�"
"off" "��ʵ�߲�"
"off" "�ߴ��߲�"
"off" "�����߲�"
"off" "���ز�"
"off" "Defpoints"
"off" "ͼ��2"
"on" "��ʵ��"
"off" "ͼ��1"
"off" "BIAOZHU"
"off" "��ע"
"on" "ϸʵ��"
"off" "������"
"off" "����"
"off" "����ӡ"
"off" "BZ"
"off" "˫�㻮��"
"off" "TEXT"
"off" "�ο���"
"off" "ͼֽ����"
"off" "��ʱͼ��"
"on" "��ʵ��_�ǻ�е�ӹ�"
"on" "��ʵ��_�ּӹ�"
"off" "�ο���"
"off" "�ߴ���"
""
  )

  (setvar "cmdecho" 1)
)

(defun c:zzonly( / *error* )

    (defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)

  (c:zz)
    (command "-layer"
"off" "_MarkInformation"
"on" "0"
"off" "�����߲�"
"off" "���߲�"
"off" "ϸʵ�߲�"
"off" "��ʵ�߲�"
"off" "�ߴ��߲�"
"off" "�����߲�"
"off" "���ز�"
"off" "Defpoints"
"off" "ͼ��2"
"off" "��ʵ��"
"off" "ͼ��1"
"off" "BIAOZHU"
"off" "��ע"
"off" "ϸʵ��"
"off" "������"
"off" "����"
"off" "����ӡ"
"off" "BZ"
"off" "˫�㻮��"
"off" "TEXT"
"off" "�ο���"
"off" "ͼֽ����"
"off" "��ʱͼ��"
"off" "��ʵ��_�ǻ�е�ӹ�"
"off" "��ʵ��_�ּӹ�"
"off" "�ο���"
"off" "�ߴ���"
""
  )

  (setvar "cmdecho" 1)
)
;;;;;;;;;;;;;;;;;;;;;;
(defun c:zdpoff()
     ( command "-layer" "off" "Defpoints" "" )
)

(defun c:zdpon()
     ( command "-layer" "on" "Defpoints" "" )
)

(defun c:zdp()
	 ( command "-layer" "on" "Defpoints" "" )
	 ( command "clayer" "Defpoints" )
)

(defun c:czdp( / varS )(setq varS( ssget ":E" ))(command "change" varS "" "p" "la" "Defpoints" "c" "BYLAYER" "" ))

;;;;;;;;;;;;;;;;;;;;;;

(defun c:zuron( / *error*  )

(defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (command "-layer"
	   "on" "�ο���"
	   "on" "�ο���"
	   "on" "��ʱͼ��"
	   "on" "Defpoints"
	   ""
	   )
  (setvar "cmdecho" 1)

  )

(defun c:zuroff( / *error* )

(defun *error* ( msg )
        (setvar "cmdecho" 1)
        (princ "Zzz:error: ")
        (princ msg)
        (princ "\n")
        (princ)
    )

  (setvar "cmdecho" 0)
  (c:zs)
  (command "-layer"
	   "off" "�ο���"
	   "off" "�ο���"
	   "off" "��ʱͼ��"
	   "off" "Defpoints"
	   ""
	   )
  (setvar "cmdecho" 1)

  )

;;;;;;;;;;;;;;;;;;;;;;
;
;
;endl of the file
;
;
;;;;;;;;;;;;;;;;;;;;;;
;mtp
;join



