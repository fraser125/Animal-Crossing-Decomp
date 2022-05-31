lbl_8063DE28:
/* 8063DE28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063DE2C  7C 08 02 A6 */	mflr r0
/* 8063DE30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063DE34  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DE38  4B A5 D0 9D */	bl func_8009AED4
/* 8063DE3C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063DE40  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8063DE44  A0 63 00 00 */	lhz r3, 0(r3)
/* 8063DE48  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 8063DE4C  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063DE50  38 83 FB AD */	addi r4, r3, -1107
/* 8063DE54  38 7E 00 08 */	addi r3, r30, 8
/* 8063DE58  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DE5C  54 9D 07 7E */	clrlwi r29, r4, 0x1d
/* 8063DE60  90 1E 00 00 */	stw r0, 0(r30)
/* 8063DE64  80 65 00 00 */	lwz r3, 0(r5)
/* 8063DE68  4B DC F5 6D */	bl _Matrix_to_Mtx_new
/* 8063DE6C  90 7E 00 04 */	stw r3, 4(r30)
/* 8063DE70  3C 80 80 6E */	lis r4, fUW_mat_table@ha /* 0x806DE5D0@ha */
/* 8063DE74  3C 60 80 6E */	lis r3, fUW_gfx_table@ha /* 0x806DE5F0@ha */
/* 8063DE78  3C A0 DE 00 */	lis r5, 0xde00
/* 8063DE7C  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063DE80  57 A7 10 3A */	slwi r7, r29, 2
/* 8063DE84  38 84 E5 D0 */	addi r4, r4, fUW_mat_table@l /* 0x806DE5D0@l */
/* 8063DE88  38 63 E5 F0 */	addi r3, r3, fUW_gfx_table@l /* 0x806DE5F0@l */
/* 8063DE8C  38 06 00 08 */	addi r0, r6, 8
/* 8063DE90  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DE94  90 A6 00 00 */	stw r5, 0(r6)
/* 8063DE98  7C 04 38 2E */	lwzx r0, r4, r7
/* 8063DE9C  90 06 00 04 */	stw r0, 4(r6)
/* 8063DEA0  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063DEA4  38 04 00 08 */	addi r0, r4, 8
/* 8063DEA8  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DEAC  90 A4 00 00 */	stw r5, 0(r4)
/* 8063DEB0  7C 03 38 2E */	lwzx r0, r3, r7
/* 8063DEB4  90 04 00 04 */	stw r0, 4(r4)
/* 8063DEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DEBC  4B A5 D0 65 */	bl func_8009AF20
/* 8063DEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063DEC4  7C 08 03 A6 */	mtlr r0
/* 8063DEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8063DECC  4E 80 00 20 */	blr 
