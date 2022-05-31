lbl_804AC8EC:
/* 804AC8EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AC8F0  7C 08 02 A6 */	mflr r0
/* 804AC8F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AC8F8  39 61 00 30 */	addi r11, r1, 0x30
/* 804AC8FC  4B BE E5 C9 */	bl func_8009AEC4
/* 804AC900  7C 79 1B 78 */	mr r25, r3
/* 804AC904  83 E1 00 38 */	lwz r31, 0x38(r1)
/* 804AC908  7C 9A 23 78 */	mr r26, r4
/* 804AC90C  7C A4 2B 78 */	mr r4, r5
/* 804AC910  80 63 00 00 */	lwz r3, 0(r3)
/* 804AC914  7C DB 33 78 */	mr r27, r6
/* 804AC918  7D 1C 43 78 */	mr r28, r8
/* 804AC91C  7D 3D 4B 78 */	mr r29, r9
/* 804AC920  7D 5E 53 78 */	mr r30, r10
/* 804AC924  7C E5 3B 78 */	mr r5, r7
/* 804AC928  4B FF FF 89 */	bl aTrainWindow_OperateScrollLimit
/* 804AC92C  90 79 00 00 */	stw r3, 0(r25)
/* 804AC930  7F 64 DB 78 */	mr r4, r27
/* 804AC934  7F 85 E3 78 */	mr r5, r28
/* 804AC938  80 7A 00 00 */	lwz r3, 0(r26)
/* 804AC93C  4B FF FF 75 */	bl aTrainWindow_OperateScrollLimit
/* 804AC940  90 7A 00 00 */	stw r3, 0(r26)
/* 804AC944  7F A6 EB 78 */	mr r6, r29
/* 804AC948  7F C7 F3 78 */	mr r7, r30
/* 804AC94C  80 7F 00 00 */	lwz r3, 0(r31)
/* 804AC950  80 99 00 00 */	lwz r4, 0(r25)
/* 804AC954  80 BA 00 00 */	lwz r5, 0(r26)
/* 804AC958  4B F3 8A B1 */	bl tex_scroll2
/* 804AC95C  39 61 00 30 */	addi r11, r1, 0x30
/* 804AC960  4B BE E5 B1 */	bl func_8009AF10
/* 804AC964  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AC968  7C 08 03 A6 */	mtlr r0
/* 804AC96C  38 21 00 30 */	addi r1, r1, 0x30
/* 804AC970  4E 80 00 20 */	blr 
