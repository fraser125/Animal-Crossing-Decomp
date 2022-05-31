lbl_80586C9C:
/* 80586C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586CA0  7C 08 02 A6 */	mflr r0
/* 80586CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586CAC  7C 7F 1B 78 */	mr r31, r3
/* 80586CB0  3C 60 80 6C */	lis r3, msg_651@ha /* 0x806C1C30@ha */
/* 80586CB4  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80586CB8  38 63 1C 30 */	addi r3, r3, msg_651@l /* 0x806C1C30@l */
/* 80586CBC  7C 63 00 AE */	lbzx r3, r3, r0
/* 80586CC0  38 63 1B 93 */	addi r3, r3, 0x1b93
/* 80586CC4  4B E1 18 51 */	bl mDemo_Set_msg_num
/* 80586CC8  38 60 00 01 */	li r3, 1
/* 80586CCC  4B E1 1B 7D */	bl mDemo_Set_talk_turn
/* 80586CD0  38 60 00 01 */	li r3, 1
/* 80586CD4  4B E1 1C 4D */	bl mDemo_Set_camera
/* 80586CD8  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80586CDC  2C 00 00 03 */	cmpwi r0, 3
/* 80586CE0  41 82 00 24 */	beq lbl_80586D04
/* 80586CE4  40 80 00 4C */	bge lbl_80586D30
/* 80586CE8  2C 00 00 00 */	cmpwi r0, 0
/* 80586CEC  41 82 00 08 */	beq lbl_80586CF4
/* 80586CF0  48 00 00 40 */	b lbl_80586D30
lbl_80586CF4:
/* 80586CF4  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80586CF8  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80586CFC  90 1F 09 94 */	stw r0, 0x994(r31)
/* 80586D00  48 00 00 3C */	b lbl_80586D3C
lbl_80586D04:
/* 80586D04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80586D08  3C 60 80 58 */	lis r3, aNTT_talk_select0@ha /* 0x80586608@ha */
/* 80586D0C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80586D10  3C 84 00 02 */	addis r4, r4, 2
/* 80586D14  38 03 66 08 */	addi r0, r3, aNTT_talk_select0@l /* 0x80586608@l */
/* 80586D18  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80586D1C  80 64 23 48 */	lwz r3, 0x2348(r4)
/* 80586D20  60 63 08 00 */	ori r3, r3, 0x800
/* 80586D24  90 64 23 48 */	stw r3, 0x2348(r4)
/* 80586D28  90 1F 09 94 */	stw r0, 0x994(r31)
/* 80586D2C  48 00 00 10 */	b lbl_80586D3C
lbl_80586D30:
/* 80586D30  3C 60 80 58 */	lis r3, aNTT_talk_select0@ha /* 0x80586608@ha */
/* 80586D34  38 03 66 08 */	addi r0, r3, aNTT_talk_select0@l /* 0x80586608@l */
/* 80586D38  90 1F 09 94 */	stw r0, 0x994(r31)
lbl_80586D3C:
/* 80586D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586D44  7C 08 03 A6 */	mtlr r0
/* 80586D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80586D4C  4E 80 00 20 */	blr 
