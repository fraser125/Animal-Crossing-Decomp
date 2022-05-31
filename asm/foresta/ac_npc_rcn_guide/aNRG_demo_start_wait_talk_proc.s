lbl_8056F2F4:
/* 8056F2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F2F8  7C 08 02 A6 */	mflr r0
/* 8056F2FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056F300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F308  7C 7F 1B 78 */	mr r31, r3
/* 8056F30C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8056F310  3C 63 00 02 */	addis r3, r3, 2
/* 8056F314  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8056F318  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8056F31C  28 00 00 02 */	cmplwi r0, 2
/* 8056F320  40 82 00 20 */	bne lbl_8056F340
/* 8056F324  38 60 00 04 */	li r3, 4
/* 8056F328  38 80 00 01 */	li r4, 1
/* 8056F32C  38 A0 00 03 */	li r5, 3
/* 8056F330  4B E2 91 09 */	bl mDemo_Set_OrderValue
/* 8056F334  7F E3 FB 78 */	mr r3, r31
/* 8056F338  38 80 00 04 */	li r4, 4
/* 8056F33C  48 00 00 9D */	bl aNRG_demand_payment_change_talk_proc
lbl_8056F340:
/* 8056F340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F348  7C 08 03 A6 */	mtlr r0
/* 8056F34C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F350  4E 80 00 20 */	blr 
