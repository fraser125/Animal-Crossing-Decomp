lbl_803F0F7C:
/* 803F0F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F0F80  7C 08 02 A6 */	mflr r0
/* 803F0F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F0F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F0F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 803F0F90  7C 7E 1B 78 */	mr r30, r3
/* 803F0F94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F0F98  83 E4 00 04 */	lwz r31, 4(r4)
/* 803F0F9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F0FA0  3C 83 00 03 */	addis r4, r3, 3
/* 803F0FA4  93 FE 20 98 */	stw r31, 0x2098(r30)
/* 803F0FA8  80 04 85 30 */	lwz r0, -0x7ad0(r4)
/* 803F0FAC  2C 00 00 00 */	cmpwi r0, 0
/* 803F0FB0  41 82 00 38 */	beq lbl_803F0FE8
/* 803F0FB4  38 7F 00 02 */	addi r3, r31, 2
/* 803F0FB8  38 A0 00 06 */	li r5, 6
/* 803F0FBC  38 84 85 38 */	addi r4, r4, -31432
/* 803F0FC0  4B FC 9A 65 */	bl func_803BAA24
/* 803F0FC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F0FC8  3C 60 80 66 */	lis r3, angle_table@ha /* 0x8065DDAC@ha */
/* 803F0FCC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F0FD0  3C 84 00 03 */	addis r4, r4, 3
/* 803F0FD4  38 63 DD AC */	addi r3, r3, angle_table@l /* 0x8065DDAC@l */
/* 803F0FD8  88 04 85 34 */	lbz r0, -0x7acc(r4)
/* 803F0FDC  54 00 08 3C */	slwi r0, r0, 1
/* 803F0FE0  7C 03 02 AE */	lhax r0, r3, r0
/* 803F0FE4  B0 1F 00 0A */	sth r0, 0xa(r31)
lbl_803F0FE8:
/* 803F0FE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F0FEC  7F C3 F3 78 */	mr r3, r30
/* 803F0FF0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F0FF4  3C 84 00 03 */	addis r4, r4, 3
/* 803F0FF8  A0 04 85 36 */	lhz r0, -0x7aca(r4)
/* 803F0FFC  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 803F1000  4B FF F5 6D */	bl Object_Exchange_keep_new_Player
/* 803F1004  7F C3 F3 78 */	mr r3, r30
/* 803F1008  4B FF F4 95 */	bl mSM_Object_Exchange_keep_new_Menu
/* 803F100C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F1014  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F1018  7C 08 03 A6 */	mtlr r0
/* 803F101C  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1020  4E 80 00 20 */	blr 
