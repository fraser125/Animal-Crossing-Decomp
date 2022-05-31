lbl_804AC974:
/* 804AC974  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804AC978  7C 08 02 A6 */	mflr r0
/* 804AC97C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804AC980  39 61 00 60 */	addi r11, r1, 0x60
/* 804AC984  4B BE E5 21 */	bl func_8009AEA4
/* 804AC988  7C 72 1B 78 */	mr r18, r3
/* 804AC98C  83 01 00 68 */	lwz r24, 0x68(r1)
/* 804AC990  7C 93 23 78 */	mr r19, r4
/* 804AC994  7C A4 2B 78 */	mr r4, r5
/* 804AC998  83 21 00 6C */	lwz r25, 0x6c(r1)
/* 804AC99C  7C D4 33 78 */	mr r20, r6
/* 804AC9A0  83 41 00 70 */	lwz r26, 0x70(r1)
/* 804AC9A4  7D 15 43 78 */	mr r21, r8
/* 804AC9A8  83 61 00 74 */	lwz r27, 0x74(r1)
/* 804AC9AC  7D 36 4B 78 */	mr r22, r9
/* 804AC9B0  83 81 00 78 */	lwz r28, 0x78(r1)
/* 804AC9B4  7D 57 53 78 */	mr r23, r10
/* 804AC9B8  83 A1 00 7C */	lwz r29, 0x7c(r1)
/* 804AC9BC  7C E5 3B 78 */	mr r5, r7
/* 804AC9C0  83 C1 00 80 */	lwz r30, 0x80(r1)
/* 804AC9C4  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 804AC9C8  82 21 00 88 */	lwz r17, 0x88(r1)
/* 804AC9CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804AC9D0  4B FF FE E1 */	bl aTrainWindow_OperateScrollLimit
/* 804AC9D4  90 72 00 00 */	stw r3, 0(r18)
/* 804AC9D8  7E 84 A3 78 */	mr r4, r20
/* 804AC9DC  7E A5 AB 78 */	mr r5, r21
/* 804AC9E0  80 73 00 00 */	lwz r3, 0(r19)
/* 804AC9E4  4B FF FE CD */	bl aTrainWindow_OperateScrollLimit
/* 804AC9E8  90 73 00 00 */	stw r3, 0(r19)
/* 804AC9EC  7F 44 D3 78 */	mr r4, r26
/* 804AC9F0  7F 85 E3 78 */	mr r5, r28
/* 804AC9F4  80 78 00 00 */	lwz r3, 0(r24)
/* 804AC9F8  4B FF FE B9 */	bl aTrainWindow_OperateScrollLimit
/* 804AC9FC  90 78 00 00 */	stw r3, 0(r24)
/* 804ACA00  7F 64 DB 78 */	mr r4, r27
/* 804ACA04  7F A5 EB 78 */	mr r5, r29
/* 804ACA08  80 79 00 00 */	lwz r3, 0(r25)
/* 804ACA0C  4B FF FE A5 */	bl aTrainWindow_OperateScrollLimit
/* 804ACA10  90 79 00 00 */	stw r3, 0(r25)
/* 804ACA14  7E C7 B3 78 */	mr r7, r22
/* 804ACA18  7E E8 BB 78 */	mr r8, r23
/* 804ACA1C  38 80 00 00 */	li r4, 0
/* 804ACA20  80 19 00 00 */	lwz r0, 0(r25)
/* 804ACA24  39 20 00 01 */	li r9, 1
/* 804ACA28  90 01 00 08 */	stw r0, 8(r1)
/* 804ACA2C  93 C1 00 0C */	stw r30, 0xc(r1)
/* 804ACA30  93 E1 00 10 */	stw r31, 0x10(r1)
/* 804ACA34  80 71 00 00 */	lwz r3, 0(r17)
/* 804ACA38  80 B2 00 00 */	lwz r5, 0(r18)
/* 804ACA3C  80 D3 00 00 */	lwz r6, 0(r19)
/* 804ACA40  81 58 00 00 */	lwz r10, 0(r24)
/* 804ACA44  4B F3 8A 8D */	bl two_tex_scroll
/* 804ACA48  39 61 00 60 */	addi r11, r1, 0x60
/* 804ACA4C  4B BE E4 A5 */	bl func_8009AEF0
/* 804ACA50  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804ACA54  7C 08 03 A6 */	mtlr r0
/* 804ACA58  38 21 00 60 */	addi r1, r1, 0x60
/* 804ACA5C  4E 80 00 20 */	blr 
