lbl_805155A8:
/* 805155A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805155AC  7C 08 02 A6 */	mflr r0
/* 805155B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805155B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805155B8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805155BC  3C A4 00 02 */	addis r5, r4, 2
/* 805155C0  38 00 00 00 */	li r0, 0
/* 805155C4  90 05 61 00 */	stw r0, 0x6100(r5)
/* 805155C8  7C 64 1B 78 */	mr r4, r3
/* 805155CC  38 60 00 07 */	li r3, 7
/* 805155D0  4B E8 8F 65 */	bl mEv_actor_dying_message
/* 805155D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805155D8  7C 08 03 A6 */	mtlr r0
/* 805155DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805155E0  4E 80 00 20 */	blr 
