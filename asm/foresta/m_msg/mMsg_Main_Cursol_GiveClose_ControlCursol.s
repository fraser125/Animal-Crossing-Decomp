lbl_803C4C54:
/* 803C4C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4C58  7C 08 02 A6 */	mflr r0
/* 803C4C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4C64  7C 9F 23 78 */	mr r31, r4
/* 803C4C68  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4C6C  7C 7E 1B 78 */	mr r30, r3
/* 803C4C70  4B FF B3 89 */	bl mMsg_Check_give_item
/* 803C4C74  2C 03 00 00 */	cmpwi r3, 0
/* 803C4C78  40 82 00 2C */	bne lbl_803C4CA4
/* 803C4C7C  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C4C80  7F C3 F3 78 */	mr r3, r30
/* 803C4C84  4B FF B3 C5 */	bl func_803C0048
/* 803C4C88  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4C8C  7C 00 1A 14 */	add r0, r0, r3
/* 803C4C90  38 60 00 00 */	li r3, 0
/* 803C4C94  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4C98  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4C9C  90 1E 04 20 */	stw r0, 0x420(r30)
/* 803C4CA0  48 00 00 10 */	b lbl_803C4CB0
lbl_803C4CA4:
/* 803C4CA4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4CA8  38 60 00 02 */	li r3, 2
/* 803C4CAC  90 1E 04 20 */	stw r0, 0x420(r30)
lbl_803C4CB0:
/* 803C4CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4CB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4CBC  7C 08 03 A6 */	mtlr r0
/* 803C4CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4CC4  4E 80 00 20 */	blr 
