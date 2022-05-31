lbl_80488DC0:
/* 80488DC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488DC4  7C 08 02 A6 */	mflr r0
/* 80488DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488DCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80488DD0  4B C1 20 FD */	bl func_8009AECC
/* 80488DD4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80488DD8  7C 7B 1B 78 */	mr r27, r3
/* 80488DDC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80488DE0  3B C0 00 00 */	li r30, 0
/* 80488DE4  3C 63 00 02 */	addis r3, r3, 2
/* 80488DE8  7F 66 DB 78 */	mr r6, r27
/* 80488DEC  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 80488DF0  38 80 00 01 */	li r4, 1
/* 80488DF4  38 A0 00 00 */	li r5, 0
/* 80488DF8  7F E3 FB 78 */	mr r3, r31
/* 80488DFC  4B F5 79 D9 */	bl mPr_GetPossessionItemIdxFGTypeWithCond_cancel
/* 80488E00  2C 03 FF FF */	cmpwi r3, -1
/* 80488E04  40 82 00 20 */	bne lbl_80488E24
/* 80488E08  7F E3 FB 78 */	mr r3, r31
/* 80488E0C  7F 66 DB 78 */	mr r6, r27
/* 80488E10  38 80 00 03 */	li r4, 3
/* 80488E14  38 A0 00 00 */	li r5, 0
/* 80488E18  4B F5 79 BD */	bl mPr_GetPossessionItemIdxFGTypeWithCond_cancel
/* 80488E1C  2C 03 FF FF */	cmpwi r3, -1
/* 80488E20  41 82 00 0C */	beq lbl_80488E2C
lbl_80488E24:
/* 80488E24  3B C0 00 01 */	li r30, 1
/* 80488E28  48 00 00 48 */	b lbl_80488E70
lbl_80488E2C:
/* 80488E2C  3C 60 80 69 */	lis r3, category@ha /* 0x8068AF10@ha */
/* 80488E30  3B 80 00 00 */	li r28, 0
/* 80488E34  38 03 AF 10 */	addi r0, r3, category@l /* 0x8068AF10@l */
/* 80488E38  7C 1D 03 78 */	mr r29, r0
lbl_80488E3C:
/* 80488E3C  88 9D 00 00 */	lbz r4, 0(r29)
/* 80488E40  7F E3 FB 78 */	mr r3, r31
/* 80488E44  7F 66 DB 78 */	mr r6, r27
/* 80488E48  38 A0 00 00 */	li r5, 0
/* 80488E4C  4B F5 7A 55 */	bl mPr_GetPossessionItemIdxItem1CategoryWithCond_cancel
/* 80488E50  2C 03 FF FF */	cmpwi r3, -1
/* 80488E54  41 82 00 0C */	beq lbl_80488E60
/* 80488E58  3B C0 00 01 */	li r30, 1
/* 80488E5C  48 00 00 14 */	b lbl_80488E70
lbl_80488E60:
/* 80488E60  3B 9C 00 01 */	addi r28, r28, 1
/* 80488E64  3B BD 00 01 */	addi r29, r29, 1
/* 80488E68  2C 1C 00 02 */	cmpwi r28, 2
/* 80488E6C  41 80 FF D0 */	blt lbl_80488E3C
lbl_80488E70:
/* 80488E70  7F C3 F3 78 */	mr r3, r30
/* 80488E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80488E78  4B C1 20 A1 */	bl func_8009AF18
/* 80488E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488E80  7C 08 03 A6 */	mtlr r0
/* 80488E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80488E88  4E 80 00 20 */	blr 
