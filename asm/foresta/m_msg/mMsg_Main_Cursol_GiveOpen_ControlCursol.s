lbl_803C4BE0:
/* 803C4BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4BE4  7C 08 02 A6 */	mflr r0
/* 803C4BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4BF0  7C 9F 23 78 */	mr r31, r4
/* 803C4BF4  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4BF8  7C 7E 1B 78 */	mr r30, r3
/* 803C4BFC  4B FF B3 FD */	bl mMsg_Check_give_item
/* 803C4C00  2C 03 00 00 */	cmpwi r3, 0
/* 803C4C04  41 82 00 2C */	beq lbl_803C4C30
/* 803C4C08  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C4C0C  7F C3 F3 78 */	mr r3, r30
/* 803C4C10  4B FF B4 39 */	bl func_803C0048
/* 803C4C14  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4C18  7C 00 1A 14 */	add r0, r0, r3
/* 803C4C1C  38 60 00 00 */	li r3, 0
/* 803C4C20  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4C24  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4C28  90 1E 04 20 */	stw r0, 0x420(r30)
/* 803C4C2C  48 00 00 10 */	b lbl_803C4C3C
lbl_803C4C30:
/* 803C4C30  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4C34  38 60 00 02 */	li r3, 2
/* 803C4C38  90 1E 04 20 */	stw r0, 0x420(r30)
lbl_803C4C3C:
/* 803C4C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4C44  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4C48  7C 08 03 A6 */	mtlr r0
/* 803C4C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4C50  4E 80 00 20 */	blr 
