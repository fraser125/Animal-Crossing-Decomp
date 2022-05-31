lbl_804A1C24:
/* 804A1C24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A1C28  7C 08 02 A6 */	mflr r0
/* 804A1C2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A1C30  38 C1 00 0C */	addi r6, r1, 0xc
/* 804A1C34  38 E1 00 18 */	addi r7, r1, 0x18
/* 804A1C38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804A1C3C  7C 7F 1B 78 */	mr r31, r3
/* 804A1C40  38 61 00 10 */	addi r3, r1, 0x10
/* 804A1C44  80 A4 00 00 */	lwz r5, 0(r4)
/* 804A1C48  81 04 00 04 */	lwz r8, 4(r4)
/* 804A1C4C  80 04 00 08 */	lwz r0, 8(r4)
/* 804A1C50  38 81 00 14 */	addi r4, r1, 0x14
/* 804A1C54  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804A1C58  38 A1 00 08 */	addi r5, r1, 8
/* 804A1C5C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 804A1C60  90 01 00 20 */	stw r0, 0x20(r1)
/* 804A1C64  4B F0 3B 5D */	bl mFI_Wpos2BkandUtNuminBlock
/* 804A1C68  80 7F 00 04 */	lwz r3, 4(r31)
/* 804A1C6C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804A1C70  7C 03 00 00 */	cmpw r3, r0
/* 804A1C74  40 82 00 3C */	bne lbl_804A1CB0
/* 804A1C78  80 7F 00 00 */	lwz r3, 0(r31)
/* 804A1C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A1C80  7C 03 00 00 */	cmpw r3, r0
/* 804A1C84  40 82 00 2C */	bne lbl_804A1CB0
/* 804A1C88  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 804A1C8C  80 01 00 08 */	lwz r0, 8(r1)
/* 804A1C90  7C 03 00 00 */	cmpw r3, r0
/* 804A1C94  40 82 00 1C */	bne lbl_804A1CB0
/* 804A1C98  80 7F 00 08 */	lwz r3, 8(r31)
/* 804A1C9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A1CA0  7C 03 00 00 */	cmpw r3, r0
/* 804A1CA4  40 82 00 0C */	bne lbl_804A1CB0
/* 804A1CA8  38 60 00 01 */	li r3, 1
/* 804A1CAC  48 00 00 08 */	b lbl_804A1CB4
lbl_804A1CB0:
/* 804A1CB0  38 60 00 00 */	li r3, 0
lbl_804A1CB4:
/* 804A1CB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A1CB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804A1CBC  7C 08 03 A6 */	mtlr r0
/* 804A1CC0  38 21 00 30 */	addi r1, r1, 0x30
/* 804A1CC4  4E 80 00 20 */	blr 
