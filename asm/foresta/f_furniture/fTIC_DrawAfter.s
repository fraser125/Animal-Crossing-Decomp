lbl_8063C5FC:
/* 8063C5FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063C600  7C 08 02 A6 */	mflr r0
/* 8063C604  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063C608  39 61 00 30 */	addi r11, r1, 0x30
/* 8063C60C  4B A5 E8 C1 */	bl func_8009AECC
/* 8063C610  7D 1B 43 78 */	mr r27, r8
/* 8063C614  7C 7D 1B 78 */	mr r29, r3
/* 8063C618  A8 08 00 02 */	lha r0, 2(r8)
/* 8063C61C  2C 00 00 01 */	cmpwi r0, 1
/* 8063C620  40 82 00 0C */	bne lbl_8063C62C
/* 8063C624  80 1D 20 90 */	lwz r0, 0x2090(r29)
/* 8063C628  48 00 00 08 */	b lbl_8063C630
lbl_8063C62C:
/* 8063C62C  80 1D 00 A0 */	lwz r0, 0xa0(r29)
lbl_8063C630:
/* 8063C630  2C 05 00 03 */	cmpwi r5, 3
/* 8063C634  40 82 00 50 */	bne lbl_8063C684
/* 8063C638  83 DD 00 00 */	lwz r30, 0(r29)
/* 8063C63C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063C640  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063C644  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8063C648  38 7C 00 08 */	addi r3, r28, 8
/* 8063C64C  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063C650  90 1C 00 00 */	stw r0, 0(r28)
/* 8063C654  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063C658  4B DD 0D 7D */	bl _Matrix_to_Mtx_new
/* 8063C65C  90 7C 00 04 */	stw r3, 4(r28)
/* 8063C660  3C 60 81 0E */	lis r3, int_tak_ice_block_model@ha /* 0x810E3A28@ha */
/* 8063C664  3C 80 DE 00 */	lis r4, 0xde00
/* 8063C668  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8063C66C  38 03 3A 28 */	addi r0, r3, int_tak_ice_block_model@l /* 0x810E3A28@l */
/* 8063C670  38 65 00 08 */	addi r3, r5, 8
/* 8063C674  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063C678  90 85 00 00 */	stw r4, 0(r5)
/* 8063C67C  90 05 00 04 */	stw r0, 4(r5)
/* 8063C680  48 00 00 E0 */	b lbl_8063C760
lbl_8063C684:
/* 8063C684  2C 05 00 04 */	cmpwi r5, 4
/* 8063C688  40 82 00 D8 */	bne lbl_8063C760
/* 8063C68C  7F A7 EB 78 */	mr r7, r29
/* 8063C690  54 04 18 38 */	slwi r4, r0, 3
/* 8063C694  38 60 00 00 */	li r3, 0
/* 8063C698  38 A0 00 00 */	li r5, 0
/* 8063C69C  38 C0 00 00 */	li r6, 0
/* 8063C6A0  4B FF FF 09 */	bl fTIC_GetTwoTileGfx
/* 8063C6A4  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063C6A8  3C A0 80 65 */	lis r5, lit_1028@ha /* 0x8064D2CC@ha */
/* 8063C6AC  C0 3B 01 40 */	lfs f1, 0x140(r27)
/* 8063C6B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063C6B4  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063C6B8  C0 45 D2 CC */	lfs f2, lit_1028@l(r5)  /* 0x8064D2CC@l */
/* 8063C6BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8063C6C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063C6C4  FC 00 00 1E */	fctiwz f0, f0
/* 8063C6C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8063C6CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8063C6D0  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 8063C6D4  41 82 00 8C */	beq lbl_8063C760
/* 8063C6D8  83 DD 00 00 */	lwz r30, 0(r29)
/* 8063C6DC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063C6E0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063C6E4  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8063C6E8  38 7C 00 08 */	addi r3, r28, 8
/* 8063C6EC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063C6F0  90 1C 00 00 */	stw r0, 0(r28)
/* 8063C6F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8063C6F8  4B DD 0C DD */	bl _Matrix_to_Mtx_new
/* 8063C6FC  90 7C 00 04 */	stw r3, 4(r28)
/* 8063C700  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 8063C704  67 66 FF FF */	oris r6, r27, 0xffff
/* 8063C708  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 8063C70C  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 8063C710  3C 60 81 0E */	lis r3, int_tak_ice_yuki_model@ha /* 0x810E3838@ha */
/* 8063C714  38 E5 00 FF */	addi r7, r5, 0x00FF /* 0xFA0000FF@l */
/* 8063C718  60 C6 FF 00 */	ori r6, r6, 0xff00
/* 8063C71C  38 08 00 08 */	addi r0, r8, 8
/* 8063C720  38 A4 00 24 */	addi r5, r4, 0x0024 /* 0xDB060024@l */
/* 8063C724  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 8063C728  3C 80 DE 00 */	lis r4, 0xde00
/* 8063C72C  38 03 38 38 */	addi r0, r3, int_tak_ice_yuki_model@l /* 0x810E3838@l */
/* 8063C730  90 E8 00 00 */	stw r7, 0(r8)
/* 8063C734  90 C8 00 04 */	stw r6, 4(r8)
/* 8063C738  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8063C73C  38 66 00 08 */	addi r3, r6, 8
/* 8063C740  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063C744  90 A6 00 00 */	stw r5, 0(r6)
/* 8063C748  93 E6 00 04 */	stw r31, 4(r6)
/* 8063C74C  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 8063C750  38 65 00 08 */	addi r3, r5, 8
/* 8063C754  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8063C758  90 85 00 00 */	stw r4, 0(r5)
/* 8063C75C  90 05 00 04 */	stw r0, 4(r5)
lbl_8063C760:
/* 8063C760  38 60 00 01 */	li r3, 1
/* 8063C764  39 61 00 30 */	addi r11, r1, 0x30
/* 8063C768  4B A5 E7 B1 */	bl func_8009AF18
/* 8063C76C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063C770  7C 08 03 A6 */	mtlr r0
/* 8063C774  38 21 00 30 */	addi r1, r1, 0x30
/* 8063C778  4E 80 00 20 */	blr 
