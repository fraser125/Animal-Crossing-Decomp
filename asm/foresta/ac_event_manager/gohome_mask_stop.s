lbl_80421CE0:
/* 80421CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421CE4  7C 08 02 A6 */	mflr r0
/* 80421CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80421CF0  3B E0 00 02 */	li r31, 2
/* 80421CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80421CF8  7C 9E 23 78 */	mr r30, r4
/* 80421CFC  80 64 00 00 */	lwz r3, 0(r4)
/* 80421D00  4B F7 BE ED */	bl mEv_check_keep
/* 80421D04  2C 03 00 00 */	cmpwi r3, 0
/* 80421D08  41 82 00 10 */	beq lbl_80421D18
/* 80421D0C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421D10  4B F7 BE A9 */	bl mEv_clear_keep
/* 80421D14  3B E0 00 01 */	li r31, 1
lbl_80421D18:
/* 80421D18  3C 60 81 1D */	lis r3, wpppp@ha /* 0x811CB95C@ha */
/* 80421D1C  38 00 00 00 */	li r0, 0
/* 80421D20  38 83 B9 5C */	addi r4, r3, wpppp@l /* 0x811CB95C@l */
/* 80421D24  7F E3 FB 78 */	mr r3, r31
/* 80421D28  90 04 00 00 */	stw r0, 0(r4)
/* 80421D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80421D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80421D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421D38  7C 08 03 A6 */	mtlr r0
/* 80421D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80421D40  4E 80 00 20 */	blr 
