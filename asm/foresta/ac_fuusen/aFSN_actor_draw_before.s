lbl_8050ECC0:
/* 8050ECC0  2C 05 00 03 */	cmpwi r5, 3
/* 8050ECC4  80 63 00 00 */	lwz r3, 0(r3)
/* 8050ECC8  40 82 00 9C */	bne lbl_8050ED64
/* 8050ECCC  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 8050ECD0  80 83 02 D0 */	lwz r4, 0x2d0(r3)
/* 8050ECD4  38 06 00 FF */	addi r0, r6, 0x00FF /* 0xFA0000FF@l */
/* 8050ECD8  3C E0 80 6A */	lis r7, balloon_prim_data@ha /* 0x8069F1EC@ha */
/* 8050ECDC  90 04 00 00 */	stw r0, 0(r4)
/* 8050ECE0  3C C0 80 6A */	lis r6, balloon_env_data@ha /* 0x8069F200@ha */
/* 8050ECE4  38 E7 F1 EC */	addi r7, r7, balloon_prim_data@l /* 0x8069F1EC@l */
/* 8050ECE8  3C 00 FB 00 */	lis r0, 0xfb00
/* 8050ECEC  81 28 01 80 */	lwz r9, 0x180(r8)
/* 8050ECF0  38 C6 F2 00 */	addi r6, r6, balloon_env_data@l /* 0x8069F200@l */
/* 8050ECF4  55 29 10 3A */	slwi r9, r9, 2
/* 8050ECF8  7D 67 4A 14 */	add r11, r7, r9
/* 8050ECFC  7D 27 48 AE */	lbzx r9, r7, r9
/* 8050ED00  88 EB 00 01 */	lbz r7, 1(r11)
/* 8050ED04  89 4B 00 02 */	lbz r10, 2(r11)
/* 8050ED08  54 E7 82 1E */	rlwinm r7, r7, 0x10, 8, 0xf
/* 8050ED0C  89 6B 00 03 */	lbz r11, 3(r11)
/* 8050ED10  51 27 C0 0E */	rlwimi r7, r9, 0x18, 0, 7
/* 8050ED14  51 47 44 2E */	rlwimi r7, r10, 8, 0x10, 0x17
/* 8050ED18  51 67 06 3E */	rlwimi r7, r11, 0, 0x18, 0x1f
/* 8050ED1C  90 E4 00 04 */	stw r7, 4(r4)
/* 8050ED20  38 84 00 08 */	addi r4, r4, 8
/* 8050ED24  7C 89 23 78 */	mr r9, r4
/* 8050ED28  90 04 00 00 */	stw r0, 0(r4)
/* 8050ED2C  38 84 00 08 */	addi r4, r4, 8
/* 8050ED30  80 08 01 80 */	lwz r0, 0x180(r8)
/* 8050ED34  54 00 10 3A */	slwi r0, r0, 2
/* 8050ED38  7D 06 02 14 */	add r8, r6, r0
/* 8050ED3C  7C C6 00 AE */	lbzx r6, r6, r0
/* 8050ED40  88 08 00 01 */	lbz r0, 1(r8)
/* 8050ED44  88 E8 00 02 */	lbz r7, 2(r8)
/* 8050ED48  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 8050ED4C  89 08 00 03 */	lbz r8, 3(r8)
/* 8050ED50  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 8050ED54  50 E0 44 2E */	rlwimi r0, r7, 8, 0x10, 0x17
/* 8050ED58  51 00 06 3E */	rlwimi r0, r8, 0, 0x18, 0x1f
/* 8050ED5C  90 09 00 04 */	stw r0, 4(r9)
/* 8050ED60  90 83 02 D0 */	stw r4, 0x2d0(r3)
lbl_8050ED64:
/* 8050ED64  2C 05 00 03 */	cmpwi r5, 3
/* 8050ED68  80 A3 02 D0 */	lwz r5, 0x2d0(r3)
/* 8050ED6C  41 82 00 1C */	beq lbl_8050ED88
/* 8050ED70  3C 80 CE 00 */	lis r4, 0xce00
/* 8050ED74  38 00 00 50 */	li r0, 0x50
/* 8050ED78  90 85 00 00 */	stw r4, 0(r5)
/* 8050ED7C  90 05 00 04 */	stw r0, 4(r5)
/* 8050ED80  38 A5 00 08 */	addi r5, r5, 8
/* 8050ED84  48 00 00 18 */	b lbl_8050ED9C
lbl_8050ED88:
/* 8050ED88  3C 80 CE 00 */	lis r4, 0xce00
/* 8050ED8C  38 00 00 90 */	li r0, 0x90
/* 8050ED90  90 85 00 00 */	stw r4, 0(r5)
/* 8050ED94  90 05 00 04 */	stw r0, 4(r5)
/* 8050ED98  38 A5 00 08 */	addi r5, r5, 8
lbl_8050ED9C:
/* 8050ED9C  90 A3 02 D0 */	stw r5, 0x2d0(r3)
/* 8050EDA0  38 60 00 01 */	li r3, 1
/* 8050EDA4  4E 80 00 20 */	blr 
