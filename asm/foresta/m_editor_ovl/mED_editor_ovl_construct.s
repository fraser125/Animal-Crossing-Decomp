lbl_805DC22C:
/* 805DC22C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DC230  7C 08 02 A6 */	mflr r0
/* 805DC234  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DC238  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC23C  4B AB EC 99 */	bl func_8009AED4
/* 805DC240  7C 7D 1B 78 */	mr r29, r3
/* 805DC244  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805DC248  80 1F 09 8C */	lwz r0, 0x98c(r31)
/* 805DC24C  3B DF 03 24 */	addi r30, r31, 0x324
/* 805DC250  28 00 00 00 */	cmplwi r0, 0
/* 805DC254  40 82 00 24 */	bne lbl_805DC278
/* 805DC258  3C 60 81 21 */	lis r3, edit_ovl_data@ha /* 0x81211700@ha */
/* 805DC25C  38 80 00 38 */	li r4, 0x38
/* 805DC260  38 63 17 00 */	addi r3, r3, edit_ovl_data@l /* 0x81211700@l */
/* 805DC264  38 A0 00 00 */	li r5, 0
/* 805DC268  4B DD E7 E1 */	bl mem_clear
/* 805DC26C  3C 60 81 21 */	lis r3, edit_ovl_data@ha /* 0x81211700@ha */
/* 805DC270  38 03 17 00 */	addi r0, r3, edit_ovl_data@l /* 0x81211700@l */
/* 805DC274  90 1F 09 8C */	stw r0, 0x98c(r31)
lbl_805DC278:
/* 805DC278  7F A3 EB 78 */	mr r3, r29
/* 805DC27C  7F C4 F3 78 */	mr r4, r30
/* 805DC280  4B FF CC 31 */	bl mED_init
/* 805DC284  7F A3 EB 78 */	mr r3, r29
/* 805DC288  4B FF FF 41 */	bl mED_editor_ovl_init
/* 805DC28C  7F A3 EB 78 */	mr r3, r29
/* 805DC290  4B FF FF 19 */	bl mED_editor_ovl_set_proc
/* 805DC294  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805DC298  3C A0 80 5E */	lis r5, mED_endCode_draw@ha /* 0x805DBFC8@ha */
/* 805DC29C  3C 60 80 5E */	lis r3, mED_cursol_draw@ha /* 0x805DC098@ha */
/* 805DC2A0  80 84 09 8C */	lwz r4, 0x98c(r4)
/* 805DC2A4  38 A5 BF C8 */	addi r5, r5, mED_endCode_draw@l /* 0x805DBFC8@l */
/* 805DC2A8  38 03 C0 98 */	addi r0, r3, mED_cursol_draw@l /* 0x805DC098@l */
/* 805DC2AC  90 A4 00 2C */	stw r5, 0x2c(r4)
/* 805DC2B0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805DC2B4  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 805DC2B8  90 03 00 30 */	stw r0, 0x30(r3)
/* 805DC2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC2C0  4B AB EC 61 */	bl func_8009AF20
/* 805DC2C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DC2C8  7C 08 03 A6 */	mtlr r0
/* 805DC2CC  38 21 00 20 */	addi r1, r1, 0x20
/* 805DC2D0  4E 80 00 20 */	blr 
