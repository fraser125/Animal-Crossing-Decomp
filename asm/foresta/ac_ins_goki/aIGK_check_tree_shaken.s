lbl_80599BEC:
/* 80599BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599BF0  7C 08 02 A6 */	mflr r0
/* 80599BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599BFC  3B E0 00 00 */	li r31, 0
/* 80599C00  93 C1 00 08 */	stw r30, 8(r1)
/* 80599C04  7C 7E 1B 78 */	mr r30, r3
/* 80599C08  80 03 02 30 */	lwz r0, 0x230(r3)
/* 80599C0C  2C 00 00 04 */	cmpwi r0, 4
/* 80599C10  40 82 00 44 */	bne lbl_80599C54
/* 80599C14  38 7E 00 28 */	addi r3, r30, 0x28
/* 80599C18  4B E4 43 6D */	bl mPlib_Check_tree_shaken
/* 80599C1C  2C 03 00 01 */	cmpwi r3, 1
/* 80599C20  40 82 00 0C */	bne lbl_80599C2C
/* 80599C24  3B E0 00 01 */	li r31, 1
/* 80599C28  48 00 00 2C */	b lbl_80599C54
lbl_80599C2C:
/* 80599C2C  38 7E 00 28 */	addi r3, r30, 0x28
/* 80599C30  4B E4 23 B9 */	bl mPlib_Check_VibUnit_OneFrame
/* 80599C34  2C 03 00 01 */	cmpwi r3, 1
/* 80599C38  40 82 00 1C */	bne lbl_80599C54
/* 80599C3C  3C 60 80 65 */	lis r3, lit_440@ha /* 0x80649F54@ha */
/* 80599C40  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80599C44  C0 03 9F 54 */	lfs f0, lit_440@l(r3)  /* 0x80649F54@l */
/* 80599C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80599C4C  40 80 00 08 */	bge lbl_80599C54
/* 80599C50  3B E0 00 01 */	li r31, 1
lbl_80599C54:
/* 80599C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599C58  7F E3 FB 78 */	mr r3, r31
/* 80599C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599C60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80599C64  7C 08 03 A6 */	mtlr r0
/* 80599C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80599C6C  4E 80 00 20 */	blr 
