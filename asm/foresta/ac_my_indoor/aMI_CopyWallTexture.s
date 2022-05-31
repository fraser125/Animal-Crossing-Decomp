lbl_8046EF44:
/* 8046EF44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046EF48  7C 08 02 A6 */	mflr r0
/* 8046EF4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046EF50  39 61 00 30 */	addi r11, r1, 0x30
/* 8046EF54  4B C2 BF 71 */	bl func_8009AEC4
/* 8046EF58  7C A0 07 34 */	extsh r0, r5
/* 8046EF5C  7C 7F 1B 78 */	mr r31, r3
/* 8046EF60  2C 00 00 02 */	cmpwi r0, 2
/* 8046EF64  7C 99 23 78 */	mr r25, r4
/* 8046EF68  40 82 00 70 */	bne lbl_8046EFD8
/* 8046EF6C  3C 80 80 47 */	lis r4, aMI_DrawMyWall@ha /* 0x8046F900@ha */
/* 8046EF70  3C 60 80 47 */	lis r3, aMI_DrawMyOriginalWall@ha /* 0x8046FA38@ha */
/* 8046EF74  7F 3B 07 34 */	extsh r27, r25
/* 8046EF78  3B 20 00 00 */	li r25, 0
/* 8046EF7C  3B 84 F9 00 */	addi r28, r4, aMI_DrawMyWall@l /* 0x8046F900@l */
/* 8046EF80  3B A3 FA 38 */	addi r29, r3, aMI_DrawMyOriginalWall@l /* 0x8046FA38@l */
/* 8046EF84  3B C0 00 00 */	li r30, 0
lbl_8046EF88:
/* 8046EF88  7F 5F F2 14 */	add r26, r31, r30
/* 8046EF8C  7F 64 DB 78 */	mr r4, r27
/* 8046EF90  80 7A 01 94 */	lwz r3, 0x194(r26)
/* 8046EF94  4B F7 7B 5D */	bl mRmTp_CopyWallData
/* 8046EF98  2C 1B 00 48 */	cmpwi r27, 0x48
/* 8046EF9C  38 00 00 00 */	li r0, 0
/* 8046EFA0  41 80 00 10 */	blt lbl_8046EFB0
/* 8046EFA4  2C 1B 00 4F */	cmpwi r27, 0x4f
/* 8046EFA8  41 81 00 08 */	bgt lbl_8046EFB0
/* 8046EFAC  38 00 00 01 */	li r0, 1
lbl_8046EFB0:
/* 8046EFB0  2C 00 00 00 */	cmpwi r0, 0
/* 8046EFB4  7F 80 E3 78 */	mr r0, r28
/* 8046EFB8  41 82 00 08 */	beq lbl_8046EFC0
/* 8046EFBC  7F A0 EB 78 */	mr r0, r29
lbl_8046EFC0:
/* 8046EFC0  3B 39 00 01 */	addi r25, r25, 1
/* 8046EFC4  90 1A 01 8C */	stw r0, 0x18c(r26)
/* 8046EFC8  2C 19 00 02 */	cmpwi r25, 2
/* 8046EFCC  3B DE 00 18 */	addi r30, r30, 0x18
/* 8046EFD0  41 80 FF B8 */	blt lbl_8046EF88
/* 8046EFD4  48 00 00 58 */	b lbl_8046F02C
lbl_8046EFD8:
/* 8046EFD8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8046EFDC  7F 24 07 34 */	extsh r4, r25
/* 8046EFE0  1F 40 00 18 */	mulli r26, r0, 0x18
/* 8046EFE4  7C 7F D2 14 */	add r3, r31, r26
/* 8046EFE8  80 63 01 94 */	lwz r3, 0x194(r3)
/* 8046EFEC  4B F7 7B 05 */	bl mRmTp_CopyWallData
/* 8046EFF0  7F 20 07 34 */	extsh r0, r25
/* 8046EFF4  38 80 00 00 */	li r4, 0
/* 8046EFF8  2C 00 00 48 */	cmpwi r0, 0x48
/* 8046EFFC  41 80 00 10 */	blt lbl_8046F00C
/* 8046F000  2C 00 00 4F */	cmpwi r0, 0x4f
/* 8046F004  41 81 00 08 */	bgt lbl_8046F00C
/* 8046F008  38 80 00 01 */	li r4, 1
lbl_8046F00C:
/* 8046F00C  2C 04 00 00 */	cmpwi r4, 0
/* 8046F010  3C 60 80 47 */	lis r3, aMI_DrawMyWall@ha /* 0x8046F900@ha */
/* 8046F014  38 03 F9 00 */	addi r0, r3, aMI_DrawMyWall@l /* 0x8046F900@l */
/* 8046F018  41 82 00 0C */	beq lbl_8046F024
/* 8046F01C  3C 60 80 47 */	lis r3, aMI_DrawMyOriginalWall@ha /* 0x8046FA38@ha */
/* 8046F020  38 03 FA 38 */	addi r0, r3, aMI_DrawMyOriginalWall@l /* 0x8046FA38@l */
lbl_8046F024:
/* 8046F024  7C 7F D2 14 */	add r3, r31, r26
/* 8046F028  90 03 01 8C */	stw r0, 0x18c(r3)
lbl_8046F02C:
/* 8046F02C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046F030  4B C2 BE E1 */	bl func_8009AF10
/* 8046F034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046F038  7C 08 03 A6 */	mtlr r0
/* 8046F03C  38 21 00 30 */	addi r1, r1, 0x30
/* 8046F040  4E 80 00 20 */	blr 
