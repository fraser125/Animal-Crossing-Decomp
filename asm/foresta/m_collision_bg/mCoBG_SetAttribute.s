lbl_80391C40:
/* 80391C40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80391C44  7C 08 02 A6 */	mflr r0
/* 80391C48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80391C4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80391C50  7C 9F 23 78 */	mr r31, r4
/* 80391C54  38 81 00 08 */	addi r4, r1, 8
/* 80391C58  80 A3 00 00 */	lwz r5, 0(r3)
/* 80391C5C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80391C60  80 03 00 08 */	lwz r0, 8(r3)
/* 80391C64  38 61 00 0C */	addi r3, r1, 0xc
/* 80391C68  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80391C6C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80391C70  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80391C74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80391C78  48 01 36 F1 */	bl mFI_Wpos2UtNum
/* 80391C7C  2C 03 00 00 */	cmpwi r3, 0
/* 80391C80  41 82 00 2C */	beq lbl_80391CAC
/* 80391C84  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80391C88  80 81 00 08 */	lwz r4, 8(r1)
/* 80391C8C  48 01 49 65 */	bl mFI_UtNum2UtCol
/* 80391C90  7F E0 07 34 */	extsh r0, r31
/* 80391C94  2C 00 00 64 */	cmpwi r0, 0x64
/* 80391C98  41 82 00 14 */	beq lbl_80391CAC
/* 80391C9C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80391CA0  88 03 00 03 */	lbz r0, 3(r3)
/* 80391CA4  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 80391CA8  98 03 00 03 */	stb r0, 3(r3)
lbl_80391CAC:
/* 80391CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80391CB0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80391CB4  7C 08 03 A6 */	mtlr r0
/* 80391CB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80391CBC  4E 80 00 20 */	blr 
