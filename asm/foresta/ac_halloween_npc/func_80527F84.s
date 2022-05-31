lbl_80527F84:
/* 80527F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527F88  7C 08 02 A6 */	mflr r0
/* 80527F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527F94  7C 9F 23 78 */	mr r31, r4
/* 80527F98  93 C1 00 08 */	stw r30, 8(r1)
/* 80527F9C  7C 7E 1B 78 */	mr r30, r3
/* 80527FA0  4B E7 04 59 */	bl mDemo_Get_talk_actor
/* 80527FA4  28 03 00 00 */	cmplwi r3, 0
/* 80527FA8  41 82 00 0C */	beq lbl_80527FB4
/* 80527FAC  7C 03 F0 40 */	cmplw r3, r30
/* 80527FB0  40 82 00 34 */	bne lbl_80527FE4
lbl_80527FB4:
/* 80527FB4  88 7E 00 08 */	lbz r3, 8(r30)
/* 80527FB8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80527FBC  7C 63 07 74 */	extsb r3, r3
/* 80527FC0  7C 00 07 74 */	extsb r0, r0
/* 80527FC4  7C 03 00 00 */	cmpw r3, r0
/* 80527FC8  40 82 00 1C */	bne lbl_80527FE4
/* 80527FCC  88 7E 00 09 */	lbz r3, 9(r30)
/* 80527FD0  88 1F 00 E5 */	lbz r0, 0xe5(r31)
/* 80527FD4  7C 63 07 74 */	extsb r3, r3
/* 80527FD8  7C 00 07 74 */	extsb r0, r0
/* 80527FDC  7C 03 00 00 */	cmpw r3, r0
/* 80527FE0  41 82 00 18 */	beq lbl_80527FF8
lbl_80527FE4:
/* 80527FE4  7F C3 F3 78 */	mr r3, r30
/* 80527FE8  7F E4 FB 78 */	mr r4, r31
/* 80527FEC  38 A0 00 01 */	li r5, 1
/* 80527FF0  48 00 01 BD */	bl aHWN_setup_think_proc
/* 80527FF4  48 00 00 20 */	b lbl_80528014
lbl_80527FF8:
/* 80527FF8  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80527FFC  28 00 00 FF */	cmplwi r0, 0xff
/* 80528000  40 82 00 14 */	bne lbl_80528014
/* 80528004  7F C3 F3 78 */	mr r3, r30
/* 80528008  7F E4 FB 78 */	mr r4, r31
/* 8052800C  38 A0 00 00 */	li r5, 0
/* 80528010  48 00 01 9D */	bl aHWN_setup_think_proc
lbl_80528014:
/* 80528014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052801C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80528020  7C 08 03 A6 */	mtlr r0
/* 80528024  38 21 00 10 */	addi r1, r1, 0x10
/* 80528028  4E 80 00 20 */	blr 
