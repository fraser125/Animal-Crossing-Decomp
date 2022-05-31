lbl_804B0FB0:
/* 804B0FB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B0FB4  7C 08 02 A6 */	mflr r0
/* 804B0FB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B0FBC  39 61 00 30 */	addi r11, r1, 0x30
/* 804B0FC0  4B BE 9F 15 */	bl func_8009AED4
/* 804B0FC4  7C 9E 23 78 */	mr r30, r4
/* 804B0FC8  7C 7D 1B 78 */	mr r29, r3
/* 804B0FCC  80 E4 00 00 */	lwz r7, 0(r4)
/* 804B0FD0  38 61 00 0C */	addi r3, r1, 0xc
/* 804B0FD4  80 C4 00 04 */	lwz r6, 4(r4)
/* 804B0FD8  38 81 00 08 */	addi r4, r1, 8
/* 804B0FDC  80 1E 00 08 */	lwz r0, 8(r30)
/* 804B0FE0  38 A1 00 10 */	addi r5, r1, 0x10
/* 804B0FE4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804B0FE8  3B E0 00 00 */	li r31, 0
/* 804B0FEC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804B0FF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B0FF4  4B EF 43 75 */	bl mFI_Wpos2UtNum
/* 804B0FF8  2C 03 00 00 */	cmpwi r3, 0
/* 804B0FFC  41 82 00 2C */	beq lbl_804B1028
/* 804B1000  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804B1004  80 81 00 08 */	lwz r4, 8(r1)
/* 804B1008  4B EF 62 79 */	bl mFI_UtNum2UtFG
/* 804B100C  28 03 00 00 */	cmplwi r3, 0
/* 804B1010  41 82 00 18 */	beq lbl_804B1028
/* 804B1014  A0 63 00 00 */	lhz r3, 0(r3)
/* 804B1018  7F A4 EB 78 */	mr r4, r29
/* 804B101C  7F C5 F3 78 */	mr r5, r30
/* 804B1020  4B FF FE B1 */	bl bIT_actor_rand_pos_get_plus
/* 804B1024  3B E0 00 01 */	li r31, 1
lbl_804B1028:
/* 804B1028  2C 1F 00 00 */	cmpwi r31, 0
/* 804B102C  40 82 00 18 */	bne lbl_804B1044
/* 804B1030  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B1034  C0 03 5F EC */	lfs f0, data_80645FEC@l(r3)  /* 0x80645FEC@l */
/* 804B1038  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804B103C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804B1040  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_804B1044:
/* 804B1044  7F E3 FB 78 */	mr r3, r31
/* 804B1048  39 61 00 30 */	addi r11, r1, 0x30
/* 804B104C  4B BE 9E D5 */	bl func_8009AF20
/* 804B1050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B1054  7C 08 03 A6 */	mtlr r0
/* 804B1058  38 21 00 30 */	addi r1, r1, 0x30
/* 804B105C  4E 80 00 20 */	blr 
