lbl_803FC4D0:
/* 803FC4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC4D4  7C 08 02 A6 */	mflr r0
/* 803FC4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC4DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC4E0  4B C9 E9 F1 */	bl func_8009AED0
/* 803FC4E4  7C 7C 1B 78 */	mr r28, r3
/* 803FC4E8  7C 9D 23 78 */	mr r29, r4
/* 803FC4EC  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 803FC4F0  3B C0 00 00 */	li r30, 0
/* 803FC4F4  28 00 00 00 */	cmplwi r0, 0
/* 803FC4F8  41 82 01 C8 */	beq lbl_803FC6C0
/* 803FC4FC  80 1C 01 64 */	lwz r0, 0x164(r28)
/* 803FC500  28 00 00 00 */	cmplwi r0, 0
/* 803FC504  41 82 01 BC */	beq lbl_803FC6C0
/* 803FC508  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803FC50C  28 00 00 00 */	cmplwi r0, 0
/* 803FC510  41 82 01 B0 */	beq lbl_803FC6C0
/* 803FC514  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FC518  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FC51C  3F E4 00 02 */	addis r31, r4, 2
/* 803FC520  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FC524  28 00 00 00 */	cmplwi r0, 0
/* 803FC528  40 82 00 F4 */	bne lbl_803FC61C
/* 803FC52C  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FC530  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FC534  4B FF E1 A9 */	bl mCD_CheckInitProtectCode
/* 803FC538  2C 03 00 00 */	cmpwi r3, 0
/* 803FC53C  40 82 00 6C */	bne lbl_803FC5A8
/* 803FC540  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FC544  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FC548  4B FF E1 D1 */	bl mCD_CheckProtectCode
/* 803FC54C  2C 03 00 01 */	cmpwi r3, 1
/* 803FC550  40 82 00 58 */	bne lbl_803FC5A8
/* 803FC554  7F 83 E3 78 */	mr r3, r28
/* 803FC558  4B FF EC 09 */	bl mCD_GetNoLandSlot_bg
/* 803FC55C  2C 03 00 01 */	cmpwi r3, 1
/* 803FC560  40 82 00 38 */	bne lbl_803FC598
/* 803FC564  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FC568  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FC56C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803FC570  38 60 00 00 */	li r3, 0
/* 803FC574  90 1C 01 80 */	stw r0, 0x180(r28)
/* 803FC578  3C 84 00 03 */	addis r4, r4, 3
/* 803FC57C  38 00 00 09 */	li r0, 9
/* 803FC580  3B C0 00 01 */	li r30, 1
/* 803FC584  A0 84 85 96 */	lhz r4, -0x7a6a(r4)
/* 803FC588  90 9C 01 84 */	stw r4, 0x184(r28)
/* 803FC58C  98 7C 00 10 */	stb r3, 0x10(r28)
/* 803FC590  90 1D 00 00 */	stw r0, 0(r29)
/* 803FC594  48 00 01 30 */	b lbl_803FC6C4
lbl_803FC598:
/* 803FC598  2C 03 00 00 */	cmpwi r3, 0
/* 803FC59C  41 82 01 28 */	beq lbl_803FC6C4
/* 803FC5A0  3B C0 FF FF */	li r30, -1
/* 803FC5A4  48 00 01 20 */	b lbl_803FC6C4
lbl_803FC5A8:
/* 803FC5A8  3C 80 00 07 */	lis r4, 0x0007 /* 0x00072000@ha */
/* 803FC5AC  7F 83 E3 78 */	mr r3, r28
/* 803FC5B0  38 84 20 00 */	addi r4, r4, 0x2000 /* 0x00072000@l */
/* 803FC5B4  4B FF E9 3D */	bl mCD_GetSpaceSlot_bg2
/* 803FC5B8  2C 03 00 01 */	cmpwi r3, 1
/* 803FC5BC  40 82 00 50 */	bne lbl_803FC60C
/* 803FC5C0  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FC5C4  2C 00 FF FF */	cmpwi r0, -1
/* 803FC5C8  41 82 00 3C */	beq lbl_803FC604
/* 803FC5CC  80 9D 00 00 */	lwz r4, 0(r29)
/* 803FC5D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FC5D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FC5D8  38 00 00 00 */	li r0, 0
/* 803FC5DC  38 84 00 01 */	addi r4, r4, 1
/* 803FC5E0  3B C0 00 01 */	li r30, 1
/* 803FC5E4  90 9D 00 00 */	stw r4, 0(r29)
/* 803FC5E8  3C 63 00 03 */	addis r3, r3, 3
/* 803FC5EC  88 9F 0F 1A */	lbz r4, 0xf1a(r31)
/* 803FC5F0  90 9C 01 80 */	stw r4, 0x180(r28)
/* 803FC5F4  A0 63 85 96 */	lhz r3, -0x7a6a(r3)
/* 803FC5F8  90 7C 01 84 */	stw r3, 0x184(r28)
/* 803FC5FC  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803FC600  48 00 00 C4 */	b lbl_803FC6C4
lbl_803FC604:
/* 803FC604  3B C0 FF FF */	li r30, -1
/* 803FC608  48 00 00 BC */	b lbl_803FC6C4
lbl_803FC60C:
/* 803FC60C  2C 03 00 00 */	cmpwi r3, 0
/* 803FC610  41 82 00 B4 */	beq lbl_803FC6C4
/* 803FC614  3B C0 FF FF */	li r30, -1
/* 803FC618  48 00 00 AC */	b lbl_803FC6C4
lbl_803FC61C:
/* 803FC61C  4B FF F2 4D */	bl mCD_get_this_land_slot_no_nes
/* 803FC620  2C 03 00 01 */	cmpwi r3, 1
/* 803FC624  40 82 00 8C */	bne lbl_803FC6B0
/* 803FC628  83 DC 00 00 */	lwz r30, 0(r28)
/* 803FC62C  2C 1E FF FF */	cmpwi r30, -1
/* 803FC630  41 82 00 78 */	beq lbl_803FC6A8
/* 803FC634  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FC638  7F C4 F3 78 */	mr r4, r30
/* 803FC63C  4B FF F3 39 */	bl mCD_check_copyProtect
/* 803FC640  2C 03 00 01 */	cmpwi r3, 1
/* 803FC644  40 82 00 30 */	bne lbl_803FC674
/* 803FC648  38 00 00 07 */	li r0, 7
/* 803FC64C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FC650  90 1D 00 00 */	stw r0, 0(r29)
/* 803FC654  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FC658  3C 63 00 03 */	addis r3, r3, 3
/* 803FC65C  3B C0 00 01 */	li r30, 1
/* 803FC660  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FC664  90 1C 01 80 */	stw r0, 0x180(r28)
/* 803FC668  A0 03 85 96 */	lhz r0, -0x7a6a(r3)
/* 803FC66C  90 1C 01 84 */	stw r0, 0x184(r28)
/* 803FC670  48 00 00 54 */	b lbl_803FC6C4
lbl_803FC674:
/* 803FC674  1C 1E 00 94 */	mulli r0, r30, 0x94
/* 803FC678  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FC67C  38 A0 00 07 */	li r5, 7
/* 803FC680  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FC684  7C 9C 02 14 */	add r4, r28, r0
/* 803FC688  3B C0 FF FF */	li r30, -1
/* 803FC68C  90 A4 00 CC */	stw r5, 0xcc(r4)
/* 803FC690  3C 63 00 03 */	addis r3, r3, 3
/* 803FC694  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FC698  90 1C 01 80 */	stw r0, 0x180(r28)
/* 803FC69C  A0 03 85 96 */	lhz r0, -0x7a6a(r3)
/* 803FC6A0  90 1C 01 84 */	stw r0, 0x184(r28)
/* 803FC6A4  48 00 00 20 */	b lbl_803FC6C4
lbl_803FC6A8:
/* 803FC6A8  3B C0 FF FF */	li r30, -1
/* 803FC6AC  48 00 00 18 */	b lbl_803FC6C4
lbl_803FC6B0:
/* 803FC6B0  2C 03 00 00 */	cmpwi r3, 0
/* 803FC6B4  41 82 00 10 */	beq lbl_803FC6C4
/* 803FC6B8  3B C0 FF FF */	li r30, -1
/* 803FC6BC  48 00 00 08 */	b lbl_803FC6C4
lbl_803FC6C0:
/* 803FC6C0  3B C0 FF FF */	li r30, -1
lbl_803FC6C4:
/* 803FC6C4  7F C3 F3 78 */	mr r3, r30
/* 803FC6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC6CC  4B C9 E8 51 */	bl func_8009AF1C
/* 803FC6D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC6D4  7C 08 03 A6 */	mtlr r0
/* 803FC6D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC6DC  4E 80 00 20 */	blr 
