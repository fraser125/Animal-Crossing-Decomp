lbl_8051CC1C:
/* 8051CC1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051CC20  7C 08 02 A6 */	mflr r0
/* 8051CC24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051CC28  39 61 00 20 */	addi r11, r1, 0x20
/* 8051CC2C  4B B7 E2 A9 */	bl func_8009AED4
/* 8051CC30  7C 7D 1B 78 */	mr r29, r3
/* 8051CC34  7C 9E 23 78 */	mr r30, r4
/* 8051CC38  AB E3 09 94 */	lha r31, 0x994(r3)
/* 8051CC3C  38 7F 02 00 */	addi r3, r31, 0x200
/* 8051CC40  4B E9 DE B1 */	bl sin_s
/* 8051CC44  3C 80 80 65 */	lis r4, lit_495@ha /* 0x806490C8@ha */
/* 8051CC48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051CC4C  C0 84 90 C8 */	lfs f4, lit_495@l(r4)  /* 0x806490C8@l */
/* 8051CC50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051CC54  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 8051CC58  3C A3 00 02 */	addis r5, r3, 2
/* 8051CC5C  EC 64 00 72 */	fmuls f3, f4, f1
/* 8051CC60  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8051CC64  EC 24 10 2A */	fadds f1, f4, f2
/* 8051CC68  38 1F 02 00 */	addi r0, r31, 0x200
/* 8051CC6C  7F A3 EB 78 */	mr r3, r29
/* 8051CC70  7F C4 F3 78 */	mr r4, r30
/* 8051CC74  EC 21 18 2A */	fadds f1, f1, f3
/* 8051CC78  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051CC7C  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 8051CC80  B0 1D 09 94 */	sth r0, 0x994(r29)
/* 8051CC84  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051CC88  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8051CC8C  7D 89 03 A6 */	mtctr r12
/* 8051CC90  4E 80 04 21 */	bctrl 
/* 8051CC94  39 61 00 20 */	addi r11, r1, 0x20
/* 8051CC98  4B B7 E2 89 */	bl func_8009AF20
/* 8051CC9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051CCA0  7C 08 03 A6 */	mtlr r0
/* 8051CCA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8051CCA8  4E 80 00 20 */	blr 
