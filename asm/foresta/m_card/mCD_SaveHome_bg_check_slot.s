lbl_803FBD40:
/* 803FBD40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FBD44  7C 08 02 A6 */	mflr r0
/* 803FBD48  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FBD4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FBD50  4B C9 F1 81 */	bl func_8009AED0
/* 803FBD54  7C 7C 1B 78 */	mr r28, r3
/* 803FBD58  7C 9D 23 78 */	mr r29, r4
/* 803FBD5C  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 803FBD60  3B C0 00 00 */	li r30, 0
/* 803FBD64  28 00 00 00 */	cmplwi r0, 0
/* 803FBD68  41 82 01 D8 */	beq lbl_803FBF40
/* 803FBD6C  80 1C 01 64 */	lwz r0, 0x164(r28)
/* 803FBD70  28 00 00 00 */	cmplwi r0, 0
/* 803FBD74  41 82 01 CC */	beq lbl_803FBF40
/* 803FBD78  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 803FBD7C  28 00 00 00 */	cmplwi r0, 0
/* 803FBD80  41 82 01 C0 */	beq lbl_803FBF40
/* 803FBD84  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FBD88  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FBD8C  3F E4 00 02 */	addis r31, r4, 2
/* 803FBD90  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FBD94  28 00 00 00 */	cmplwi r0, 0
/* 803FBD98  40 82 01 00 */	bne lbl_803FBE98
/* 803FBD9C  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FBDA0  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FBDA4  4B FF E9 39 */	bl mCD_CheckInitProtectCode
/* 803FBDA8  2C 03 00 00 */	cmpwi r3, 0
/* 803FBDAC  40 82 00 70 */	bne lbl_803FBE1C
/* 803FBDB0  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 803FBDB4  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 803FBDB8  4B FF E9 61 */	bl mCD_CheckProtectCode
/* 803FBDBC  2C 03 00 01 */	cmpwi r3, 1
/* 803FBDC0  40 82 00 5C */	bne lbl_803FBE1C
/* 803FBDC4  7F 83 E3 78 */	mr r3, r28
/* 803FBDC8  4B FF F3 99 */	bl mCD_GetNoLandSlot_bg
/* 803FBDCC  2C 03 00 01 */	cmpwi r3, 1
/* 803FBDD0  40 82 00 3C */	bne lbl_803FBE0C
/* 803FBDD4  88 9F 0F 1A */	lbz r4, 0xf1a(r31)
/* 803FBDD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FBDDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FBDE0  38 00 00 00 */	li r0, 0
/* 803FBDE4  90 9C 01 80 */	stw r4, 0x180(r28)
/* 803FBDE8  3C 63 00 03 */	addis r3, r3, 3
/* 803FBDEC  3B C0 00 01 */	li r30, 1
/* 803FBDF0  A0 63 85 96 */	lhz r3, -0x7a6a(r3)
/* 803FBDF4  90 7C 01 84 */	stw r3, 0x184(r28)
/* 803FBDF8  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803FBDFC  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FBE00  38 03 00 01 */	addi r0, r3, 1
/* 803FBE04  90 1D 00 00 */	stw r0, 0(r29)
/* 803FBE08  48 00 01 3C */	b lbl_803FBF44
lbl_803FBE0C:
/* 803FBE0C  2C 03 00 00 */	cmpwi r3, 0
/* 803FBE10  41 82 01 34 */	beq lbl_803FBF44
/* 803FBE14  3B C0 FF FF */	li r30, -1
/* 803FBE18  48 00 01 2C */	b lbl_803FBF44
lbl_803FBE1C:
/* 803FBE1C  3C 80 00 07 */	lis r4, 0x0007 /* 0x00072000@ha */
/* 803FBE20  7F 83 E3 78 */	mr r3, r28
/* 803FBE24  38 84 20 00 */	addi r4, r4, 0x2000 /* 0x00072000@l */
/* 803FBE28  4B FF F0 C9 */	bl mCD_GetSpaceSlot_bg2
/* 803FBE2C  2C 03 00 01 */	cmpwi r3, 1
/* 803FBE30  40 82 00 50 */	bne lbl_803FBE80
/* 803FBE34  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FBE38  2C 00 FF FF */	cmpwi r0, -1
/* 803FBE3C  41 82 00 3C */	beq lbl_803FBE78
/* 803FBE40  80 9D 00 00 */	lwz r4, 0(r29)
/* 803FBE44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FBE48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FBE4C  38 00 00 00 */	li r0, 0
/* 803FBE50  38 84 00 01 */	addi r4, r4, 1
/* 803FBE54  3B C0 00 01 */	li r30, 1
/* 803FBE58  90 9D 00 00 */	stw r4, 0(r29)
/* 803FBE5C  3C 63 00 03 */	addis r3, r3, 3
/* 803FBE60  88 9F 0F 1A */	lbz r4, 0xf1a(r31)
/* 803FBE64  90 9C 01 80 */	stw r4, 0x180(r28)
/* 803FBE68  A0 63 85 96 */	lhz r3, -0x7a6a(r3)
/* 803FBE6C  90 7C 01 84 */	stw r3, 0x184(r28)
/* 803FBE70  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803FBE74  48 00 00 D0 */	b lbl_803FBF44
lbl_803FBE78:
/* 803FBE78  3B C0 FF FF */	li r30, -1
/* 803FBE7C  48 00 00 C8 */	b lbl_803FBF44
lbl_803FBE80:
/* 803FBE80  2C 03 00 00 */	cmpwi r3, 0
/* 803FBE84  41 82 00 C0 */	beq lbl_803FBF44
/* 803FBE88  38 00 00 00 */	li r0, 0
/* 803FBE8C  3B C0 FF FF */	li r30, -1
/* 803FBE90  98 1C 00 10 */	stb r0, 0x10(r28)
/* 803FBE94  48 00 00 B0 */	b lbl_803FBF44
lbl_803FBE98:
/* 803FBE98  4B FF F9 D1 */	bl mCD_get_this_land_slot_no_nes
/* 803FBE9C  2C 03 00 01 */	cmpwi r3, 1
/* 803FBEA0  40 82 00 90 */	bne lbl_803FBF30
/* 803FBEA4  83 DC 00 00 */	lwz r30, 0(r28)
/* 803FBEA8  2C 1E FF FF */	cmpwi r30, -1
/* 803FBEAC  41 82 00 7C */	beq lbl_803FBF28
/* 803FBEB0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FBEB4  7F C4 F3 78 */	mr r4, r30
/* 803FBEB8  4B FF FA BD */	bl mCD_check_copyProtect
/* 803FBEBC  2C 03 00 01 */	cmpwi r3, 1
/* 803FBEC0  40 82 00 34 */	bne lbl_803FBEF4
/* 803FBEC4  80 9D 00 00 */	lwz r4, 0(r29)
/* 803FBEC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FBECC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FBED0  3B C0 00 01 */	li r30, 1
/* 803FBED4  38 04 00 01 */	addi r0, r4, 1
/* 803FBED8  90 1D 00 00 */	stw r0, 0(r29)
/* 803FBEDC  3C 63 00 03 */	addis r3, r3, 3
/* 803FBEE0  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FBEE4  90 1C 01 80 */	stw r0, 0x180(r28)
/* 803FBEE8  A0 03 85 96 */	lhz r0, -0x7a6a(r3)
/* 803FBEEC  90 1C 01 84 */	stw r0, 0x184(r28)
/* 803FBEF0  48 00 00 54 */	b lbl_803FBF44
lbl_803FBEF4:
/* 803FBEF4  1C 1E 00 94 */	mulli r0, r30, 0x94
/* 803FBEF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FBEFC  38 A0 00 07 */	li r5, 7
/* 803FBF00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FBF04  7C 9C 02 14 */	add r4, r28, r0
/* 803FBF08  3B C0 FF FF */	li r30, -1
/* 803FBF0C  90 A4 00 CC */	stw r5, 0xcc(r4)
/* 803FBF10  3C 63 00 03 */	addis r3, r3, 3
/* 803FBF14  88 1F 0F 1A */	lbz r0, 0xf1a(r31)
/* 803FBF18  90 1C 01 80 */	stw r0, 0x180(r28)
/* 803FBF1C  A0 03 85 96 */	lhz r0, -0x7a6a(r3)
/* 803FBF20  90 1C 01 84 */	stw r0, 0x184(r28)
/* 803FBF24  48 00 00 20 */	b lbl_803FBF44
lbl_803FBF28:
/* 803FBF28  3B C0 FF FF */	li r30, -1
/* 803FBF2C  48 00 00 18 */	b lbl_803FBF44
lbl_803FBF30:
/* 803FBF30  2C 03 00 00 */	cmpwi r3, 0
/* 803FBF34  41 82 00 10 */	beq lbl_803FBF44
/* 803FBF38  3B C0 FF FF */	li r30, -1
/* 803FBF3C  48 00 00 08 */	b lbl_803FBF44
lbl_803FBF40:
/* 803FBF40  3B C0 FF FF */	li r30, -1
lbl_803FBF44:
/* 803FBF44  7F C3 F3 78 */	mr r3, r30
/* 803FBF48  39 61 00 20 */	addi r11, r1, 0x20
/* 803FBF4C  4B C9 EF D1 */	bl func_8009AF1C
/* 803FBF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FBF54  7C 08 03 A6 */	mtlr r0
/* 803FBF58  38 21 00 20 */	addi r1, r1, 0x20
/* 803FBF5C  4E 80 00 20 */	blr 
