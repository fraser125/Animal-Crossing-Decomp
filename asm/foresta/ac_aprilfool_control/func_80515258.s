lbl_80515258:
/* 80515258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051525C  7C 08 02 A6 */	mflr r0
/* 80515260  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80515264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515268  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051526C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80515270  3F E4 00 02 */	addis r31, r4, 2
/* 80515274  93 C1 00 08 */	stw r30, 8(r1)
/* 80515278  80 1F 60 F8 */	lwz r0, 0x60f8(r31)
/* 8051527C  28 00 00 00 */	cmplwi r0, 0
/* 80515280  40 82 00 0C */	bne lbl_8051528C
/* 80515284  38 03 01 74 */	addi r0, r3, 0x174
/* 80515288  90 1F 60 F8 */	stw r0, 0x60f8(r31)
lbl_8051528C:
/* 8051528C  38 60 00 11 */	li r3, 0x11
/* 80515290  38 80 00 00 */	li r4, 0
/* 80515294  4B E8 8B 39 */	bl mEv_get_save_area
/* 80515298  7C 7E 1B 79 */	or. r30, r3, r3
/* 8051529C  40 82 00 1C */	bne lbl_805152B8
/* 805152A0  38 60 00 11 */	li r3, 0x11
/* 805152A4  38 80 00 00 */	li r4, 0
/* 805152A8  4B E8 89 7D */	bl mEv_reserve_save_area
/* 805152AC  38 80 00 08 */	li r4, 8
/* 805152B0  7C 7E 1B 78 */	mr r30, r3
/* 805152B4  4B B4 7D B5 */	bl bzero
lbl_805152B8:
/* 805152B8  3C 80 80 51 */	lis r4, aAPC_talk_chk_proc@ha /* 0x8051537C@ha */
/* 805152BC  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 805152C0  38 04 53 7C */	addi r0, r4, aAPC_talk_chk_proc@l /* 0x8051537C@l */
/* 805152C4  3C 80 80 51 */	lis r4, aAPC_talk_set_proc@ha /* 0x80515404@ha */
/* 805152C8  90 03 00 00 */	stw r0, 0(r3)
/* 805152CC  3C 60 80 51 */	lis r3, aAPC_get_msg_num_proc@ha /* 0x8051545C@ha */
/* 805152D0  38 A4 54 04 */	addi r5, r4, aAPC_talk_set_proc@l /* 0x80515404@l */
/* 805152D4  80 9F 60 F8 */	lwz r4, 0x60f8(r31)
/* 805152D8  38 03 54 5C */	addi r0, r3, aAPC_get_msg_num_proc@l /* 0x8051545C@l */
/* 805152DC  90 A4 00 04 */	stw r5, 4(r4)
/* 805152E0  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 805152E4  90 03 00 08 */	stw r0, 8(r3)
/* 805152E8  80 7F 60 F8 */	lwz r3, 0x60f8(r31)
/* 805152EC  93 C3 00 0C */	stw r30, 0xc(r3)
/* 805152F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805152F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805152F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805152FC  7C 08 03 A6 */	mtlr r0
/* 80515300  38 21 00 10 */	addi r1, r1, 0x10
/* 80515304  4E 80 00 20 */	blr 
