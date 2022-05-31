lbl_80420CE8:
/* 80420CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80420CEC  7C 08 02 A6 */	mflr r0
/* 80420CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80420CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80420CF8  3B E0 00 02 */	li r31, 2
/* 80420CFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80420D00  7C 9E 23 78 */	mr r30, r4
/* 80420D04  80 64 00 00 */	lwz r3, 0(r4)
/* 80420D08  4B F7 CE E5 */	bl mEv_check_keep
/* 80420D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80420D10  41 82 00 14 */	beq lbl_80420D24
/* 80420D14  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420D18  4B F7 CE A1 */	bl mEv_clear_keep
/* 80420D1C  3B E0 00 01 */	li r31, 1
/* 80420D20  4B FF FF 31 */	bl ghost_delete_hitodama
lbl_80420D24:
/* 80420D24  3C 60 81 1D */	lis r3, wpppp@ha /* 0x811CB95C@ha */
/* 80420D28  38 00 00 00 */	li r0, 0
/* 80420D2C  38 83 B9 5C */	addi r4, r3, wpppp@l /* 0x811CB95C@l */
/* 80420D30  7F E3 FB 78 */	mr r3, r31
/* 80420D34  90 04 00 00 */	stw r0, 0(r4)
/* 80420D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80420D3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80420D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80420D44  7C 08 03 A6 */	mtlr r0
/* 80420D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80420D4C  4E 80 00 20 */	blr 
