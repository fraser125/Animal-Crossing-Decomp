lbl_8057CF18:
/* 8057CF18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8057CF1C  7C 08 02 A6 */	mflr r0
/* 8057CF20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057CF24  39 61 00 30 */	addi r11, r1, 0x30
/* 8057CF28  4B B1 DF AD */	bl func_8009AED4
/* 8057CF2C  7C 7F 1B 78 */	mr r31, r3
/* 8057CF30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057CF34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057CF38  A8 1F 09 AC */	lha r0, 0x9ac(r31)
/* 8057CF3C  3F A3 00 02 */	addis r29, r3, 2
/* 8057CF40  54 00 08 3C */	slwi r0, r0, 1
/* 8057CF44  3B BD 04 5E */	addi r29, r29, 0x45e
/* 8057CF48  7C 9D 02 2E */	lhzx r4, r29, r0
/* 8057CF4C  28 04 FE 10 */	cmplwi r4, 0xfe10
/* 8057CF50  41 82 00 0C */	beq lbl_8057CF5C
/* 8057CF54  28 04 00 00 */	cmplwi r4, 0
/* 8057CF58  40 82 00 0C */	bne lbl_8057CF64
lbl_8057CF5C:
/* 8057CF5C  38 60 00 00 */	li r3, 0
/* 8057CF60  48 00 00 7C */	b lbl_8057CFDC
lbl_8057CF64:
/* 8057CF64  38 61 00 08 */	addi r3, r1, 8
/* 8057CF68  4B E3 8A 3D */	bl mIN_copy_name_str
/* 8057CF6C  A8 1F 09 AC */	lha r0, 0x9ac(r31)
/* 8057CF70  54 00 08 3C */	slwi r0, r0, 1
/* 8057CF74  7C 7D 02 2E */	lhzx r3, r29, r0
/* 8057CF78  4B E3 8B A1 */	bl mIN_get_item_article
/* 8057CF7C  7C 7E 1B 78 */	mr r30, r3
/* 8057CF80  4B E4 27 29 */	bl func_803BF6A8
/* 8057CF84  7F C7 F3 78 */	mr r7, r30
/* 8057CF88  38 A1 00 08 */	addi r5, r1, 8
/* 8057CF8C  38 80 00 00 */	li r4, 0
/* 8057CF90  38 C0 00 10 */	li r6, 0x10
/* 8057CF94  4B E4 2E BD */	bl mMsg_Set_item_str_art
/* 8057CF98  A8 1F 09 AC */	lha r0, 0x9ac(r31)
/* 8057CF9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057CFA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057CFA4  38 A0 00 01 */	li r5, 1
/* 8057CFA8  3C 63 00 02 */	addis r3, r3, 2
/* 8057CFAC  54 00 08 3C */	slwi r0, r0, 1
/* 8057CFB0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057CFB4  7C 9D 02 2E */	lhzx r4, r29, r0
/* 8057CFB8  4B E6 3F 51 */	bl mPr_SetFreePossessionItem
/* 8057CFBC  A8 1F 09 AC */	lha r0, 0x9ac(r31)
/* 8057CFC0  7F E3 FB 78 */	mr r3, r31
/* 8057CFC4  1C 00 00 03 */	mulli r0, r0, 3
/* 8057CFC8  7C 04 07 34 */	extsh r4, r0
/* 8057CFCC  4B FF F9 5D */	bl aSHM_set_start_avoid_pos
/* 8057CFD0  38 00 00 15 */	li r0, 0x15
/* 8057CFD4  38 60 00 01 */	li r3, 1
/* 8057CFD8  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_8057CFDC:
/* 8057CFDC  39 61 00 30 */	addi r11, r1, 0x30
/* 8057CFE0  4B B1 DF 41 */	bl func_8009AF20
/* 8057CFE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057CFE8  7C 08 03 A6 */	mtlr r0
/* 8057CFEC  38 21 00 30 */	addi r1, r1, 0x30
/* 8057CFF0  4E 80 00 20 */	blr 
