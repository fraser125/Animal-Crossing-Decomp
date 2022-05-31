lbl_8039EA98:
/* 8039EA98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039EA9C  7C 08 02 A6 */	mflr r0
/* 8039EAA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039EAA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8039EAA8  4B CF C4 19 */	bl func_8009AEC0
/* 8039EAAC  7C 7F 1B 78 */	mr r31, r3
/* 8039EAB0  38 80 00 F5 */	li r4, 0xf5
/* 8039EAB4  38 A0 00 C8 */	li r5, 0xc8
/* 8039EAB8  38 C0 00 AA */	li r6, 0xaa
/* 8039EABC  38 E0 00 FF */	li r7, 0xff
/* 8039EAC0  4B CB C6 E1 */	bl gfxprint_color
/* 8039EAC4  7F E3 FB 78 */	mr r3, r31
/* 8039EAC8  38 80 00 03 */	li r4, 3
/* 8039EACC  38 A0 00 0B */	li r5, 0xb
/* 8039EAD0  4B CB C7 41 */	bl gfxprint_locate8x8
/* 8039EAD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039EAD8  3C A0 80 65 */	lis r5, lit_2106@ha /* 0x806521D0@ha */
/* 8039EADC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8039EAE0  3D 04 00 02 */	addis r8, r4, 2
/* 8039EAE4  7F E3 FB 78 */	mr r3, r31
/* 8039EAE8  38 85 21 D0 */	addi r4, r5, lit_2106@l /* 0x806521D0@l */
/* 8039EAEC  A0 A8 05 5E */	lhz r5, 0x55e(r8)
/* 8039EAF0  A0 E8 05 60 */	lhz r7, 0x560(r8)
/* 8039EAF4  54 A6 06 3E */	clrlwi r6, r5, 0x18
/* 8039EAF8  A0 08 05 62 */	lhz r0, 0x562(r8)
/* 8039EAFC  88 A8 05 54 */	lbz r5, 0x554(r8)
/* 8039EB00  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 8039EB04  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8039EB08  4C C6 31 82 */	crclr 6
/* 8039EB0C  4B CB CE 11 */	bl gfxprint_printf
/* 8039EB10  7F E3 FB 78 */	mr r3, r31
/* 8039EB14  38 80 00 1E */	li r4, 0x1e
/* 8039EB18  38 A0 00 0B */	li r5, 0xb
/* 8039EB1C  4B CB C6 F5 */	bl gfxprint_locate8x8
/* 8039EB20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039EB24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039EB28  3C 63 00 02 */	addis r3, r3, 2
/* 8039EB2C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8039EB30  4B FF FB 81 */	bl mEv_LivePlayer
/* 8039EB34  2C 03 00 00 */	cmpwi r3, 0
/* 8039EB38  3B A0 00 2E */	li r29, 0x2e
/* 8039EB3C  40 82 00 08 */	bne lbl_8039EB44
/* 8039EB40  3B A0 00 4C */	li r29, 0x4c
lbl_8039EB44:
/* 8039EB44  4B FF EA A1 */	bl mEv_PlayerOK
/* 8039EB48  2C 03 00 00 */	cmpwi r3, 0
/* 8039EB4C  3B C0 00 2E */	li r30, 0x2e
/* 8039EB50  40 82 00 08 */	bne lbl_8039EB58
/* 8039EB54  3B C0 00 50 */	li r30, 0x50
lbl_8039EB58:
/* 8039EB58  4B FF B7 E1 */	bl mDemo_CheckDemo
/* 8039EB5C  2C 03 00 00 */	cmpwi r3, 0
/* 8039EB60  3B 80 00 2E */	li r28, 0x2e
/* 8039EB64  41 82 00 08 */	beq lbl_8039EB6C
/* 8039EB68  3B 80 00 44 */	li r28, 0x44
lbl_8039EB6C:
/* 8039EB6C  4B FF C0 3D */	bl mEv_CheckArbeit
/* 8039EB70  2C 03 00 00 */	cmpwi r3, 0
/* 8039EB74  3B 60 00 2E */	li r27, 0x2e
/* 8039EB78  41 82 00 08 */	beq lbl_8039EB80
/* 8039EB7C  3B 60 00 41 */	li r27, 0x41
lbl_8039EB80:
/* 8039EB80  4B FF BF B1 */	bl mEv_CheckRealArbeit
/* 8039EB84  2C 03 00 00 */	cmpwi r3, 0
/* 8039EB88  3B 40 00 2E */	li r26, 0x2e
/* 8039EB8C  41 82 00 08 */	beq lbl_8039EB94
/* 8039EB90  3B 40 00 52 */	li r26, 0x52
lbl_8039EB94:
/* 8039EB94  4B FF C2 81 */	bl mEv_CheckGateway
/* 8039EB98  2C 03 00 00 */	cmpwi r3, 0
/* 8039EB9C  3B 20 00 2E */	li r25, 0x2e
/* 8039EBA0  41 82 00 08 */	beq lbl_8039EBA8
/* 8039EBA4  3B 20 00 47 */	li r25, 0x47
lbl_8039EBA8:
/* 8039EBA8  4B FF C1 85 */	bl mEv_CheckFirstIntro
/* 8039EBAC  2C 03 00 00 */	cmpwi r3, 0
/* 8039EBB0  3B 00 00 2E */	li r24, 0x2e
/* 8039EBB4  41 82 00 08 */	beq lbl_8039EBBC
/* 8039EBB8  3B 00 00 46 */	li r24, 0x46
lbl_8039EBBC:
/* 8039EBBC  4B FF C2 FD */	bl mEv_CheckTitleDemo
/* 8039EBC0  2C 03 00 00 */	cmpwi r3, 0
/* 8039EBC4  38 A0 00 2E */	li r5, 0x2e
/* 8039EBC8  41 82 00 08 */	beq lbl_8039EBD0
/* 8039EBCC  38 A0 00 54 */	li r5, 0x54
lbl_8039EBD0:
/* 8039EBD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8039EBD4  3C 60 80 65 */	lis r3, lit_2107@ha /* 0x806521E4@ha */
/* 8039EBD8  38 83 21 E4 */	addi r4, r3, lit_2107@l /* 0x806521E4@l */
/* 8039EBDC  7F 06 C3 78 */	mr r6, r24
/* 8039EBE0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8039EBE4  7F E3 FB 78 */	mr r3, r31
/* 8039EBE8  7F 27 CB 78 */	mr r7, r25
/* 8039EBEC  7F 48 D3 78 */	mr r8, r26
/* 8039EBF0  7F 69 DB 78 */	mr r9, r27
/* 8039EBF4  7F 8A E3 78 */	mr r10, r28
/* 8039EBF8  4C C6 31 82 */	crclr 6
/* 8039EBFC  4B CB CD 21 */	bl gfxprint_printf
/* 8039EC00  39 61 00 30 */	addi r11, r1, 0x30
/* 8039EC04  4B CF C3 09 */	bl func_8009AF0C
/* 8039EC08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039EC0C  7C 08 03 A6 */	mtlr r0
/* 8039EC10  38 21 00 30 */	addi r1, r1, 0x30
/* 8039EC14  4E 80 00 20 */	blr 
