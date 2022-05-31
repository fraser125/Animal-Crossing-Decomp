lbl_80589C40:
/* 80589C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589C44  7C 08 02 A6 */	mflr r0
/* 80589C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80589C50  7C 7F 1B 78 */	mr r31, r3
/* 80589C54  A8 A3 09 9C */	lha r5, 0x99c(r3)
/* 80589C58  2C 05 00 00 */	cmpwi r5, 0
/* 80589C5C  40 81 00 10 */	ble lbl_80589C6C
/* 80589C60  38 05 FF FF */	addi r0, r5, -1
/* 80589C64  B0 1F 09 9C */	sth r0, 0x99c(r31)
/* 80589C68  48 00 00 14 */	b lbl_80589C7C
lbl_80589C6C:
/* 80589C6C  88 BF 09 A6 */	lbz r5, 0x9a6(r31)
/* 80589C70  38 A5 00 01 */	addi r5, r5, 1
/* 80589C74  98 BF 09 A6 */	stb r5, 0x9a6(r31)
/* 80589C78  48 00 02 61 */	bl aTMN0_setup_think_proc
lbl_80589C7C:
/* 80589C7C  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80589C80  2C 00 00 43 */	cmpwi r0, 0x43
/* 80589C84  40 82 00 14 */	bne lbl_80589C98
/* 80589C88  7F E3 FB 78 */	mr r3, r31
/* 80589C8C  38 BF 00 28 */	addi r5, r31, 0x28
/* 80589C90  38 80 00 2F */	li r4, 0x2f
/* 80589C94  48 0A 42 B1 */	bl sAdo_OngenPos
lbl_80589C98:
/* 80589C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80589CA0  7C 08 03 A6 */	mtlr r0
/* 80589CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80589CA8  4E 80 00 20 */	blr 
