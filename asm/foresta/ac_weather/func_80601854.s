lbl_80601854:
/* 80601854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601858  7C 08 02 A6 */	mflr r0
/* 8060185C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601864  7C 7F 1B 78 */	mr r31, r3
/* 80601868  A8 03 01 E0 */	lha r0, 0x1e0(r3)
/* 8060186C  2C 00 00 01 */	cmpwi r0, 1
/* 80601870  40 82 00 14 */	bne lbl_80601884
/* 80601874  38 00 00 00 */	li r0, 0
/* 80601878  B0 1F 01 DE */	sth r0, 0x1de(r31)
/* 8060187C  B0 1F 01 DC */	sth r0, 0x1dc(r31)
/* 80601880  48 00 00 38 */	b lbl_806018B8
lbl_80601884:
/* 80601884  A8 7F 01 DE */	lha r3, 0x1de(r31)
/* 80601888  7C 60 07 35 */	extsh. r0, r3
/* 8060188C  41 82 00 0C */	beq lbl_80601898
/* 80601890  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80601894  48 02 C6 91 */	bl sAdo_SysLevStop
lbl_80601898:
/* 80601898  A8 7F 01 DC */	lha r3, 0x1dc(r31)
/* 8060189C  7C 60 07 35 */	extsh. r0, r3
/* 806018A0  41 82 00 0C */	beq lbl_806018AC
/* 806018A4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806018A8  48 02 C6 5D */	bl sAdo_SysLevStart
lbl_806018AC:
/* 806018AC  38 00 00 00 */	li r0, 0
/* 806018B0  B0 1F 01 DE */	sth r0, 0x1de(r31)
/* 806018B4  B0 1F 01 DC */	sth r0, 0x1dc(r31)
lbl_806018B8:
/* 806018B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806018BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806018C0  7C 08 03 A6 */	mtlr r0
/* 806018C4  38 21 00 10 */	addi r1, r1, 0x10
/* 806018C8  4E 80 00 20 */	blr 
