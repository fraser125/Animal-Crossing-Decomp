lbl_804ACD20:
/* 804ACD20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804ACD24  7C 08 02 A6 */	mflr r0
/* 804ACD28  90 01 00 44 */	stw r0, 0x44(r1)
/* 804ACD2C  39 61 00 40 */	addi r11, r1, 0x40
/* 804ACD30  4B BE E1 A5 */	bl func_8009AED4
/* 804ACD34  7C 9D 23 78 */	mr r29, r4
/* 804ACD38  7C 7F 1B 78 */	mr r31, r3
/* 804ACD3C  93 A1 00 08 */	stw r29, 8(r1)
/* 804ACD40  38 7F 01 84 */	addi r3, r31, 0x184
/* 804ACD44  38 9F 01 88 */	addi r4, r31, 0x188
/* 804ACD48  38 A0 00 00 */	li r5, 0
/* 804ACD4C  38 C0 00 00 */	li r6, 0
/* 804ACD50  38 E0 03 E8 */	li r7, 0x3e8
/* 804ACD54  39 00 00 00 */	li r8, 0
/* 804ACD58  39 20 00 40 */	li r9, 0x40
/* 804ACD5C  39 40 00 20 */	li r10, 0x20
/* 804ACD60  4B FF FB 8D */	bl aTrainWindow_TileScroll
/* 804ACD64  38 1F 01 94 */	addi r0, r31, 0x194
/* 804ACD68  7C 7E 1B 78 */	mr r30, r3
/* 804ACD6C  90 01 00 08 */	stw r0, 8(r1)
/* 804ACD70  38 7F 01 98 */	addi r3, r31, 0x198
/* 804ACD74  39 60 00 00 */	li r11, 0
/* 804ACD78  38 00 00 10 */	li r0, 0x10
/* 804ACD7C  90 61 00 0C */	stw r3, 0xc(r1)
/* 804ACD80  38 7F 01 8C */	addi r3, r31, 0x18c
/* 804ACD84  38 9F 01 90 */	addi r4, r31, 0x190
/* 804ACD88  38 A0 00 00 */	li r5, 0
/* 804ACD8C  91 61 00 10 */	stw r11, 0x10(r1)
/* 804ACD90  38 C0 00 00 */	li r6, 0
/* 804ACD94  38 E0 03 E8 */	li r7, 0x3e8
/* 804ACD98  39 00 00 00 */	li r8, 0
/* 804ACD9C  91 61 00 14 */	stw r11, 0x14(r1)
/* 804ACDA0  39 20 00 40 */	li r9, 0x40
/* 804ACDA4  39 40 00 08 */	li r10, 8
/* 804ACDA8  91 61 00 18 */	stw r11, 0x18(r1)
/* 804ACDAC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 804ACDB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804ACDB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ACDB8  93 A1 00 28 */	stw r29, 0x28(r1)
/* 804ACDBC  4B FF FB B9 */	bl aTrainWindow_TileScroll2
/* 804ACDC0  28 1E 00 00 */	cmplwi r30, 0
/* 804ACDC4  41 82 00 0C */	beq lbl_804ACDD0
/* 804ACDC8  28 03 00 00 */	cmplwi r3, 0
/* 804ACDCC  40 82 00 0C */	bne lbl_804ACDD8
lbl_804ACDD0:
/* 804ACDD0  38 60 00 00 */	li r3, 0
/* 804ACDD4  48 00 00 AC */	b lbl_804ACE80
lbl_804ACDD8:
/* 804ACDD8  81 3D 00 00 */	lwz r9, 0(r29)
/* 804ACDDC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB06002C@ha */
/* 804ACDE0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804ACDE4  81 09 02 D0 */	lwz r8, 0x2d0(r9)
/* 804ACDE8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804ACDEC  38 E5 00 2C */	addi r7, r5, 0x002C /* 0xDB06002C@l */
/* 804ACDF0  38 C5 00 30 */	addi r6, r5, 0x30
/* 804ACDF4  38 08 00 08 */	addi r0, r8, 8
/* 804ACDF8  3C 84 00 02 */	addis r4, r4, 2
/* 804ACDFC  90 09 02 D0 */	stw r0, 0x2d0(r9)
/* 804ACE00  90 E8 00 00 */	stw r7, 0(r8)
/* 804ACE04  93 C8 00 04 */	stw r30, 4(r8)
/* 804ACE08  80 A9 02 E0 */	lwz r5, 0x2e0(r9)
/* 804ACE0C  38 05 00 08 */	addi r0, r5, 8
/* 804ACE10  90 09 02 E0 */	stw r0, 0x2e0(r9)
/* 804ACE14  90 E5 00 00 */	stw r7, 0(r5)
/* 804ACE18  93 C5 00 04 */	stw r30, 4(r5)
/* 804ACE1C  80 A9 02 D0 */	lwz r5, 0x2d0(r9)
/* 804ACE20  38 05 00 08 */	addi r0, r5, 8
/* 804ACE24  90 09 02 D0 */	stw r0, 0x2d0(r9)
/* 804ACE28  90 C5 00 00 */	stw r6, 0(r5)
/* 804ACE2C  90 65 00 04 */	stw r3, 4(r5)
/* 804ACE30  80 A9 02 E0 */	lwz r5, 0x2e0(r9)
/* 804ACE34  38 05 00 08 */	addi r0, r5, 8
/* 804ACE38  90 09 02 E0 */	stw r0, 0x2e0(r9)
/* 804ACE3C  90 C5 00 00 */	stw r6, 0(r5)
/* 804ACE40  90 65 00 04 */	stw r3, 4(r5)
/* 804ACE44  88 04 65 22 */	lbz r0, 0x6522(r4)
/* 804ACE48  28 00 00 00 */	cmplwi r0, 0
/* 804ACE4C  41 82 00 30 */	beq lbl_804ACE7C
/* 804ACE50  4B FF F5 D9 */	bl func_804AC428
/* 804ACE54  B0 7F 01 78 */	sth r3, 0x178(r31)
/* 804ACE58  3C 80 80 69 */	lis r4, data_8068F500@ha /* 0x8068F500@ha */
/* 804ACE5C  3C 60 80 4B */	lis r3, aTrainWindow_DrawGoingOutTunnel@ha /* 0x804ACB94@ha */
/* 804ACE60  A8 BF 01 78 */	lha r5, 0x178(r31)
/* 804ACE64  38 03 CB 94 */	addi r0, r3, aTrainWindow_DrawGoingOutTunnel@l /* 0x804ACB94@l */
/* 804ACE68  38 84 F5 00 */	addi r4, r4, data_8068F500@l /* 0x8068F500@l */
/* 804ACE6C  54 A3 28 34 */	slwi r3, r5, 5
/* 804ACE70  7C 64 1A 14 */	add r3, r4, r3
/* 804ACE74  90 7F 01 80 */	stw r3, 0x180(r31)
/* 804ACE78  90 1F 01 74 */	stw r0, 0x174(r31)
lbl_804ACE7C:
/* 804ACE7C  38 60 00 01 */	li r3, 1
lbl_804ACE80:
/* 804ACE80  39 61 00 40 */	addi r11, r1, 0x40
/* 804ACE84  4B BE E0 9D */	bl func_8009AF20
/* 804ACE88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804ACE8C  7C 08 03 A6 */	mtlr r0
/* 804ACE90  38 21 00 40 */	addi r1, r1, 0x40
/* 804ACE94  4E 80 00 20 */	blr 
