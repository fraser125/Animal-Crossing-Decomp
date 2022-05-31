lbl_805F5D98:
/* 805F5D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F5D9C  7C 08 02 A6 */	mflr r0
/* 805F5DA0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F5DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F5DA8  38 E5 85 38 */	addi r7, r5, common_data@l /* 0x81138538@l */
/* 805F5DAC  3C A7 00 02 */	addis r5, r7, 2
/* 805F5DB0  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805F5DB4  88 05 60 01 */	lbz r0, 0x6001(r5)
/* 805F5DB8  81 08 09 7C */	lwz r8, 0x97c(r8)
/* 805F5DBC  2C 00 00 01 */	cmpwi r0, 1
/* 805F5DC0  80 A8 00 00 */	lwz r5, 0(r8)
/* 805F5DC4  1C A5 00 B4 */	mulli r5, r5, 0xb4
/* 805F5DC8  38 A5 00 08 */	addi r5, r5, 8
/* 805F5DCC  7C A8 2A 14 */	add r5, r8, r5
/* 805F5DD0  41 82 00 20 */	beq lbl_805F5DF0
/* 805F5DD4  40 80 00 10 */	bge lbl_805F5DE4
/* 805F5DD8  2C 00 00 00 */	cmpwi r0, 0
/* 805F5DDC  40 80 00 44 */	bge lbl_805F5E20
/* 805F5DE0  48 00 00 44 */	b lbl_805F5E24
lbl_805F5DE4:
/* 805F5DE4  2C 00 00 04 */	cmpwi r0, 4
/* 805F5DE8  40 80 00 3C */	bge lbl_805F5E24
/* 805F5DEC  48 00 00 34 */	b lbl_805F5E20
lbl_805F5DF0:
/* 805F5DF0  80 C7 00 14 */	lwz r6, 0x14(r7)
/* 805F5DF4  2C 06 00 2F */	cmpwi r6, 0x2f
/* 805F5DF8  41 82 00 18 */	beq lbl_805F5E10
/* 805F5DFC  38 06 FF D6 */	addi r0, r6, -42
/* 805F5E00  28 00 00 02 */	cmplwi r0, 2
/* 805F5E04  40 81 00 0C */	ble lbl_805F5E10
/* 805F5E08  2C 06 00 2D */	cmpwi r6, 0x2d
/* 805F5E0C  40 82 00 0C */	bne lbl_805F5E18
lbl_805F5E10:
/* 805F5E10  38 C0 00 3B */	li r6, 0x3b
/* 805F5E14  48 00 00 10 */	b lbl_805F5E24
lbl_805F5E18:
/* 805F5E18  38 C0 00 3A */	li r6, 0x3a
/* 805F5E1C  48 00 00 08 */	b lbl_805F5E24
lbl_805F5E20:
/* 805F5E20  38 C0 00 3B */	li r6, 0x3b
lbl_805F5E24:
/* 805F5E24  4B FF C3 A9 */	bl mTG_chg_tag_func2
/* 805F5E28  38 60 00 33 */	li r3, 0x33
/* 805F5E2C  48 03 7E D9 */	bl sAdo_SysTrgStart
/* 805F5E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F5E34  7C 08 03 A6 */	mtlr r0
/* 805F5E38  38 21 00 10 */	addi r1, r1, 0x10
/* 805F5E3C  4E 80 00 20 */	blr 
