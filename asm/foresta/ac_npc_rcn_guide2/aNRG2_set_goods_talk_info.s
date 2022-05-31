lbl_805712CC:
/* 805712CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805712D0  7C 08 02 A6 */	mflr r0
/* 805712D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805712D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805712DC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805712E0  3C 84 00 03 */	addis r4, r4, 3
/* 805712E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805712E8  7C 7F 1B 78 */	mr r31, r3
/* 805712EC  38 60 08 1C */	li r3, 0x81c
/* 805712F0  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 805712F4  2C 00 00 03 */	cmpwi r0, 3
/* 805712F8  40 82 00 08 */	bne lbl_80571300
/* 805712FC  38 60 08 33 */	li r3, 0x833
lbl_80571300:
/* 80571300  4B E2 72 15 */	bl mDemo_Set_msg_num
/* 80571304  38 60 00 01 */	li r3, 1
/* 80571308  4B E2 75 41 */	bl mDemo_Set_talk_turn
/* 8057130C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80571310  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80571314  90 1F 09 AC */	stw r0, 0x9ac(r31)
/* 80571318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057131C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571320  7C 08 03 A6 */	mtlr r0
/* 80571324  38 21 00 10 */	addi r1, r1, 0x10
/* 80571328  4E 80 00 20 */	blr 
