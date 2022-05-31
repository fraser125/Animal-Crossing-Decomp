lbl_80428EF0:
/* 80428EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428EF4  7C 08 02 A6 */	mflr r0
/* 80428EF8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80428EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428F00  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80428F04  3C A4 00 02 */	addis r5, r4, 2
/* 80428F08  38 00 00 00 */	li r0, 0
/* 80428F0C  90 05 60 D0 */	stw r0, 0x60d0(r5)
/* 80428F10  7C 64 1B 78 */	mr r4, r3
/* 80428F14  38 60 00 01 */	li r3, 1
/* 80428F18  4B F7 56 1D */	bl mEv_actor_dying_message
/* 80428F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428F20  7C 08 03 A6 */	mtlr r0
/* 80428F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80428F28  4E 80 00 20 */	blr 
