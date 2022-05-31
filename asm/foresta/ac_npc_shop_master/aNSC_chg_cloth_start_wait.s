lbl_8057AD50:
/* 8057AD50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057AD54  7C 08 02 A6 */	mflr r0
/* 8057AD58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057AD5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057AD60  7C 9F 23 78 */	mr r31, r4
/* 8057AD64  93 C1 00 08 */	stw r30, 8(r1)
/* 8057AD68  7C 7E 1B 78 */	mr r30, r3
/* 8057AD6C  7F E3 FB 78 */	mr r3, r31
/* 8057AD70  4B E5 E9 01 */	bl mPlib_get_player_actor_main_index
/* 8057AD74  2C 03 00 65 */	cmpwi r3, 0x65
/* 8057AD78  40 82 00 18 */	bne lbl_8057AD90
/* 8057AD7C  7F C3 F3 78 */	mr r3, r30
/* 8057AD80  7F E4 FB 78 */	mr r4, r31
/* 8057AD84  38 A0 00 28 */	li r5, 0x28
/* 8057AD88  48 00 17 2D */	bl aNSC_setupAction
/* 8057AD8C  48 00 00 74 */	b lbl_8057AE00
lbl_8057AD90:
/* 8057AD90  A0 9E 09 BE */	lhz r4, 0x9be(r30)
/* 8057AD94  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 8057AD98  41 82 00 40 */	beq lbl_8057ADD8
/* 8057AD9C  28 04 24 00 */	cmplwi r4, 0x2400
/* 8057ADA0  7F E3 FB 78 */	mr r3, r31
/* 8057ADA4  38 00 00 00 */	li r0, 0
/* 8057ADA8  41 80 00 10 */	blt lbl_8057ADB8
/* 8057ADAC  28 04 24 FF */	cmplwi r4, 0x24ff
/* 8057ADB0  40 80 00 08 */	bge lbl_8057ADB8
/* 8057ADB4  38 00 00 01 */	li r0, 1
lbl_8057ADB8:
/* 8057ADB8  20 A0 00 00 */	subfic r5, r0, 0
/* 8057ADBC  38 04 DC 00 */	addi r0, r4, -9216
/* 8057ADC0  7C A5 29 10 */	subfe r5, r5, r5
/* 8057ADC4  38 C0 00 01 */	li r6, 1
/* 8057ADC8  7C 00 28 38 */	and r0, r0, r5
/* 8057ADCC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8057ADD0  4B E5 FE 99 */	bl mPlib_request_main_change_cloth_forNPC_type1
/* 8057ADD4  48 00 00 2C */	b lbl_8057AE00
lbl_8057ADD8:
/* 8057ADD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057ADDC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE20@ha */
/* 8057ADE0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8057ADE4  7F E3 FB 78 */	mr r3, r31
/* 8057ADE8  3C A4 00 02 */	addis r5, r4, 2
/* 8057ADEC  38 86 FE 20 */	addi r4, r6, 0xFE20 /* 0x0000FE20@l */
/* 8057ADF0  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8057ADF4  38 C0 00 01 */	li r6, 1
/* 8057ADF8  A0 A5 10 88 */	lhz r5, 0x1088(r5)
/* 8057ADFC  4B E5 FE 6D */	bl mPlib_request_main_change_cloth_forNPC_type1
lbl_8057AE00:
/* 8057AE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057AE04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057AE08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057AE0C  7C 08 03 A6 */	mtlr r0
/* 8057AE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8057AE14  4E 80 00 20 */	blr 
