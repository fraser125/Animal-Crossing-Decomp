lbl_8048E1AC:
/* 8048E1AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8048E1B0  7C 08 02 A6 */	mflr r0
/* 8048E1B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8048E1B8  39 61 00 50 */	addi r11, r1, 0x50
/* 8048E1BC  4B C0 CC F9 */	bl func_8009AEB4
/* 8048E1C0  7C 6C 1B 78 */	mr r12, r3
/* 8048E1C4  7C 96 23 78 */	mr r22, r4
/* 8048E1C8  7C B7 2B 78 */	mr r23, r5
/* 8048E1CC  7C D8 33 78 */	mr r24, r6
/* 8048E1D0  7C F9 3B 78 */	mr r25, r7
/* 8048E1D4  38 61 00 08 */	addi r3, r1, 8
/* 8048E1D8  7D 89 03 A6 */	mtctr r12
/* 8048E1DC  4E 80 04 21 */	bctrl 
/* 8048E1E0  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E1E4  2C 03 00 00 */	cmpwi r3, 0
/* 8048E1E8  38 84 EB F0 */	addi r4, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E1EC  90 64 00 0C */	stw r3, 0xc(r4)
/* 8048E1F0  41 80 00 20 */	blt lbl_8048E210
/* 8048E1F4  A0 61 00 08 */	lhz r3, 8(r1)
/* 8048E1F8  38 80 00 00 */	li r4, 0
/* 8048E1FC  4B F5 54 39 */	bl mQst_SetItemNameStr
/* 8048E200  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E204  A0 01 00 08 */	lhz r0, 8(r1)
/* 8048E208  38 63 EB F0 */	addi r3, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E20C  B0 03 00 14 */	sth r0, 0x14(r3)
lbl_8048E210:
/* 8048E210  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E214  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048E218  3B C4 EB F0 */	addi r30, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E21C  3C 80 81 1D */	lis r4, other_itemNo@ha /* 0x811CEC10@ha */
/* 8048E220  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048E224  3B 40 00 00 */	li r26, 0
/* 8048E228  3B BE 00 14 */	addi r29, r30, 0x14
/* 8048E22C  3B E4 EC 10 */	addi r31, r4, other_itemNo@l /* 0x811CEC10@l */
/* 8048E230  3F 83 00 02 */	addis r28, r3, 2
/* 8048E234  3A A0 00 00 */	li r21, 0
/* 8048E238  48 00 00 B0 */	b lbl_8048E2E8
lbl_8048E23C:
/* 8048E23C  83 77 00 00 */	lwz r27, 0(r23)
/* 8048E240  2C 1B 00 05 */	cmpwi r27, 5
/* 8048E244  40 82 00 10 */	bne lbl_8048E254
/* 8048E248  4B F1 BC A1 */	bl mFI_GetOtherFruit
/* 8048E24C  B0 61 00 08 */	sth r3, 8(r1)
/* 8048E250  48 00 00 78 */	b lbl_8048E2C8
lbl_8048E254:
/* 8048E254  2C 1B 00 02 */	cmpwi r27, 2
/* 8048E258  40 82 00 54 */	bne lbl_8048E2AC
/* 8048E25C  3C 60 81 1D */	lis r3, other_itemNo@ha /* 0x811CEC10@ha */
/* 8048E260  38 80 00 06 */	li r4, 6
/* 8048E264  38 63 EC 10 */	addi r3, r3, other_itemNo@l /* 0x811CEC10@l */
/* 8048E268  4B BC EE 01 */	bl bzero
/* 8048E26C  3C 60 81 1D */	lis r3, other_itemNo@ha /* 0x811CEC10@ha */
/* 8048E270  A0 1E 00 16 */	lhz r0, 0x16(r30)
/* 8048E274  38 C3 EC 10 */	addi r6, r3, other_itemNo@l /* 0x811CEC10@l */
/* 8048E278  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8048E27C  B0 1F 00 02 */	sth r0, 2(r31)
/* 8048E280  7E C4 B3 78 */	mr r4, r22
/* 8048E284  81 1C 61 3C */	lwz r8, 0x613c(r28)
/* 8048E288  7F 65 DB 78 */	mr r5, r27
/* 8048E28C  B0 66 00 00 */	sth r3, 0(r6)
/* 8048E290  38 61 00 08 */	addi r3, r1, 8
/* 8048E294  38 E0 00 03 */	li r7, 3
/* 8048E298  A0 08 10 8A */	lhz r0, 0x108a(r8)
/* 8048E29C  39 00 00 08 */	li r8, 8
/* 8048E2A0  B0 1F 00 04 */	sth r0, 4(r31)
/* 8048E2A4  4B F5 61 89 */	bl mQst_GetGoods_common
/* 8048E2A8  48 00 00 20 */	b lbl_8048E2C8
lbl_8048E2AC:
/* 8048E2AC  7E C4 B3 78 */	mr r4, r22
/* 8048E2B0  7F 65 DB 78 */	mr r5, r27
/* 8048E2B4  7F A6 EB 78 */	mr r6, r29
/* 8048E2B8  38 61 00 08 */	addi r3, r1, 8
/* 8048E2BC  38 E0 00 02 */	li r7, 2
/* 8048E2C0  39 00 00 08 */	li r8, 8
/* 8048E2C4  4B F5 61 69 */	bl mQst_GetGoods_common
lbl_8048E2C8:
/* 8048E2C8  A0 61 00 08 */	lhz r3, 8(r1)
/* 8048E2CC  7C BE AA 14 */	add r5, r30, r21
/* 8048E2D0  38 9A 00 01 */	addi r4, r26, 1
/* 8048E2D4  B0 65 00 16 */	sth r3, 0x16(r5)
/* 8048E2D8  4B F5 53 5D */	bl mQst_SetItemNameStr
/* 8048E2DC  3A F7 00 04 */	addi r23, r23, 4
/* 8048E2E0  3B 5A 00 01 */	addi r26, r26, 1
/* 8048E2E4  3A B5 00 02 */	addi r21, r21, 2
lbl_8048E2E8:
/* 8048E2E8  7C 1A C0 00 */	cmpw r26, r24
/* 8048E2EC  41 80 FF 50 */	blt lbl_8048E23C
/* 8048E2F0  2C 19 00 00 */	cmpwi r25, 0
/* 8048E2F4  40 82 00 54 */	bne lbl_8048E348
/* 8048E2F8  4B BC E9 FD */	bl fqrand
/* 8048E2FC  6F 03 80 00 */	xoris r3, r24, 0x8000
/* 8048E300  3C 00 43 30 */	lis r0, 0x4330
/* 8048E304  90 61 00 14 */	stw r3, 0x14(r1)
/* 8048E308  3C 80 80 64 */	lis r4, lit_504@ha /* 0x80644C2C@ha */
/* 8048E30C  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E310  C8 44 4C 2C */	lfd f2, lit_504@l(r4)  /* 0x80644C2C@l */
/* 8048E314  90 01 00 10 */	stw r0, 0x10(r1)
/* 8048E318  38 63 EB F0 */	addi r3, r3, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E31C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8048E320  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048E324  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048E328  FC 00 00 1E */	fctiwz f0, f0
/* 8048E32C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8048E330  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8048E334  54 00 08 3C */	slwi r0, r0, 1
/* 8048E338  7C 63 02 14 */	add r3, r3, r0
/* 8048E33C  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8048E340  B0 01 00 08 */	sth r0, 8(r1)
/* 8048E344  48 00 00 0C */	b lbl_8048E350
lbl_8048E348:
/* 8048E348  38 00 25 12 */	li r0, 0x2512
/* 8048E34C  B0 01 00 08 */	sth r0, 8(r1)
lbl_8048E350:
/* 8048E350  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048E354  A0 61 00 08 */	lhz r3, 8(r1)
/* 8048E358  38 A4 EB F0 */	addi r5, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048E35C  B0 65 00 1C */	sth r3, 0x1c(r5)
/* 8048E360  38 80 00 04 */	li r4, 4
/* 8048E364  4B F5 52 D1 */	bl mQst_SetItemNameStr
/* 8048E368  39 61 00 50 */	addi r11, r1, 0x50
/* 8048E36C  4B C0 CB 95 */	bl func_8009AF00
/* 8048E370  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8048E374  7C 08 03 A6 */	mtlr r0
/* 8048E378  38 21 00 50 */	addi r1, r1, 0x50
/* 8048E37C  4E 80 00 20 */	blr 
