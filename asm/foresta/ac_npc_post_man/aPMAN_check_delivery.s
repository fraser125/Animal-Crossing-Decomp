lbl_8056DFF4:
/* 8056DFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056DFF8  7C 08 02 A6 */	mflr r0
/* 8056DFFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056E000  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E004  4B B2 CE C9 */	bl func_8009AECC
/* 8056E008  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056E00C  7C 7B 1B 78 */	mr r27, r3
/* 8056E010  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056E014  3C 84 00 02 */	addis r4, r4, 2
/* 8056E018  AB E4 06 98 */	lha r31, 0x698(r4)
/* 8056E01C  AB C4 0E C4 */	lha r30, 0xec4(r4)
/* 8056E020  AB A4 0E C6 */	lha r29, 0xec6(r4)
/* 8056E024  4B E4 55 B5 */	bl mHS_get_pl_no
/* 8056E028  2C 03 00 04 */	cmpwi r3, 4
/* 8056E02C  3B 80 00 00 */	li r28, 0
/* 8056E030  40 80 00 4C */	bge lbl_8056E07C
/* 8056E034  4B E3 07 85 */	bl mEv_ArbeitPlayer
/* 8056E038  2C 03 00 00 */	cmpwi r3, 0
/* 8056E03C  40 82 00 30 */	bne lbl_8056E06C
/* 8056E040  7F E0 DE 30 */	sraw r0, r31, r27
/* 8056E044  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056E048  40 82 00 1C */	bne lbl_8056E064
/* 8056E04C  7F C0 DE 30 */	sraw r0, r30, r27
/* 8056E050  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056E054  41 82 00 10 */	beq lbl_8056E064
/* 8056E058  7F A0 DE 30 */	sraw r0, r29, r27
/* 8056E05C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056E060  40 82 00 1C */	bne lbl_8056E07C
lbl_8056E064:
/* 8056E064  3B 80 00 01 */	li r28, 1
/* 8056E068  48 00 00 14 */	b lbl_8056E07C
lbl_8056E06C:
/* 8056E06C  7F E0 DE 30 */	sraw r0, r31, r27
/* 8056E070  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056E074  41 82 00 08 */	beq lbl_8056E07C
/* 8056E078  3B 80 00 01 */	li r28, 1
lbl_8056E07C:
/* 8056E07C  7F 83 E3 78 */	mr r3, r28
/* 8056E080  39 61 00 20 */	addi r11, r1, 0x20
/* 8056E084  4B B2 CE 95 */	bl func_8009AF18
/* 8056E088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056E08C  7C 08 03 A6 */	mtlr r0
/* 8056E090  38 21 00 20 */	addi r1, r1, 0x20
/* 8056E094  4E 80 00 20 */	blr 
