lbl_8053F630:
/* 8053F630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F634  7C 08 02 A6 */	mflr r0
/* 8053F638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F63C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F640  7C 9F 23 78 */	mr r31, r4
/* 8053F644  93 C1 00 08 */	stw r30, 8(r1)
/* 8053F648  7C 7E 1B 78 */	mr r30, r3
/* 8053F64C  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8053F650  2C 00 00 02 */	cmpwi r0, 2
/* 8053F654  40 82 00 20 */	bne lbl_8053F674
/* 8053F658  4B FF BD F9 */	bl func_8053B450
/* 8053F65C  88 1E 07 FC */	lbz r0, 0x7fc(r30)
/* 8053F660  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8053F664  7C 00 20 40 */	cmplw r0, r4
/* 8053F668  41 82 00 0C */	beq lbl_8053F674
/* 8053F66C  7F C3 F3 78 */	mr r3, r30
/* 8053F670  4B FF FF 6D */	bl func_8053F5DC
lbl_8053F674:
/* 8053F674  88 1E 07 F7 */	lbz r0, 0x7f7(r30)
/* 8053F678  3C 60 80 6A */	lis r3, act_proc_1970@ha /* 0x806A3B78@ha */
/* 8053F67C  38 A3 3B 78 */	addi r5, r3, act_proc_1970@l /* 0x806A3B78@l */
/* 8053F680  7F C3 F3 78 */	mr r3, r30
/* 8053F684  54 00 10 3A */	slwi r0, r0, 2
/* 8053F688  7F E4 FB 78 */	mr r4, r31
/* 8053F68C  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053F690  7D 89 03 A6 */	mtctr r12
/* 8053F694  4E 80 04 21 */	bctrl 
/* 8053F698  2C 03 00 00 */	cmpwi r3, 0
/* 8053F69C  40 82 00 0C */	bne lbl_8053F6A8
/* 8053F6A0  38 00 00 FF */	li r0, 0xff
/* 8053F6A4  98 1E 07 F6 */	stb r0, 0x7f6(r30)
lbl_8053F6A8:
/* 8053F6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053F6B4  7C 08 03 A6 */	mtlr r0
/* 8053F6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F6BC  4E 80 00 20 */	blr 
