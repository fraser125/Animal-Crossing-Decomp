lbl_80427C90:
/* 80427C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80427C94  7C 08 02 A6 */	mflr r0
/* 80427C98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80427C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80427CA0  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 80427CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80427CA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80427CAC  88 A3 02 83 */	lbz r5, 0x283(r3)
/* 80427CB0  1C 85 26 B0 */	mulli r4, r5, 0x26b0
/* 80427CB4  7C 80 22 14 */	add r4, r0, r4
/* 80427CB8  3F C4 00 01 */	addis r30, r4, 1
/* 80427CBC  3B DE C2 BC */	addi r30, r30, -15684
/* 80427CC0  4B FF FE D1 */	bl aHNW_decide_msg_idx_dance
/* 80427CC4  7C 7F 1B 78 */	mr r31, r3
/* 80427CC8  2C 1F 00 02 */	cmpwi r31, 2
/* 80427CCC  41 82 00 40 */	beq lbl_80427D0C
/* 80427CD0  40 80 00 10 */	bge lbl_80427CE0
/* 80427CD4  2C 1F 00 01 */	cmpwi r31, 1
/* 80427CD8  40 80 00 14 */	bge lbl_80427CEC
/* 80427CDC  48 00 00 30 */	b lbl_80427D0C
lbl_80427CE0:
/* 80427CE0  2C 1F 00 04 */	cmpwi r31, 4
/* 80427CE4  40 80 00 28 */	bge lbl_80427D0C
/* 80427CE8  48 00 00 10 */	b lbl_80427CF8
lbl_80427CEC:
/* 80427CEC  7F C3 F3 78 */	mr r3, r30
/* 80427CF0  4B FF FC 19 */	bl aHNW_set_proceeds_str
/* 80427CF4  48 00 00 18 */	b lbl_80427D0C
lbl_80427CF8:
/* 80427CF8  4B F9 79 B1 */	bl func_803BF6A8
/* 80427CFC  38 BE 00 20 */	addi r5, r30, 0x20
/* 80427D00  38 80 00 00 */	li r4, 0
/* 80427D04  38 C0 00 80 */	li r6, 0x80
/* 80427D08  4B F9 81 91 */	bl mMsg_Set_mail_str
lbl_80427D0C:
/* 80427D0C  3C 60 80 68 */	lis r3, msg_no_568@ha /* 0x80683C48@ha */
/* 80427D10  57 E0 10 3A */	slwi r0, r31, 2
/* 80427D14  38 63 3C 48 */	addi r3, r3, msg_no_568@l /* 0x80683C48@l */
/* 80427D18  7C 63 00 2E */	lwzx r3, r3, r0
/* 80427D1C  4B F7 07 F9 */	bl mDemo_Set_msg_num
/* 80427D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80427D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80427D28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80427D2C  7C 08 03 A6 */	mtlr r0
/* 80427D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80427D34  4E 80 00 20 */	blr 
