lbl_80560DF0:
/* 80560DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80560DF4  7C 08 02 A6 */	mflr r0
/* 80560DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80560DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80560E00  4B B3 A0 D5 */	bl func_8009AED4
/* 80560E04  7C BF 2B 78 */	mr r31, r5
/* 80560E08  7C 7D 1B 78 */	mr r29, r3
/* 80560E0C  3C A0 80 6B */	lis r5, process@ha /* 0x806AA4AC@ha */
/* 80560E10  93 E3 09 94 */	stw r31, 0x994(r3)
/* 80560E14  57 E0 10 3A */	slwi r0, r31, 2
/* 80560E18  7C 9E 23 78 */	mr r30, r4
/* 80560E1C  38 A5 A4 AC */	addi r5, r5, process@l /* 0x806AA4AC@l */
/* 80560E20  7F E4 FB 78 */	mr r4, r31
/* 80560E24  7C 05 00 2E */	lwzx r0, r5, r0
/* 80560E28  90 03 09 98 */	stw r0, 0x998(r3)
/* 80560E2C  4B FF E6 4D */	bl func_8055F478
/* 80560E30  7F A3 EB 78 */	mr r3, r29
/* 80560E34  7F C4 F3 78 */	mr r4, r30
/* 80560E38  7F E5 FB 78 */	mr r5, r31
/* 80560E3C  4B FF FF 81 */	bl aNM2_init_proc
/* 80560E40  39 61 00 20 */	addi r11, r1, 0x20
/* 80560E44  4B B3 A0 DD */	bl func_8009AF20
/* 80560E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80560E4C  7C 08 03 A6 */	mtlr r0
/* 80560E50  38 21 00 20 */	addi r1, r1, 0x20
/* 80560E54  4E 80 00 20 */	blr 
