lbl_80519C64:
/* 80519C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80519C68  7C 08 02 A6 */	mflr r0
/* 80519C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80519C70  39 61 00 20 */	addi r11, r1, 0x20
/* 80519C74  4B B8 12 61 */	bl func_8009AED4
/* 80519C78  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80519C7C  7C 7F 1B 78 */	mr r31, r3
/* 80519C80  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80519C84  7C 9D 23 78 */	mr r29, r4
/* 80519C88  3F C5 00 02 */	addis r30, r5, 2
/* 80519C8C  80 BE 60 4C */	lwz r5, 0x604c(r30)
/* 80519C90  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80519C94  7D 89 03 A6 */	mtctr r12
/* 80519C98  4E 80 04 21 */	bctrl 
/* 80519C9C  2C 03 00 01 */	cmpwi r3, 1
/* 80519CA0  40 82 00 AC */	bne lbl_80519D4C
/* 80519CA4  3C 60 80 52 */	lis r3, aEBRK_schedule_proc@ha /* 0x8051A588@ha */
/* 80519CA8  3C 80 80 6A */	lis r4, ct_data@ha /* 0x806A004C@ha */
/* 80519CAC  38 03 A5 88 */	addi r0, r3, aEBRK_schedule_proc@l /* 0x8051A588@l */
/* 80519CB0  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 80519CB4  38 A4 00 4C */	addi r5, r4, ct_data@l /* 0x806A004C@l */
/* 80519CB8  7F E3 FB 78 */	mr r3, r31
/* 80519CBC  7F A4 EB 78 */	mr r4, r29
/* 80519CC0  80 DE 60 4C */	lwz r6, 0x604c(r30)
/* 80519CC4  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80519CC8  7D 89 03 A6 */	mtctr r12
/* 80519CCC  4E 80 04 21 */	bctrl 
/* 80519CD0  38 00 00 FE */	li r0, 0xfe
/* 80519CD4  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 80519CD8  48 00 03 E1 */	bl aEBRK_get_sell_item_sum
/* 80519CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80519CE0  41 82 00 18 */	beq lbl_80519CF8
/* 80519CE4  7F E3 FB 78 */	mr r3, r31
/* 80519CE8  7F A4 EB 78 */	mr r4, r29
/* 80519CEC  48 00 02 A1 */	bl aEBRK_check_start_around
/* 80519CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80519CF4  40 82 00 1C */	bne lbl_80519D10
lbl_80519CF8:
/* 80519CF8  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80519CFC  38 00 00 03 */	li r0, 3
/* 80519D00  38 63 B5 4C */	addi r3, r3, none_proc1@l /* 0x803BB54C@l */
/* 80519D04  90 7F 09 64 */	stw r3, 0x964(r31)
/* 80519D08  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80519D0C  48 00 00 40 */	b lbl_80519D4C
lbl_80519D10:
/* 80519D10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80519D14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80519D18  3C 63 00 02 */	addis r3, r3, 2
/* 80519D1C  80 03 66 98 */	lwz r0, 0x6698(r3)
/* 80519D20  2C 00 00 01 */	cmpwi r0, 1
/* 80519D24  98 1F 08 31 */	stb r0, 0x831(r31)
/* 80519D28  40 82 00 1C */	bne lbl_80519D44
/* 80519D2C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80519D30  38 00 00 03 */	li r0, 3
/* 80519D34  38 63 B5 4C */	addi r3, r3, none_proc1@l /* 0x803BB54C@l */
/* 80519D38  90 7F 09 64 */	stw r3, 0x964(r31)
/* 80519D3C  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80519D40  48 00 00 0C */	b lbl_80519D4C
lbl_80519D44:
/* 80519D44  38 00 00 00 */	li r0, 0
/* 80519D48  90 1F 09 98 */	stw r0, 0x998(r31)
lbl_80519D4C:
/* 80519D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80519D50  4B B8 11 D1 */	bl func_8009AF20
/* 80519D54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80519D58  7C 08 03 A6 */	mtlr r0
/* 80519D5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80519D60  4E 80 00 20 */	blr 
